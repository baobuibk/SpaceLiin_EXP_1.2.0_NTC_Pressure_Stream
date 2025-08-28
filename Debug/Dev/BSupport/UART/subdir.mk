################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/BSupport/UART/uart_driver.c 

OBJS += \
./Dev/BSupport/UART/uart_driver.o 

C_DEPS += \
./Dev/BSupport/UART/uart_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/BSupport/UART/%.o Dev/BSupport/UART/%.su Dev/BSupport/UART/%.cyclo: ../Dev/BSupport/UART/%.c Dev/BSupport/UART/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/BSupport/UART/uart_driver.c_includes.args"

clean: clean-Dev-2f-BSupport-2f-UART

clean-Dev-2f-BSupport-2f-UART:
	-$(RM) ./Dev/BSupport/UART/uart_driver.cyclo ./Dev/BSupport/UART/uart_driver.d ./Dev/BSupport/UART/uart_driver.o ./Dev/BSupport/UART/uart_driver.su

.PHONY: clean-Dev-2f-BSupport-2f-UART

