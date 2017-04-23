/*
 * main.c
 *
 *  Created on: 20 lut 2017
 *      Author: kakses
 */
#include"stm32f411xe.h"
uint32_t cycle=5000, duty=0;

int main(void){
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;//set TIM3 clock
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;//set GPIOD clock

	GPIOD->MODER |= (GPIO_MODER_MODE15 & ~GPIO_MODER_MODE15_0);
	GPIOD->AFR[1] |= GPIO_AFRH_AFRH7_1;

	TIM4->ARR=cycle;
	TIM4->CCR4=duty;

	TIM4->CCMR2 |= (TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4PE );
	//PWM mode 1 oc4=110, enable preload register
	TIM4->EGR |= TIM_EGR_UG;//RM says its necessary
	TIM4->CCER |= TIM_CCER_CC4E; //enable CH4 output
	TIM4->CR1 |= TIM_CR1_ARPE | TIM_CR1_CEN;//Counter ENable

	SysTick_Config(8400);
	while(1);
}/*main*/

void SysTick_Handler(){
	if(duty<cycle){
		TIM4->CCR4=duty++;
	}else if(duty<2*cycle){
		TIM4->CCR4=2*cycle-(duty++);
	} else{
		duty=0;
	}
}/*SysTickHandler*/


