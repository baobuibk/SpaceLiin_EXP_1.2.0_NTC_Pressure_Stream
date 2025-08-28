################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.c 

OBJS += \
./Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.o 

C_DEPS += \
./Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/CLI_Terminal/CLI_Src/%.o Dev/MiddleWare/CLI_Terminal/CLI_Src/%.su Dev/MiddleWare/CLI_Terminal/CLI_Src/%.cyclo: ../Dev/MiddleWare/CLI_Terminal/CLI_Src/%.c Dev/MiddleWare/CLI_Terminal/CLI_Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-CLI_Terminal-2f-CLI_Src

clean-Dev-2f-MiddleWare-2f-CLI_Terminal-2f-CLI_Src:
	-$(RM) ./Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.cyclo ./Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.d ./Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.o ./Dev/MiddleWare/CLI_Terminal/CLI_Src/embedded_cli.su

.PHONY: clean-Dev-2f-MiddleWare-2f-CLI_Terminal-2f-CLI_Src

