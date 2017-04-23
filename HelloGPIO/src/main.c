/*
 * main.c
 *
 *  Created on: 20 lut 2017
 *      Author: kakses
 */
#include"stm32f411xe.h"


int main(void){
	uint32_t i=0, n=1000000;
	RCC->AHB1ENR =	RCC_AHB1ENR_GPIODEN;

	//GPIO configuration PD14 as push-pull output
	GPIOD->MODER &= ~GPIO_MODER_MODE14;
	GPIOD->MODER |= GPIO_MODER_MODE14_0;
	GPIOD->OTYPER &= ~GPIO_OTYPER_OT_14;
	GPIOD->PUPDR &= ~(GPIO_PUPDR_PUPD14_0|GPIO_PUPDR_PUPD14);

	while(1){
		//set 14'th pin (turn on LED)
		GPIOD->ODR |= GPIO_ODR_OD14;
		for(i=0;i<n;i++);

		GPIOD->ODR &= ~GPIO_ODR_OD14;
		for(i=0;i<n;i++);

	}
}


