#include "main.h"
#include "delay.h"
#include "lcd.h"
#include "keypad.h"
#include <stdint.h>
void SystemClock_Config(void);

//flags for button press, reset, and countdown
uint8_t four_push = 0; 			//counts how key presses there are
uint8_t reset = 0;				// 0 = no reset pushed | 1 = reset pushed
uint8_t go = 0;				// 0 = Don't start countdown | 1 = start countdown
uint8_t reset_state = 0;// 0 = not in reset state (countdown and accept button)
// 1 = In reset state (only accept * input)

//Stuff to output to LCD
char output_LCD[4];

int main(void) {

	/* Keypad input not working because not initialized
	 * Wilson fix
	 */

	//Output LED Config
	// Make pin0 output mode
	GPIOC->MODER &= ~(GPIO_MODER_MODE0);
	GPIOC->MODER |= (GPIO_MODER_MODE0_0);

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
	str_write("*=SET #=GO FF:FF");
	lcd_set_cursor_position(1, 11);
	command(0x0D);		//turns blinking cursor on to indicate ready for input

	//THIS IS FOR TESTING DELETE
	int total_time_sec = time_in_sec(1, 2, 3, 4);
	load_time(total_time_sec);
	LCD_update_count_display(); //displays it to the LCD
	//END OF TESTING

	reset_state = 1; //starts off at reset state waiting for asterik key to be pushed

	while (1) {

		//-----------------START OF SEQUENCE----------------------------------
		//Keeps you in reset state after reset push button
		while (reset_state) {
			int star_check = keypad_read(4, 3); //checks if asterisk is pushed to get out of reset state
			if (star_check != -1) { 				//Checks if button is pushed
				if (star_check == 10) {
					reset = 0;	//ensures reset is 0 so doesn't reset display
					reset_state = 0;//takes me out of reset state allows me to take inputs
				}

			}

		}

		//-------------------START REGISTERING KEYAPD INPUTS
		//Starts registering keypad inputs
		while ((four_push < 4) & ~reset) { //This might not update screen when pushing
			int output = keypad_read(4, 3); //get key value
			if (output != -1) { //if button is pushed sets value to dispaly to LED
				if (output == 10) {
					reset = 1;			//jumps out of Keypad registering input
				}
				if (~reset) {
					if ((four_push % 2) != 0) {
						if (output > 5)
							output = 5;
						output_LCD[(3 - four_push)] = LCD_convert_time_to_ascii(output); //Load value onto array
																						 //Needs to display updated array
						four_push = four_push + 1;
						if (four_push == 4)  go = 1;	//Takes last keypad input and enables go to start countdown
						reset = 0;
					}
				}
				if (reset == 1) {					//Reset Display
					LCD_reset_count_display();
					reset = 0;//Loops me back to START REGISTERING KEYPAD INPUTS
				}

			}
		}

		//--------------------WAITING FOR GO KEYPRESS TO START COUNTDOWN
		int go_check = keypad_read(4, 3);			//To check when key
		if ((go_check == 11) & go) {
			GPIOC->BRR = GPIO_PIN_0; 	// turns off LED after
			go = 0;			//no longer takes go input to start countdown (this could potentially break sequencing might have to put it in the while start countdown at the very end)

			//-----------------START TO COUNTDOWN
			while ((total_time_sec != 0) & ~reset) {
				int output = keypad_read(4, 3); // get key value
				if (output == 10)				//if reset is pushed
					reset = 1;
				else {
					total_time_sec = decrement_time(total_time_sec);
					load_time(total_time_sec);
					LCD_update_count_display(); //displays it to the LCD
					if (total_time_sec == 0)
						GPIOC->BSRR = GPIO_PIN_0; //turns LED on only when countdown is complete
				}
			}
			if (reset == 1) {					//Reset Display
				LCD_reset_count_display();
				reset = 0;	//Loops me back to START REGISTERING KEYPAD INPUTS
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
