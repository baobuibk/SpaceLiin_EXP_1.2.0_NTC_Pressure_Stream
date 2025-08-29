################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/adc_monitor/adc_monitor.c 

OBJS += \
./Dev/App/adc_monitor/adc_monitor.o 

C_DEPS += \
./Dev/App/adc_monitor/adc_monitor.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/adc_monitor/%.o Dev/App/adc_monitor/%.su Dev/App/adc_monitor/%.cyclo: ../Dev/App/adc_monitor/%.c Dev/App/adc_monitor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/adc_monitor/adc_monitor.c_includes.args"

clean: clean-Dev-2f-App-2f-adc_monitor

clean-Dev-2f-App-2f-adc_monitor:
	-$(RM) ./Dev/App/adc_monitor/adc_monitor.cyclo ./Dev/App/adc_monitor/adc_monitor.d ./Dev/App/adc_monitor/adc_monitor.o ./Dev/App/adc_monitor/adc_monitor.su

.PHONY: clean-Dev-2f-App-2f-adc_monitor

