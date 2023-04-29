//includes
#include "main.h"
#include "delay.h"
#include "lcd.h"

void SystemClock_Config(void);

int main(void) {
  //variable declarations
  int random_number;
  int reset_state = 1;
  int react_state = 0;
  int display_state = 0;
  int start_time = 0;
  int end_time = 0;
  int elapsed_time = 0;

  //inits
  HAL_Init();
  SystemClock_Config();
  SysTick_Init();
  LCD_init();

  //clocks
  RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;  // GPIOC clock init
  RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;  // GPIOB clock init
  RCC->AHB2ENR |= RCC_AHB2ENR_RNGEN;    // RNG clock init
  RCC->CRRCR |= (RCC_CRRCR_HSI48ON);    // HSI clock init
  RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN; // TIM2 init

  TIM2->ARR = 0xFFFFFFFF;   // Max auto-reload value for 32-bit timer
  TIM2->CR1 |= TIM_CR1_CEN; // Start TIM2

  GPIOB->MODER &= ~(GPIO_MODER_MODE7);  // LD2 clear
  GPIOB->MODER |= (GPIO_MODER_MODE7_0); // LD2 output mode

  GPIOC->MODER &= ~(GPIO_MODER_MODE13); // button init
  GPIOC->PUPDR &= ~(GPIO_PUPDR_PUPD13_1);
  GPIOC->PUPDR |= (GPIO_PUPDR_PUPD13_1);

  RNG->CR |= (RNG_CR_RNGEN | RNG_CR_IE); // RNG turn on

  delay_us(100);
  str_write("EE 329 A4 REACT ");
  delay_us(100);
  lcd_set_cursor_position(1, 0); // set cursor to second row, first column
  delay_us(100);
  str_write("PUSH SW TO TRIG ");
  while (1) {
    if (reset_state) { // Reset state: waiting for the button press to start the reaction timer
      GPIOB->BRR = GPIO_PIN_7;
      if (GPIOC->IDR & GPIO_IDR_ID13) {  // Check if the button is pressed
        reset_state = 0;
        react_state = 1;
        delay_us(10000000);
      }
    }

    if (react_state) { // React state: waiting for the user's reaction to a randomly timed LED
      while (!(RNG->SR & RNG_SR_DRDY)); // Generate a random number using the hardware random number generator
      random_number = RNG->DR;
      delay_us(random_number & 0xFF);  // Wait for a random amount of time
      start_time = TIM2->CNT;
      GPIOB->BSRR = GPIO_PIN_7;
      while (1) {
        if (GPIOC->IDR & GPIO_IDR_ID13) { // Wait for the button press and calculate the elapsed time
          end_time = TIM2->CNT;
          elapsed_time = end_time - start_time;
          react_state = 0;
          display_state = 1;
          break;
        }
      }
    }

    if (display_state) { // Display state: show the elapsed time on the LCD
      GPIOB->BRR = GPIO_PIN_7;
      lcd_set_cursor_position(1, 0); // set cursor to second row, first column
      str_write("TIME = ");
      elapsed_time = elapsed_time / 4000;

      if (elapsed_time < 1000) { // Display the elapsed time for less than 1000 ms
        char str[4];
        int milliseconds = elapsed_time;

        lcd_set_cursor_position(1, 7);
        delay_us(100);
        str_write("          ");
        lcd_set_cursor_position(1, 7);
        str_write("0.");
        delay_us(100);

        itoa(milliseconds, str, 10);
        if (milliseconds < 10) {
          str_write("00");
          str_write(str);
        } else if (milliseconds < 100) {
          str_write("0");
          str_write(str);
        } else {
          str_write(str);
        }

        delay_us(100);
        str_write("s");
      } else if (elapsed_time < 10000) { // 10 seconds is 10000ms
        char str[5];
        int seconds = elapsed_time / 1000;
        int milliseconds = elapsed_time % 1000;

        lcd_set_cursor_position(1, 7);
        delay_us(100);
        str_write("          ");
        lcd_set_cursor_position(1, 7);

        itoa(seconds, str, 10);
        str_write(str);
        delay_us(100);
        str_write(".");

        itoa(milliseconds, str, 10);
        if (milliseconds < 10) {
          str_write("00");
          str_write(str);
        } else if (milliseconds < 100) {
          str_write("0");
          str_write(str);
        } else {
          str_write(str);
        }

        delay_us(100);
        str_write("s");
      } else {
        lcd_set_cursor_position(1, 0); // set cursor to second row, first column
        delay_us(100);
        str_write("TIME = 9.999s"); // write *=SET #=GO --:-- to second line
      }

      delay_us(10000000);
      while (1) {
        if (GPIOC->IDR & GPIO_IDR_ID13) {
          elapsed_time = 0;
          display_state = 0;
          reset_state = 1;
          lcd_set_cursor_position(1,
                                  0); // set cursor to second row, first column
          delay_us(100);
          str_write(
              "PUSH SW TO TRIG ");
          delay_us(10000000);
          break;
        }
      }
    }
  }
}

void SystemClock_Config(void) {
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK) {
    Error_Handler();
  }
  /** Initializes the RCC Oscillators according to the specified parameters
   * in the RCC_OscInitTypeDef structure.
   */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
   */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK |
                                RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK) {
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

#ifdef USE_FULL_ASSERT
/**
 * @brief  Reports the name of the source file and the source line number
 *         where the assert_param error has occurred.
 * @param  file: pointer to the source file name
 * @param  line: assert_param error line source number
 * @retval None
 */
void assert_failed(uint8_t *file, uint32_t line) {
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line
     number, ex: printf("Wrong parameters value: file %s on line %d\r\n", file,
     line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
