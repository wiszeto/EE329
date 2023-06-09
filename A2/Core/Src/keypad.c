/*
 ******************************************************************************
 * file      : keypad.c
 * project   : EE 329 S'23 A2
 * details   : Keypad push displayed binary value to LEDs
 * authors   : James Savella - savella@calpoly.edu
 *             Wilson Szeto  - wiszeto@calpoly.edu
 * version   : 0.1
 * date      : 230414
 * compiler  : STM32CubeIDE Version: 1.12.1 (2022)
 * target    : NUCLEO-L4A6ZG
 ******************************************************************************
 * wiring    :
 * Column Output Pins
 * PB15 - CN7-3 - Column Pin 1 
 * PB13 - CN7-5 - Column Pin 2
 * PB12 - CN7-7 - Column Pin 3
 * Row Input Pins
 * PC0 - CN9-3 - Row Pin 1
 * PC1 - CN9-7 - Row Pin 2
 * PC2 - CN10-9 - Row Pin 3
 * PC3 - CN9-5 - Row Pin 4
 ******************************************************************************
 */

#include "keypad.h"

//Allocated values corresponding to button push
static const int keys[4][3] = {{1, 2, 3}, 
                               {4, 5, 6},
                               {7, 8, 9},
                               {10, 0, 11}};

static    int cols[3] = {Col1, Col2, Col3}; //corresponds to GPIO pins
static    int rows[4] = {Row1, Row2, Row3, Row4}; //coresponds to GPIO pins
static    int delay_time = 10000;

//This function, configures row, column and keypad pin
void keypad_init() {

    //Making column pins output mode bits(01)
    COL_PORT->MODER &= ~(GPIO_MODER_MODE0 | GPIO_MODER_MODE1 | GPIO_MODER_MODE2);
    COL_PORT->MODER |= (GPIO_MODER_MODE0_0 | GPIO_MODER_MODE1_0 | GPIO_MODER_MODE2_0);

    //Making row pins input mode bits(00)
    ROW_PORT->MODER &= ~(GPIO_MODER_MODE0 | GPIO_MODER_MODE1 | GPIO_MODER_MODE2 | GPIO_MODER_MODE3);

    //enable pull-down resistor bits(10)
    ROW_PORT->PUPDR &= (GPIO_PUPDR_PUPD0 | GPIO_PUPDR_PUPD1 | GPIO_PUPDR_PUPD2 | GPIO_PUPDR_PUPD3);
    ROW_PORT->PUPDR |= (GPIO_PUPDR_PUPD0_1 | GPIO_PUPDR_PUPD1_1 | GPIO_PUPDR_PUPD2_1 | GPIO_PUPDR_PUPD3_1);
}

int keypad_read(int cols, int row){
    COL_PORT -> BSRR = (Col1 |Col2|Col3); //outputs column pins to high

    //check if key is pressed
    if (ROW_PORT->IDR){

      //debounce delay
    	for (int delay = 0; delay < delay_time; delay++);

    	//rechecks if key is presses still for debounce
    	if (ROW_PORT->IDR){
    		COL_PORT->BRR = (Col1 |Col2|Col3); //turn off columns
    		
        //returns array position of keypress
        return check_row_col(NUM_OF_COLS, NUM_OF_ROWS);  
    	}
    }
    return -1;
}

//iterate through each column and check all rows
int check_row_col(int col, int row){
    for (int c=0; c < col; c++){
        COL_PORT->BSRR = cols[c]; //turn on the column
        for (int r=0; r < row; r++){ //Check if key pressed is in the row
            if (ROW_PORT->IDR & (rows[r])) { //Check if key pressed is in the row
               return keys[r][c]; //returns array position of keypress
            }
        }
    }
    return -1;
}
