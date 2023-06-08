/*
 * FP_process.h
 *
 *  Created on: Jun 5, 2023
 *      Author: james
 */

#ifndef INC_FP_PROCESS_H_
#define INC_FP_PROCESS_H_

#define MAX_FP 50 //for debugging search, limits the max amount

//function declarations
void FP_enroll(void);
void FP_search(void);
void FP_check(void);

//global variable
extern uint8_t MEM_GLOBAL;	//FP ID# LOCALATION IN FLASH MEMORY
extern uint16_t FP_ID; //FOUND FP ID# LOCATION IN FLASH MEMORY
extern char USER_INPUT_NAME[MAX_FP][16];	//MAX_FP = max # of users; username 16 char max

#endif /* INC_FP_PROCESS_H_ */
