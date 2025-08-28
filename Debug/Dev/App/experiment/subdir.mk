################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/experiment/experiment_task.c 

OBJS += \
./Dev/App/experiment/experiment_task.o 

C_DEPS += \
./Dev/App/experiment/experiment_task.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/experiment/%.o Dev/App/experiment/%.su Dev/App/experiment/%.cyclo: ../Dev/App/experiment/%.c Dev/App/experiment/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/experiment/experiment_task.c_includes.args"

clean: clean-Dev-2f-App-2f-experiment

clean-Dev-2f-App-2f-experiment:
	-$(RM) ./Dev/App/experiment/experiment_task.cyclo ./Dev/App/experiment/experiment_task.d ./Dev/App/experiment/experiment_task.o ./Dev/App/experiment/experiment_task.su

.PHONY: clean-Dev-2f-App-2f-experiment

