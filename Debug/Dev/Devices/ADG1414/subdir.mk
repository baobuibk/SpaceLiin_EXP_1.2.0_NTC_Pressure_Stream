################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/ADG1414/adg1414.c 

OBJS += \
./Dev/Devices/ADG1414/adg1414.o 

C_DEPS += \
./Dev/Devices/ADG1414/adg1414.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/ADG1414/%.o Dev/Devices/ADG1414/%.su Dev/Devices/ADG1414/%.cyclo: ../Dev/Devices/ADG1414/%.c Dev/Devices/ADG1414/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/ADG1414/adg1414.c_includes.args"

clean: clean-Dev-2f-Devices-2f-ADG1414

clean-Dev-2f-Devices-2f-ADG1414:
	-$(RM) ./Dev/Devices/ADG1414/adg1414.cyclo ./Dev/Devices/ADG1414/adg1414.d ./Dev/Devices/ADG1414/adg1414.o ./Dev/Devices/ADG1414/adg1414.su

.PHONY: clean-Dev-2f-Devices-2f-ADG1414

