################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/MIN_Protocol/min.c 

OBJS += \
./Dev/MiddleWare/MIN_Protocol/min.o 

C_DEPS += \
./Dev/MiddleWare/MIN_Protocol/min.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/MIN_Protocol/%.o Dev/MiddleWare/MIN_Protocol/%.su Dev/MiddleWare/MIN_Protocol/%.cyclo: ../Dev/MiddleWare/MIN_Protocol/%.c Dev/MiddleWare/MIN_Protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/MIN_Protocol/min.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-MIN_Protocol

clean-Dev-2f-MiddleWare-2f-MIN_Protocol:
	-$(RM) ./Dev/MiddleWare/MIN_Protocol/min.cyclo ./Dev/MiddleWare/MIN_Protocol/min.d ./Dev/MiddleWare/MIN_Protocol/min.o ./Dev/MiddleWare/MIN_Protocol/min.su

.PHONY: clean-Dev-2f-MiddleWare-2f-MIN_Protocol

