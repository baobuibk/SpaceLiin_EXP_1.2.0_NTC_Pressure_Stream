################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/lwl/lwl.c 

OBJS += \
./Dev/MiddleWare/lwl/lwl.o 

C_DEPS += \
./Dev/MiddleWare/lwl/lwl.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/lwl/%.o Dev/MiddleWare/lwl/%.su Dev/MiddleWare/lwl/%.cyclo: ../Dev/MiddleWare/lwl/%.c Dev/MiddleWare/lwl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/lwl/lwl.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-lwl

clean-Dev-2f-MiddleWare-2f-lwl:
	-$(RM) ./Dev/MiddleWare/lwl/lwl.cyclo ./Dev/MiddleWare/lwl/lwl.d ./Dev/MiddleWare/lwl/lwl.o ./Dev/MiddleWare/lwl/lwl.su

.PHONY: clean-Dev-2f-MiddleWare-2f-lwl

