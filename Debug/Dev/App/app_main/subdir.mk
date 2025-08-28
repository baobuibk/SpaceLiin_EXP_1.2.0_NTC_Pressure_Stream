################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/app_main/app_main.c 

OBJS += \
./Dev/App/app_main/app_main.o 

C_DEPS += \
./Dev/App/app_main/app_main.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/app_main/%.o Dev/App/app_main/%.su Dev/App/app_main/%.cyclo: ../Dev/App/app_main/%.c Dev/App/app_main/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/app_main/app_main.c_includes.args"

clean: clean-Dev-2f-App-2f-app_main

clean-Dev-2f-App-2f-app_main:
	-$(RM) ./Dev/App/app_main/app_main.cyclo ./Dev/App/app_main/app_main.d ./Dev/App/app_main/app_main.o ./Dev/App/app_main/app_main.su

.PHONY: clean-Dev-2f-App-2f-app_main

