/*
 * main.c
 *
 *  Created on: 20 lut 2017
 *      Author: kakses
 */
#include"stm32f411xe.h"
static int itworks;

__attribute__((interrupt)) void EXTI0_IRQHandler(void){
	itworks=1;
	EXTI->PR |= EXTI_PR_PR0;
}/*EXTI0_IRQHandler*/

int main(void){
	int i;

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	__DSB();

	GPIOA->MODER &= ~GPIO_MODER_MODE0;
	GPIOA->PUPDR |= GPIO_PUPDR_PUPD0;
	GPIOA->PUPDR &= ~(GPIO_PUPDR_PUPD0_0);

	SYSCFG->EXTICR[0] |= SYSCFG_EXTICR1_EXTI0_PA;

	EXTI->RTSR |= EXTI_RTSR_TR0;
	EXTI->IMR |= EXTI_IMR_MR0;

	NVIC_EnableIRQ(EXTI0_IRQn);

	while(1){
		for(i=0;i<100;i++){
			//do nothing
		};
	};

}/*main*/




