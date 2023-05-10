#include "main.h"
#include "delay.h"
#include "dac.h"
#include "lcd.h"
#include "keypad.h"

void SystemClock_Config(void);

uint32_t frequency = 1;
uint32_t count = 0;
uint32_t duty_cycle = 4;
static uint32_t MAX_POINTS = 1980;
static uint16_t WAVE_CYCLE[9] = { 198, 396, 594, 792, 990, 1188, 1386, 1584,
		1782 };

int main(void) {
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOCEN);
	RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOEEN);

	HAL_Init();
	SystemClock_Config();
	SysTick_Init();
	LCD_init();
	keypad_init();
	SPI_init();

	RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN;           // enable clock for TIM2
	TIM2->DIER |= (TIM_DIER_UIE);  // enable event gen, rcv CCR1
	TIM2->ARR = 200;                             // ARR = T = counts @4MHz
	TIM2->SR &= ~(TIM_SR_UIF);       // clr IRQ flag in status reg
	NVIC->ISER[0] |= (1 << (TIM2_IRQn & 0x1F));     // set NVIC interrupt: 0x1F
	__enable_irq();                                 // global IRQ enable
	TIM2->CR1 |= TIM_CR1_CEN;                       // start TIM2 CR1
	delay_us(1000);
	lcd_set_cursor_position(0, 0); // set cursor to second row, first column
	str_write("SQU 100 Hz  LAST");
	delay_us(1000);
	lcd_set_cursor_position(1, 0); // set cursor to second row, first column
	str_write("50% DUTY     '9'");
	delay_us(1000);
	command(0x0C);

	// Set pin 1 as output mode
	GPIOE->MODER &= ~(GPIO_MODER_MODE15);
	GPIOE->MODER |= (GPIO_MODER_MODE15_0);

	while (1) {

		int output = keypad_read(4, 3); // get key value

		if (output != -1) {

			// if not int key pressed reset the values
			lcd_set_cursor_position(1, 14);
			write(output + '0');

			if (output < 6) {
				frequency = output;
				lcd_set_cursor_position(0, 4); // set cursor to second row, first column
				delay_us(100);
				write(output + '0');	//change int to ascii and write to board
			} else if (output == 6) {
				lcd_set_cursor_position(0, 0); // set cursor to second row, first column
				delay_us(100);
				str_write("SIN");
			} else if (output == 7) {
				lcd_set_cursor_position(0, 0); // set cursor to second row, first column
				delay_us(100);
				str_write("SAW");
				delay_us(100);
				lcd_set_cursor_position(1, 0); // set cursor to second row, first column
				str_write("POSITIVE");
				delay_us(100);
			} else if (output == 8) {
				lcd_set_cursor_position(0, 0); // set cursor to second row, first column
				delay_us(100);
				str_write("SQU");
				delay_us(100);
			} else if (output == 9) {
				lcd_set_cursor_position(0, 0); // set cursor to second row, first column
				delay_us(100);
				str_write("SQU");
			}
			if (output == 10) {
				if (duty_cycle != 0) {
					duty_cycle--;
				}

				lcd_set_cursor_position(1, 14);
				write('*');

			}
			if (output == 11) {
				if (duty_cycle != 8) {
					duty_cycle++;
				}
				lcd_set_cursor_position(1, 14);
				write('#');
			}

			delay_us(25000); //250ms
		}

	}

}
void setup_TIM2(int iDutyCycle) {

}
void TIM2_IRQHandler(void) {

	if (TIM2->SR & TIM_SR_UIF) {
		TIM2->SR &= ~(TIM_SR_UIF);
		if (count < MAX_POINTS) {
			//increment count by the selected frequency
			count += frequency;
			if (count <= (WAVE_CYCLE[duty_cycle])) {
				DAC_write(0xFFF);
			} else {
				DAC_write(0);
			}
		}
		//Once count reached max_points, reset
		else {
			count = 0;
		}

	}

}

void SystemClock_Config(void) {
	RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };

	/** Configure the main internal regulator output voltage
	 */
	if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1)
			!= HAL_OK) {
		Error_Handler();
	}

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
	RCC_OscInitStruct.MSIState = RCC_MSI_ON;
	RCC_OscInitStruct.MSICalibrationValue = 0;
	RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_10;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
		Error_Handler();
	}

	/** Initializes the CPU, AHB and APB buses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK) {
		Error_Handler();
	}
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void) {
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
