################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/IR_LED/ir_led.c 

OBJS += \
./Dev/Devices/IR_LED/ir_led.o 

C_DEPS += \
./Dev/Devices/IR_LED/ir_led.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/IR_LED/%.o Dev/Devices/IR_LED/%.su Dev/Devices/IR_LED/%.cyclo: ../Dev/Devices/IR_LED/%.c Dev/Devices/IR_LED/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/IR_LED/ir_led.c_includes.args"

clean: clean-Dev-2f-Devices-2f-IR_LED

clean-Dev-2f-Devices-2f-IR_LED:
	-$(RM) ./Dev/Devices/IR_LED/ir_led.cyclo ./Dev/Devices/IR_LED/ir_led.d ./Dev/Devices/IR_LED/ir_led.o ./Dev/Devices/IR_LED/ir_led.su

.PHONY: clean-Dev-2f-Devices-2f-IR_LED

