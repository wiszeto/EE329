/*******************************************************************
 * Project Name: Voltage DAC interface
 * Author: Wilson Szeto - wiszeto@calpoly.edu
 * Date: May 7, 2023
 * Description: A program to interface with the DAC IC. Enter numbers
 *                      keypad to output a voltage on the DAC.
 * Citations:
 *            Szeto, Wilson. (2023-Apr-30). "EE 329 code referenced here".
 *            Retrieved from https://github.com/wiszeto/EE329
 *******************************************************************/

//includes
#include "main.h"
#include "dac.h"
#include "delay.h"
#include "keypad.h"

void SystemClock_Config(void);

int main(void) {
  //timers
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIODEN);

  //inits
  HAL_Init();
  SystemClock_Config();
  SysTick_Init();
  keypad_init();
  SPI_init();

  uint8_t num_key = 0;
  uint32_t output_volt = 0;

  while (1) {
    int output = keypad_read(4, 3); // get key value
    if (output != -1) {
      if (output > 9) {// if not int key pressed reset the values
        num_key = 0;
        output_volt = 0;
        DAC_write(0);
      }
      // first key is 100 hundreds
      else if (num_key == 0) {
        output_volt = (output * 100);
        num_key++;
      }

      // 2nd key is 10s
      else if (num_key == 1) {
        output_volt = output_volt + (output * 10);
        num_key++;
      }

      // 3rd key is ones
      else { // third press write to dac and reset the values
        output_volt = output_volt + (output);
        uint32_t dig_val = DAC_volt_conv((output_volt * 10)); // change to mV
        DAC_write(dig_val);
        output_volt = 0;
        num_key = 0;
      }
      delay_us(500000);
    }
  }
}

void SystemClock_Config(void) {
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK) {
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

void Error_Handler(void) {

  __disable_irq();
  while (1) {
  }
}

#ifdef USE_FULL_ASSERT

void assert_failed(uint8_t *file, uint32_t line) {}
#endif
