################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/FSM/FSM.c 

OBJS += \
./Dev/MiddleWare/FSM/FSM.o 

C_DEPS += \
./Dev/MiddleWare/FSM/FSM.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/FSM/%.o Dev/MiddleWare/FSM/%.su Dev/MiddleWare/FSM/%.cyclo: ../Dev/MiddleWare/FSM/%.c Dev/MiddleWare/FSM/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/FSM/FSM.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-FSM

clean-Dev-2f-MiddleWare-2f-FSM:
	-$(RM) ./Dev/MiddleWare/FSM/FSM.cyclo ./Dev/MiddleWare/FSM/FSM.d ./Dev/MiddleWare/FSM/FSM.o ./Dev/MiddleWare/FSM/FSM.su

.PHONY: clean-Dev-2f-MiddleWare-2f-FSM

