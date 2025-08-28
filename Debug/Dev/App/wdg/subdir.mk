################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/wdg/wdg.c \
../Dev/App/wdg/wdg_task.c 

OBJS += \
./Dev/App/wdg/wdg.o \
./Dev/App/wdg/wdg_task.o 

C_DEPS += \
./Dev/App/wdg/wdg.d \
./Dev/App/wdg/wdg_task.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/wdg/%.o Dev/App/wdg/%.su Dev/App/wdg/%.cyclo: ../Dev/App/wdg/%.c Dev/App/wdg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/wdg/wdg.c_includes.args"

clean: clean-Dev-2f-App-2f-wdg

clean-Dev-2f-App-2f-wdg:
	-$(RM) ./Dev/App/wdg/wdg.cyclo ./Dev/App/wdg/wdg.d ./Dev/App/wdg/wdg.o ./Dev/App/wdg/wdg.su ./Dev/App/wdg/wdg_task.cyclo ./Dev/App/wdg/wdg_task.d ./Dev/App/wdg/wdg_task.o ./Dev/App/wdg/wdg_task.su

.PHONY: clean-Dev-2f-App-2f-wdg

