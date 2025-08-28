################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/Utils/atomic.c 

OBJS += \
./Dev/MiddleWare/Utils/atomic.o 

C_DEPS += \
./Dev/MiddleWare/Utils/atomic.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/Utils/%.o Dev/MiddleWare/Utils/%.su Dev/MiddleWare/Utils/%.cyclo: ../Dev/MiddleWare/Utils/%.c Dev/MiddleWare/Utils/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/Utils/atomic.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-Utils

clean-Dev-2f-MiddleWare-2f-Utils:
	-$(RM) ./Dev/MiddleWare/Utils/atomic.cyclo ./Dev/MiddleWare/Utils/atomic.d ./Dev/MiddleWare/Utils/atomic.o ./Dev/MiddleWare/Utils/atomic.su

.PHONY: clean-Dev-2f-MiddleWare-2f-Utils

