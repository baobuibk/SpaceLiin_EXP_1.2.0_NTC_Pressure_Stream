################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/LT8722/lt8722.c 

OBJS += \
./Dev/Devices/LT8722/lt8722.o 

C_DEPS += \
./Dev/Devices/LT8722/lt8722.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/LT8722/%.o Dev/Devices/LT8722/%.su Dev/Devices/LT8722/%.cyclo: ../Dev/Devices/LT8722/%.c Dev/Devices/LT8722/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/LT8722/lt8722.c_includes.args"

clean: clean-Dev-2f-Devices-2f-LT8722

clean-Dev-2f-Devices-2f-LT8722:
	-$(RM) ./Dev/Devices/LT8722/lt8722.cyclo ./Dev/Devices/LT8722/lt8722.d ./Dev/Devices/LT8722/lt8722.o ./Dev/Devices/LT8722/lt8722.su

.PHONY: clean-Dev-2f-Devices-2f-LT8722

