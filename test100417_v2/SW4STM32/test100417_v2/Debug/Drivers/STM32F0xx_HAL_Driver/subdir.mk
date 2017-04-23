################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_cortex.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_dma.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_flash.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_flash_ex.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_gpio.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2c.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2c_ex.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pwr.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pwr_ex.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rcc.c \
/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rcc_ex.c 

OBJS += \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_cortex.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_dma.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_flash.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_flash_ex.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_gpio.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_i2c.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_i2c_ex.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_pwr.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_pwr_ex.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_rcc.o \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_rcc_ex.o 

C_DEPS += \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_cortex.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_dma.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_flash.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_flash_ex.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_gpio.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_i2c.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_i2c_ex.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_pwr.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_pwr_ex.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_rcc.d \
./Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_rcc_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_cortex.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_dma.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_flash.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_flash_ex.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_gpio.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_i2c.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_i2c_ex.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2c_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_pwr.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_pwr_ex.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pwr_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_rcc.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F0xx_HAL_Driver/stm32f0xx_hal_rcc_ex.o: /home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F031x6 -I"/home/kakses/Documents/CubeMx/test100417_v2/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"/home/kakses/Documents/CubeMx/test100417_v2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


