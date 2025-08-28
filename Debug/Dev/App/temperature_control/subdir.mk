################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/temperature_control/temperature_control.c 

OBJS += \
./Dev/App/temperature_control/temperature_control.o 

C_DEPS += \
./Dev/App/temperature_control/temperature_control.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/temperature_control/%.o Dev/App/temperature_control/%.su Dev/App/temperature_control/%.cyclo: ../Dev/App/temperature_control/%.c Dev/App/temperature_control/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/temperature_control/temperature_control.c_includes.args"

clean: clean-Dev-2f-App-2f-temperature_control

clean-Dev-2f-App-2f-temperature_control:
	-$(RM) ./Dev/App/temperature_control/temperature_control.cyclo ./Dev/App/temperature_control/temperature_control.d ./Dev/App/temperature_control/temperature_control.o ./Dev/App/temperature_control/temperature_control.su

.PHONY: clean-Dev-2f-App-2f-temperature_control

