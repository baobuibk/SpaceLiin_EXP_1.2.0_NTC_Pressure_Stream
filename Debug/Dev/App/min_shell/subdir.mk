################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/min_shell/min_shell.c \
../Dev/App/min_shell/min_shell_command.c 

OBJS += \
./Dev/App/min_shell/min_shell.o \
./Dev/App/min_shell/min_shell_command.o 

C_DEPS += \
./Dev/App/min_shell/min_shell.d \
./Dev/App/min_shell/min_shell_command.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/min_shell/%.o Dev/App/min_shell/%.su Dev/App/min_shell/%.cyclo: ../Dev/App/min_shell/%.c Dev/App/min_shell/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/min_shell/min_shell.c_includes.args"

clean: clean-Dev-2f-App-2f-min_shell

clean-Dev-2f-App-2f-min_shell:
	-$(RM) ./Dev/App/min_shell/min_shell.cyclo ./Dev/App/min_shell/min_shell.d ./Dev/App/min_shell/min_shell.o ./Dev/App/min_shell/min_shell.su ./Dev/App/min_shell/min_shell_command.cyclo ./Dev/App/min_shell/min_shell_command.d ./Dev/App/min_shell/min_shell_command.o ./Dev/App/min_shell/min_shell_command.su

.PHONY: clean-Dev-2f-App-2f-min_shell

