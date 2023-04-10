#ifndef KEYPAD
#define KEYPAD

#include "main.h"
//left pins Lower 4 pin rows, right-side upper 4 pins are column and bottum left straight starting from PB3 pins are outputs

#define NUM_OF_ROWS 4
#define NUM_OF_COLS 3
#define ROW_PORT GPIOC
#define COL_PORT GPIOB

#define Row1 GPIO_PIN_0
#define Row2 GPIO_PIN_1
#define Row3 GPIO_PIN_2
#define Row4 GPIO_PIN_3

#define Col1 GPIO_PIN_13
#define Col2 GPIO_PIN_14
#define Col3 GPIO_PIN_15

void keypad_init();
int keypad_read();
int check_row_col(int col, int row);


#endif
