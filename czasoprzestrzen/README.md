# Odległościomierz
Edukacyjny projekt realizowany na płytce stm32f4-discovery. Czujnik ultradźwiękowy HC-SR04 przesyła pomiary do mikroprocesora, który następnie steruje wychyleniem serwa pokazującym jak daleko znajduje się wykrywany obiekt
# Zdjęcie
![alt tag](https://github.com/kristophertab/stm32/czasoprzestrzen/odleglosciomierz.png)

Kod programu znajduje się w pliku /src/main.c

## Funkcje
* configAll() - konfiguruje zegary, porty, timery ustawiając odpowiednie bity, uruchamia tez przerwania
* measurement(GPIO_TypeDef *, TIM_TypeDef *) - odpowiada za komunikację z układem HC-SR04. Zwraca dystans, którego format pozwala na bezpośrednie umieszczenie w show(). W przypadku błędnego pomiaru zwraca 0.
* show(uint32_t) - steruje wychylaniem serwa za pomocą PWM
* TIM3_Interrupt() - zbiera dane dotyczące długości odpowiedzi od czujnika odległości
* SysTick_Handler() - liczy czas na potrzeby kodu w pętli głównej

## Sposób działania
* Jeśli przycisk PA0 (niebieski przycisk na płytce discovery) zostanie wciśnięty program w zwolnionym tempie pokaże za pomocą serwa 50 ostatnich pomiarów
* Jeśli przycisk nie jest wciśnięty pomiary są wykonywane ze stałą częstotliwością i na bieżąco pokazywane

## Wideo

[![youtube link](https://youtu.be/ntwzm0GJNTs/0.jpg)](https://youtu.be/ntwzm0GJNTs)

## Kod programu
```C
/*
 * main.c
 *
 *  Created on: 20 lut 2017
 *      Author: kakses
 *
 *	HW:
 *  Discovery board with HC-SR04
 *  5V	-	Vcc
 *  Trig	-	PB5
 *  Echo	- 	PB4 (by voltage devider 5V-3.3)
 *  Gnd	-	GND
 *
 *	Discovery board with servo
 *	PWM	-	PA10
 *	GND	-	GND
 *	Vcc	-	external 5V source
 */
#include"stm32f411xe.h"


volatile uint32_t ticks;
uint8_t ok_measure;
uint32_t ans_time, dst, dst_table[50], i,j,k;//distance;
uint32_t measurement(GPIO_TypeDef *, TIM_TypeDef *);
void configAll();
void TIM3_Interrupt();
void show(uint32_t);

int main(void){
	configAll();//see function below

	while(1){//infinite loop, wait for interrupts
		if(GPIOA->IDR & GPIO_IDR_ID0){//user button not pressed - measure output
			for(j=0;j<50;j++){
				show(dst_table[ (j+i)%50 ]);
				ticks=30; while(ticks);
			}
		} else{ //user button pressed - display mode
			dst=measurement(GPIOB, TIM3);
			show(dst);
			dst_table[(i++)%50] = dst;
			ticks=15;
			while(ticks);
		}
	}
}/*main*/

void SysTick_Handler(){
	if(ticks) ticks--; //primitive time measurement used by main loop
}/*SysTick_Handler*/

void configAll(){
	RCC->AHB1ENR |= (RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOAEN);
	RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
	RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;//enable cocks

	GPIOB->MODER |= GPIO_MODER_MODE5_0;
	GPIOB->PUPDR |= (GPIO_PUPDR_PUPD5 & ~GPIO_PUPDR_PUPD5_0);
	GPIOB->MODER |= (GPIO_MODER_MODE4  & ~GPIO_MODER_MODE4_0);
	GPIOB->AFR[0] |= (GPIO_AFRL_AFRL4_1);
	GPIOA->MODER |= (GPIO_MODER_MODE10 & ~GPIO_MODER_MODE10_0);
	GPIOA->AFR[1] |= GPIO_AFRH_AFRH2_0;

	TIM3->PSC=10;//very important - based on doc and experience gives ~1us period
	TIM3->ARR=1000;//not important
	TIM3->CCMR1 |= TIM_CCMR1_CC1S_0; //ti2fp1 as source
	TIM3->CCER |= (TIM_CCER_CC1P | TIM_CCER_CC1NP); //both edges
	TIM3->CCER |= TIM_CCER_CC1E; //enable channel 1
	TIM3->DIER |= TIM_DIER_CC1IE;//enable capture interrupt
	TIM3->SR = ~TIM_SR_CC1IF;

	TIM3->CR1 |= TIM_CR1_CEN; // enable counter

	TIM1->PSC=15;//~.01ms --based on experience
	TIM1->ARR=20000;//~20ms period
	TIM1->CCMR2 |= (TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3CE); //PWD mode 1
	TIM1->CCMR2 |= TIM_CCMR2_OC3PE; //preload
	TIM1->CCER |= TIM_CCER_CC3E;//enalbe channnel 3
	TIM1->BDTR |= (TIM_BDTR_MOE | TIM_BDTR_OSSI | TIM_BDTR_OSSR);//rely don't know, was in picture inside RM
	TIM1->CR2 |= TIM_CR2_OIS3;//idle state config
	TIM1->CR1 |= TIM_CR1_ARPE; // controled upcounting
	TIM1->EGR |= TIM_EGR_UG;//initialization

	TIM1->CR1 |= TIM_CR1_CEN;//enable caounter

	NVIC_EnableIRQ(TIM3_IRQn);
	SysTick_Config(105000);
}/*configAll*/

uint32_t measurement(GPIO_TypeDef *GPIOTrig, TIM_TypeDef *TIMEcho){
	ans_time=0;//good practice
	ok_measure=0;//by default as failure. if not in interrupt, notching changes

	/* asking procedure, 10us signal is generated on Triger pin*/
	TIM3->ARR = 10;//10us
	GPIOTrig->BSRR = GPIO_BSRR_BS5;//set 1 on Trigger
	TIM3->EGR |= TIM_EGR_UG; //don't now is it necessery
	TIM3->SR = ~TIM_SR_UIF; //its too
	while(!(TIM3->SR & TIM_SR_UIF)); //white until counter overload
	GPIOTrig->BSRR = GPIO_BSRR_BR5;//reset Trigger bit

	/*reading sensor response*/
	TIM3->ARR = 30000; //set period on 30ms - max anserw time is 25ms (based on not so well made datasheet)
	TIM3->EGR |= TIM_EGR_UG; //don't now is it necessery
	TIM3->SR = ~(TIM_SR_UIF | TIM_SR_CC1IF);//lke up
	while(!(TIM3->SR & TIM_SR_UIF));//wait until counter overload

	if(ok_measure == 2 && ans_time < 30000){
		//return (ans_time/20)+550;
		if(ans_time<3500) return (uint32_t)(0.314*ans_time+500);
		return (uint32_t)(0.02*ans_time+1500);
	}else {
		return 0;
	}
}/*measurement*/

void show(uint32_t value){
	if(value==0) return;

	uint32_t start_value = TIM1->CCR3;//pwm pulse. TIM1_CH3 is PA10 pin (see hw above)
	while(start_value <= value) {
		TIM1->CCR3 = start_value++;
	};
	while(start_value >= value) {
		TIM1->CCR3 = start_value--;
	};
}/*show*/

void TIM3_Interrupt(){
	if(TIM3->SR & TIM_SR_CC1IF){
		ans_time = TIM3->CCR1 - ans_time;
		ok_measure++;
	}
}/*TIM2_Interrupt*/
```
