################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/App/shell/CLI_Command/cli_command.c 

OBJS += \
./Dev/App/shell/CLI_Command/cli_command.o 

C_DEPS += \
./Dev/App/shell/CLI_Command/cli_command.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/App/shell/CLI_Command/%.o Dev/App/shell/CLI_Command/%.su Dev/App/shell/CLI_Command/%.cyclo: ../Dev/App/shell/CLI_Command/%.c Dev/App/shell/CLI_Command/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/App/shell/CLI_Command/cli_command.c_includes.args"

clean: clean-Dev-2f-App-2f-shell-2f-CLI_Command

clean-Dev-2f-App-2f-shell-2f-CLI_Command:
	-$(RM) ./Dev/App/shell/CLI_Command/cli_command.cyclo ./Dev/App/shell/CLI_Command/cli_command.d ./Dev/App/shell/CLI_Command/cli_command.o ./Dev/App/shell/CLI_Command/cli_command.su

.PHONY: clean-Dev-2f-App-2f-shell-2f-CLI_Command

