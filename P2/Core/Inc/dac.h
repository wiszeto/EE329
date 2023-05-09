#ifndef DAC
#define DAC
#include "main.h"
#include "keypad.h"

#define SPI1_PORT GPIOA // Port for SPI1

void SPI_init();
uint32_t DAC_write(uint32_t dig_val);
uint32_t DAC_volt_conv(uint32_t analog_val);

#endif
