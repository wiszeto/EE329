#include "main.h"
#include "delay.h"
#include "lcd.h"
#include "keypad.h"
#include <stdint.h>
void SystemClock_Config(void);

//flags for button press, reset, and countdown
uint8_t four_push = 0; 			//counts how key presses there are
uint8_t reset = 0;				// 0 = no reset pushed | 1 = reset pushed
uint8_t go = 0;				    // 0 = Don't start countdown | 1 = start countdown
uint8_t reset_state = 0;        // 0 = not in reset state (countdown and accept button) // 1 = In reset state (only accept * input)
int hmin = 0;
int lmin = 0;
int hsec = 0;
int lsec = 0;

//Stuff to output to LCD
char output_LCD[4];

int main(void) {

	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIODEN);
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOCEN);
	keypad_init();

	//Output LED Config
	// Make pin0 output mode
	GPIOC->MODER &= ~(GPIO_MODER_MODE0);
	GPIOC->MODER |= (GPIO_MODER_MODE0_0);
	GPIOC->MODER &= ~(GPIO_MODER_MODE1);
	GPIOC->MODER |= (GPIO_MODER_MODE1_0);
	GPIOC->MODER &= ~(GPIO_MODER_MODE2);
	GPIOC->MODER |= (GPIO_MODER_MODE2_0);
	GPIOC->MODER &= ~(GPIO_MODER_MODE3);
	GPIOC->MODER |= (GPIO_MODER_MODE3_0);

	HAL_Init();
	SystemClock_Config();
	SysTick_Init();
	LCD_init();

	delay_us(100);
	//const char str[] = "EE 329 A3 TIMER ";
	str_write("EE 329 A3 TIMER");
	delay_us(100);
	lcd_set_cursor_position(1, 0);
	delay_us(100);
	str_write("*=SET #=GO --:--");
	lcd_set_cursor_position(1, 10);
	command(0x0D);		//turns blinking cursor on to indicate ready for input


	int total_time_sec = time_in_sec(0, 0, 0, 0);
	reset_state = 1; //starts off at reset state waiting for asterik key to be pushed

	while (1) {

		//-----------------START OF SEQUENCE----------------------------------
		//Keeps you in reset state after reset push button
		while (reset_state) {
			char star_check = keypad_read(4, 3); //checks if asterisk is pushed to get out of reset state
			if (star_check == '*') { 				//Checks if button is pushed
					reset = 0;	//ensures reset is 0 so doesn't reset display
					reset_state = 0;//takes me out of reset state allows me to take inputs
					lcd_set_cursor_position(1, 11);
					delay_us(1000000); //important
			}

		}

		//-------------------START REGISTERING KEYAPD INPUTS
		//Starts registering keypad inputs
		while ((four_push < 5) & (reset == 0)) { //This might not update screen when pushing

			char output = keypad_read(4, 3); //get key value
			if (output != '-') { //if button is pushed sets value to dispaly to LED

				if (four_push == 0) {
					lcd_set_cursor_position(1, 11);
					hmin = output - '0';
					if (hmin > 5) hmin = 5;
					output = hmin + '0';
					write(output);
					delay_us(1000000);
					++four_push;
				}
				else if (four_push == 1) {
									lcd_set_cursor_position(1, 12);
									lmin = output - '0';
									write(output);
									delay_us(1000000);
									++four_push;
								}
				else if (four_push == 2) {
									lcd_set_cursor_position(1, 14);
									hsec = output - '0';
									if (hsec > 5) hsec = 5;
									output = hsec + '0';
									write(output);
									delay_us(1000000);
									++four_push;
								}
				else if (four_push == 3) {
									lcd_set_cursor_position(1, 15);
									lsec = output - '0';
									write(output);
									delay_us(1000000);
									++four_push;
								}
				if ((four_push == 4) & (output == '#'))  {
					total_time_sec = time_in_sec(hmin, lmin, hsec, lsec);
					GPIOC->BSRR = GPIO_PIN_0;
					go = 1;
					++four_push;
					}	//Takes last keypad input and enables go to start countdown
			}
		}

		//--------------------WAITING FOR GO KEYPRESS TO START COUNTDOWN
		if (go) {
			GPIOC->BRR = (GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3); 	// turns off LED after
			go = 0;			//no longer takes go input to start countdown (this could potentially break sequencing might have to put it in the while start countdown at the very end)
			//-----------------START TO COUNTDOWN
			while ((total_time_sec != 0) & (reset == 0)) {
				char output = keypad_read(4, 3); // get key value
				if (output == '*')				//if reset is pushed
					LCD_reset_count_display();
				else {
					total_time_sec = decrement_time(total_time_sec);
					load_time(total_time_sec);
					LCD_update_count_display(); //displays it to the LCD

					if (total_time_sec == 0)
						while (1) {
						GPIOC->BSRR = GPIO_PIN_0; //turns LED on only when countdown is complete
						}
				}
			}
		}

	}
}

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

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK) {
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
