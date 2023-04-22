//declarations of functions, macros, constants, data types.

// Header guards
#ifndef KEYPAD
#define KEYPAD

#include "main.h" // Include the main header file

// Macro definitions for constants
#define NUM_OF_ROWS 4 // Number of rows in the keypad
#define NUM_OF_COLS 3 // Number of columns in the keypad

// Macro definitions for row and column ports
#define ROW_PORT GPIOA // Port for rows
#define COL_PORT GPIOB // Port for columns

// Macro definitions for row pins
#define Row1 GPIO_PIN_0 // Row 1 pin
#define Row2 GPIO_PIN_1 // Row 2 pin
#define Row3 GPIO_PIN_2 // Row 3 pin
#define Row4 GPIO_PIN_3 // Row 4 pin

// Macro definitions for column pins
#define Col1 GPIO_PIN_15 // Column 1 pin
#define Col2 GPIO_PIN_13 // Column 2 pin
#define Col3 GPIO_PIN_12 // Column 3 pin

void keypad_init();
int keypad_read(int cols, int row);
int check_row_col(int col, int row);

#endif // End of header guards
