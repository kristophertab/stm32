/*
 * main.c
 *
 *  Created on: 8 mar 2017
 *      Author: kakses
 */

#include "stm32f411xe.h"

void SysTick_Handler(void){
	if((GPIOD->ODR & GPIO_ODR_OD12) == 0){
		GPIOD->BSRR = GPIO_BSRR_BS12;
	} else{
		GPIOD->BSRR = GPIO_BSRR_BR12;
	}
} /*SysTickHandler*/

int main(void) {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	GPIOD->MODER |= GPIO_MODER_MODE12_0;

	SysTick_Config(3000000);

	while(1){

	}
	return 0;
} /*main*/
