################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/NTC/ntc.c 

OBJS += \
./Dev/Devices/NTC/ntc.o 

C_DEPS += \
./Dev/Devices/NTC/ntc.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/NTC/%.o Dev/Devices/NTC/%.su Dev/Devices/NTC/%.cyclo: ../Dev/Devices/NTC/%.c Dev/Devices/NTC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/NTC/ntc.c_includes.args"

clean: clean-Dev-2f-Devices-2f-NTC

clean-Dev-2f-Devices-2f-NTC:
	-$(RM) ./Dev/Devices/NTC/ntc.cyclo ./Dev/Devices/NTC/ntc.d ./Dev/Devices/NTC/ntc.o ./Dev/Devices/NTC/ntc.su

.PHONY: clean-Dev-2f-Devices-2f-NTC

