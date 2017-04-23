/*
 * main.c
 *
 *  Created on: 20 lut 2017
 *      Author: kakses
 */
#include"stm32f411xe.h"

void TIM1_UP_IRQHandler(void);

int main(void){

	RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;

	GPIOD->MODER |= GPIO_MODER_MODE14_0;

	/*TIM1 config:
	 *Default Clock devision (whatever it is),
	 *Default Edge aligned mode,
	 *Default Upcounting,
	 *every source cause Update EVent (and it's enabled)
	 */
	TIM1->CR1 |= TIM_CR1_CEN; //Counter enable
//	TIM1->CR1 |= TIM_CR1_OPM; //Counter not stopped after event.... maybe it should?
//	TIM1->CR1 |= TIM_CR1_ARPE; //Auto Reload Register is buffered
	TIM1->DIER |= TIM_DIER_UIE; //Update interrupt enable
	// ^ could be done onelined |= ( | | );

	TIM1->CNT = 0;
	TIM1->PSC = 4999;//2k*1k=2M, fck=10MHz => firq=2Hz
	TIM1->ARR = 999; //not null? null caouse caounter block while auto-reload

	NVIC_EnableIRQ(TIM1_UP_TIM10_IRQn); //TIM1_UP_TIM10_IRQn according to the book...

	GPIOD->ODR |= GPIO_ODR_OD14;

	while(1){
		//Do nothing
	};
}/*main*/

void TIM1_UP_IRQHandler(void){
	if(GPIOD->ODR & GPIO_ODR_OD14){
		GPIOD->ODR &= ~GPIO_ODR_OD14;
	} else{
		GPIOD->ODR |= GPIO_ODR_OD14;
	}

	TIM1->SR &= ~TIM_SR_UIF;
}/*TIM1_CC_IRQHandler*/


