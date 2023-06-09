/*******************************************************************
 * Project Name: Function Generator
 * Author: Wilson Szeto - wiszeto@calpoly.edu
 * Date: May 14, 2023
 * Description:	Function generator with square wave, sine wave, and sawtooth
 *wave support Various duty cycles for square wave, positive/negative for
 *sawtooth 100, 200, 300, 400, 500 Hz support
 *
 *            Szeto, Wilson. (2023-May-14). "EE 329 code referenced here".
 *            Retrieved from https://github.com/wiszeto/EE329
 *******************************************************************/
// includes
#include "main.h"
#include "dac.h"
#include "delay.h"
#include "keypad.h"
#include "lcd.h"
#include "wavegen.h"

// global variables
uint32_t frequency = 1;
uint32_t count = 0;
uint32_t duty_cycle = 4;
uint32_t wave_type = 0;
uint32_t polarity = 0;

int main(void) {
  // time variables
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOCEN);
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOEEN);

  // system inits
  HAL_Init();
  SystemClock_Config();
  SysTick_Init();
  LCD_init();
  keypad_init();
  SPI_init();

  // print initial text to LCD
  lcd_set_cursor_position(0, 0);
  str_write("SQU 100 Hz  LAST");
  lcd_set_cursor_position(1, 0);
  str_write("50% DUTY     '9'");
  command(0x0C);

  // setup timers and interupts
  RCC->APB1ENR1 |= RCC_APB1ENR1_TIM2EN;       // enable clock for TIM2
  TIM2->DIER |= (TIM_DIER_UIE);               // enable event gen, rcv CCR1
  TIM2->ARR = 280;                            // ARR = T = counts @4MHz
  TIM2->SR &= ~(TIM_SR_UIF);                  // clr IRQ flag in status reg
  NVIC->ISER[0] |= (1 << (TIM2_IRQn & 0x1F)); // set NVIC interrupt: 0x1F
  __enable_irq();                             // global IRQ enable
  TIM2->CR1 |= TIM_CR1_CEN;                   // start TIM2 CR1

  // Set pin 15 as output mode for testing
  GPIOE->MODER &= ~(GPIO_MODER_MODE15);
  GPIOE->MODER |= (GPIO_MODER_MODE15_0);

  while (1) {

    int output = keypad_read(4, 3); // get key value

    if (output != -1) { // if key is pressed
      lcd_set_cursor_position(1, 14);
      write(output + '0'); // write latest key at position r1, c14

      if ((output < 6) && (output > 0)) { // changes frequency
        frequency = output;
        lcd_set_cursor_position(0, 4);
        write(output + '0');           // write to board
      } else if (output == 6) {        // generate sine wave
        wave_type = 1;                 // wave type 1 is sine wave
        lcd_set_cursor_position(0, 0); // update on LCD
        str_write("SIN");
        lcd_set_cursor_position(1, 0);
        str_write("1140 PTS");
      } else if (output == 7) {
        wave_type = 2;
        lcd_set_cursor_position(0, 0); // update on LCD
        str_write("SAW");
        lcd_set_cursor_position(1, 0);
        if (polarity)
          str_write("POSITIVE");
        else
          str_write("NEGATIVE");
      } else if (output == 8) {
        wave_type = 0;                 // square wave
        lcd_set_cursor_position(1, 0); // update on LCD
        write(duty_cycle + 1 + '0');   // write to board
        lcd_set_cursor_position(0, 0);
        str_write("SQU");
        lcd_set_cursor_position(1, 1);
        str_write("0% DUTY");
      } else if (output == 9) {
        wave_type = 0; // square wave 100 Hz, 50% duty cycle
        duty_cycle = 4;
        frequency = 1;
        lcd_set_cursor_position(0, 4); // update on LCD
        write('1');                    // write to board
        lcd_set_cursor_position(0, 0);
        str_write("SQU");
        lcd_set_cursor_position(1, 0);
        write(duty_cycle + 1 + '0');
        str_write("0% DUTY");
      } else if (output == 10) {
        if (duty_cycle != 0) // add duty cycle
          duty_cycle--;
        lcd_set_cursor_position(1, 0); // update on LCD
        write(duty_cycle + 1 + '0');
        lcd_set_cursor_position(1, 14);
        write('*');

      } else if (output == 11) {
        if (duty_cycle != 8) // subtract duty cycle
          duty_cycle++;
        lcd_set_cursor_position(1, 0); // update on LCD
        write(duty_cycle + 1 + '0');
        lcd_set_cursor_position(1, 14);
        write('#');
      } else if (output == 0) {
        if (wave_type == 0) {
          duty_cycle = 4;                // reset to 50% duty cycle
          lcd_set_cursor_position(1, 0); // update on LCD
          write(duty_cycle + 1 + '0');
        } else if (wave_type == 2) {
          polarity = polarity ^ 1;
          lcd_set_cursor_position(1, 0);
          if (polarity)
            str_write("POSITIVE");
          else
            str_write("NEGATIVE");
        }
        lcd_set_cursor_position(1, 14);
        write('0');
      }

      delay_us(300000); // 300ms
    }
  }
}

void TIM2_IRQHandler(void) {
  GPIOE->BSRR = (GPIO_PIN_15);
  if (TIM2->SR & TIM_SR_UIF) { // if ARR triggered
    TIM2->SR &= ~(TIM_SR_UIF);

    if (count < MAX_POINTS) {
      // push wave
      wave(wave_type, count, duty_cycle, polarity, MAX_POINTS);

      // increment count by the selected frequency
      count += frequency;
    }
    // Once count reached max_points, reset
    else {
      count = 0;
    }
  }
  GPIOE->BRR = (GPIO_PIN_15);
}

void SystemClock_Config(void) {
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
   */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK) {
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
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK |
                                RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
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
