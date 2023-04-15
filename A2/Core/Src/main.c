#include "main.h"
#include "keypad.h"

void SystemClock_Config(void);

int set_leds(uint32_t);

int main(void)
{
  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();
  SystemClock_Config();


  /* Enable Clk*/
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOAEN);
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOBEN);
  RCC->AHB2ENR |= (RCC_AHB2ENR_GPIOCEN);

  /*Configure LED Output*/
  // Make pin0 output mode
  GPIOA->MODER &= ~(GPIO_MODER_MODE0);
  GPIOA->MODER |= (GPIO_MODER_MODE0_0);

  // Make pin1 output mode
  GPIOA->MODER &= ~(GPIO_MODER_MODE1);
  GPIOA->MODER |= (GPIO_MODER_MODE1_0);

  // Make pin2 output mode
  GPIOA->MODER &= ~(GPIO_MODER_MODE2);
  GPIOA->MODER |= (GPIO_MODER_MODE2_0);

  // Make pin3 output mode
  GPIOA->MODER &= ~(GPIO_MODER_MODE3);
  GPIOA->MODER |= (GPIO_MODER_MODE3_0);

  //initalize keypad variables
  keypad_init();

  while (1)
  {
      int output = keypad_read( 4, 3); //get key value
      if (output != -1){
      // count++;
          set_leds(output); //set leds to value
      }
      //else {set_leds(0);} //if key not pressed set leds to 0
  }
}

int set_leds(uint32_t number) {

	  GPIOA->ODR = number; // changes all 16 port bits to count in binary

}

void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};


  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

void Error_Handler(void)
{

  __disable_irq();
  while (1)
  {
  }

}

#ifdef  USE_FULL_ASSERT

void assert_failed(uint8_t *file, uint32_t line)
{

}
#endif
