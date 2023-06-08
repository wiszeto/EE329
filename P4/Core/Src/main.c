#include "main.h"
#include "uart.h"
#include "lcd.h"
#include "delay.h"
#include "fingerprint.h"
#include "FP_process.h"

void SystemClock_Config(void);
void FingerprintErrorHandler(void);
void LPUART_FPID();

#define BUFFER_SIZE 256
//static char buffer[BUFFER_SIZE];
//static int index = 0;
//int flag = 0;
//int FPIDrdy = 0;

//For USART2 Acknowledge package
uint8_t errorbuffer[ERROR_BUFFER_SIZE];
static int index0 = 0;
//static int bufferLength = 0;
uint8_t ConfirmationCode = 0;
uint32_t currentPacketSize = 0;

//for LPUART Functionality
int index = 0;
uint8_t discordbuffer[BUFFER_SIZE];

int flag = 0;
int EN_Flag = 0;
int FPIDrdy = 0;	//
int AT_Flag = 0;	//flag for attendance
int EX_Flag = 0;	//flag for exporting data

int main(void) {

	HAL_Init();
	SystemClock_Config();
	LPUART_init();
	LCD_init();
	command(0x0C);

	RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;  // GPIOC clock init
	GPIOC->MODER &= ~(GPIO_MODER_MODE13); // button init
	GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPD13_1);
	GPIOC->PUPDR |= (GPIO_PUPDR_PUPD13_1);
	RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;  // GPIOB clock init
	GPIOB->MODER &= ~(GPIO_MODER_MODE7);  // LD2 clear
	GPIOB->MODER |= (GPIO_MODER_MODE7_0); // LD2 output mode

	delay_us(100);
	USART_init();
	delay_us(10000);

	//Fingerprint initialization
	FP_check();

	//FOR DEBUGGING
	empty(); //empties entire database of FP
	MEM_GLOBAL = 0; //resets pointer

	while (1) {
		if (EN_Flag) {
//			GPIOB->BSRR = GPIO_PIN_7;
			FP_enroll();	//section 0: only have 10 fingerprints
			EN_Flag = 0;
		}

		//need to make 2 other parameters; start and tardy time
		while (AT_Flag) { //keep asking for user inputs until time is reached change to while so i can debug
			FP_search();
			delay_us(10000000);	//Delay to see success message on screen
			LPUART_FPID();		//
		}

		if (EX_Flag) {
			GPIOB->BSRR = GPIO_PIN_7;
			uint32_t exportIndex = 0;
			while (exportIndex < MEM_GLOBAL) { //sends data from lowest byte to highest byte
				LPUART_FPID(); //transmits ID to LPUART
				for (int z = 0; z < 16; z ++){
					while (!(LPUART1->ISR & USART_ISR_TXE))
															;
					LPUART1->TDR = USER_INPUT_NAME[exportIndex][z];
				}
				exportIndex++;	//increments array
			}
			EX_Flag = 0;
		}

//		delay_us(100000);
//		GPIOB->BRR = GPIO_PIN_7;

			//-----------------DEBUGGING CODE
//		lcd_set_cursor_position(0, 0); // set cursor to second row, first column
//		write(index0 + '0');

//		//for debugging wiring
//		//-----------------DEBUGGING LPUART
//		empty();
//		for (int i = 0; i < BUFFER_SIZE; i++) {
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;
//			LPUART1->TDR = errorbuffer[i];
//			delay_us(1000);
//		}
//		while (!(LPUART1->ISR & USART_ISR_TXE))
//						;
//					LPUART1->TDR = ConfirmationCode;
//		delay_us(1000);

//		//=--------------WILLIE POGGIE ATTRIBUTION
////		USART_print("Hello");
//		if (flag) {
//			delay_us(10000);
//			flag = 0;
//			str_write("Welcome ");
//			str_write(discordbuffer);  // process the string
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;
//			LPUART_Print(discordbuffer);
//
//			lcd_set_cursor_position(1, 0); // set cursor to second row, first column
//			str_write("Put fngr on sens");
//			lcd_set_cursor_position(0, 0); // set cursor to second row, first column
//			flag = 0;
//		}
//		if (GPIOC->IDR & GPIO_IDR_ID13) { // Check if the button is pressed
//			GPIOB->BSRR = GPIO_PIN_7;
//			delay_us(10000);
//			while (!(LPUART1->ISR & USART_ISR_TXE))
//				;
//			LPUART_Print("WILSON\n");
//			delay_us(1000000);
//		}
//		GPIOB->BRR = GPIO_PIN_7;

		}
	}

//Donna Updated need to test
	void LPUART1_IRQHandler(void) {
		if (LPUART1->ISR & USART_ISR_RXNE) { // check if there is new data in the UART receiver
			uint8_t charRecv = LPUART1->RDR;      // read the received character
			discordbuffer[index] = charRecv;    //buffer must be global variable
//		USER_INPUT_NAME[MAX_FP][index] = charRecv;
			index++;                             //index must be global variable

			if (index == 2) {
				if (discordbuffer[0] == 0xEF && discordbuffer[1] == 0x02) { //wilson send 0xEF02 to indicate beginning of enrollment
				//for each username (16 characters long max for LCD) load it into this variable -> USER_INPUT_NAME[MAX_FP][16];
					EN_Flag = 1;
					AT_Flag = 0;
					index = 0;

				}
				if (discordbuffer[0] == 0xEF && discordbuffer[1] == 0x03) { //wilson send 0xEF03 to indicate beginning of attendance?
					EN_Flag = 0;
					AT_Flag = 1;
					index = 0;
				}
				if (discordbuffer[0] == 0xEF && discordbuffer[1] == 0x04) { //wilson send 0xEF04 to indicate beginning of attendance?
					EN_Flag = 0;
					AT_Flag = 0;
					EX_Flag = 1;
					index = 0;
				}

			}
			if (charRecv == '\n') { //replace python null terminator with C null terminator
//				GPIOB->BSRR = GPIO_PIN_7;
				flag = 1;
				index--;
				discordbuffer[index] = '\0'; //place user name string into buffer to be written to LCD
//			USER_INPUT_NAME[MAX_FP][index] = '\0';
				for (int i = 0; i < 16; i++) {
					USER_INPUT_NAME[MEM_GLOBAL][i] = discordbuffer[i];
				}
				index = 0;
			}
//		while (!(LPUART1->ISR & USART_ISR_TXE))
//			;  // wait for empty TX buffer
//		LPUART1->TDR = charRecv; // send received character
//		while (!(LPUART1->ISR & USART_ISR_TXE))
//			;  // wait for empty TX buffer
//		LPUART1->TDR = index; // send received character
		}
	}

//file IO shit to export data
	void LPUART_FPID() {		//send fingerprint ID to discord for processing
		while (!(LPUART1->ISR & USART_ISR_TXE))
			;
		if (FPIDrdy == 1) {
			LPUART_Print("SendID");	  //header instruction
			LPUART_Print(FP_ID);
			LPUART_Print("\n");
			FPIDrdy = 0;	//resets flag
		}
	}

//OG LPUART WORKING
//void LPUART1_IRQHandler(void) {
//	if (LPUART1->ISR & USART_ISR_RXNE) { // check if there is new data in the UART receiver
//		GPIOB->BSRR = GPIO_PIN_7;
//
//		char charRecv = LPUART1->RDR;  // read the received character
//		buffer[index] = charRecv;
//		index++;
//
//		if (charRecv == '\n') {
//			flag = 1;
//			index--;
//			buffer[index] = '\0';
//			index = 0;
//		}
//		while (!(LPUART1->ISR & USART_ISR_TXE))
//			;  // wait for empty TX buffer
//		LPUART1->TDR = charRecv; // send received character
//
//		GPIOB->BRR = GPIO_PIN_7;
//	}
//}

	void USART2_IRQHandler(void) { //[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27]
//	GPIOB->BSRR = GPIO_PIN_7;
		if (USART2->ISR & USART_ISR_RXNE) { // check if there is new data in the UART receiver
			uint8_t charRecv = USART2->RDR;    // read the received character
			errorbuffer[index0] = charRecv; //buffer must be global variable
			index0++;                  //index must be global variable
			if (index0 >= ACK_LENGTH) {
				ConfirmationCode = errorbuffer[9];    //must be global variable
//			FingerprintErrorHandler();
//			errorbuffer[1+index0] = '\n';
				index0 = 0;
			}
		}
	}

//FOR DEBUGGING
//void FingerprintErrorHandler(void) {
//	//clear_LCD();
//	lcd_set_cursor_position(0, 0);
////16 characters per line
//	if (ConfirmationCode == 0x00) {
//		str_write("cmd success     ");
//		lcd_set_cursor_position(1, 0);
//		str_write("                ");
//	} else if (ConfirmationCode == 0x02) {
//		str_write("fngr not found  ");
//		lcd_set_cursor_position(1, 0);
//		str_write("put fngr on sens");
//	} else if (ConfirmationCode == 0x01) {
//		str_write("error receiving ");
//		lcd_set_cursor_position(1, 0);
//		str_write("or storing data ");
//	} else if (ConfirmationCode == 0x0A) {
//		str_write("failure to      ");
//		lcd_set_cursor_position(1, 0);
//		str_write("combine data    ");
//	} else if (ConfirmationCode == 0x1A) {
//		str_write("invalid register");
//		lcd_set_cursor_position(1, 0);
//		str_write("number          ");
//	} else if (ConfirmationCode == 0x0D) {
//		str_write("error uploading ");
//		lcd_set_cursor_position(1, 0);
//		str_write("fingerprint     ");
//	} else if (ConfirmationCode == 0x1D) {
//		str_write("fail to operate ");
//		lcd_set_cursor_position(1, 0);
//		str_write("comms port      ");
//	} else if (ConfirmationCode == 0x0B) {
//		str_write("addressing PgeID");
//		lcd_set_cursor_position(1, 0);
//		str_write("beyond fngr lib ");
//	} else if (ConfirmationCode == 0x18) {
//		str_write("err when writing");
//		lcd_set_cursor_position(1, 0);
//		str_write("flash           ");
//	} else if (ConfirmationCode == 0x0C) {
//		str_write("err reading temp");
//		lcd_set_cursor_position(1, 0);
//		str_write("from lib or template invalid");
//	} else if (ConfirmationCode == 0x11) {
//		str_write("failure to clear");
//		lcd_set_cursor_position(1, 0);
//		str_write("library");
//	} else if (ConfirmationCode == 0x08) {
//		str_write("buffer templates");
//		lcd_set_cursor_position(1, 0);
//		str_write("dont match");
//	} else if (ConfirmationCode == 0x09) {
//		str_write("no match in");
//		lcd_set_cursor_position(1, 0);
//		str_write("library");
//	}
//}

	void SystemClock_Config(void) {
		RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
		RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };

		if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1)
				!= HAL_OK) {
			Error_Handler();
		}

		RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
		RCC_OscInitStruct.MSIState = RCC_MSI_ON;
		RCC_OscInitStruct.MSICalibrationValue = 0;
		RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
		RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
		if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
			Error_Handler();
		}

		RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
				| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
		RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
		RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
		RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
		RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

		if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0)
				!= HAL_OK) {
			Error_Handler();
		}
	}

	void Error_Handler(void) {

		__disable_irq();
		while (1) {
		}

	}

#ifdef  USE_FULL_ASSERT

void assert_failed(uint8_t *file, uint32_t line)
{

}
#endif
