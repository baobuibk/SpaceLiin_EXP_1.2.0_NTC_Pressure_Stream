################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/sst0_c/src/mempool.c \
../Dev/MiddleWare/sst0_c/src/sst0.c 

OBJS += \
./Dev/MiddleWare/sst0_c/src/mempool.o \
./Dev/MiddleWare/sst0_c/src/sst0.o 

C_DEPS += \
./Dev/MiddleWare/sst0_c/src/mempool.d \
./Dev/MiddleWare/sst0_c/src/sst0.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/sst0_c/src/%.o Dev/MiddleWare/sst0_c/src/%.su Dev/MiddleWare/sst0_c/src/%.cyclo: ../Dev/MiddleWare/sst0_c/src/%.c Dev/MiddleWare/sst0_c/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/sst0_c/src/mempool.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-sst0_c-2f-src

clean-Dev-2f-MiddleWare-2f-sst0_c-2f-src:
	-$(RM) ./Dev/MiddleWare/sst0_c/src/mempool.cyclo ./Dev/MiddleWare/sst0_c/src/mempool.d ./Dev/MiddleWare/sst0_c/src/mempool.o ./Dev/MiddleWare/sst0_c/src/mempool.su ./Dev/MiddleWare/sst0_c/src/sst0.cyclo ./Dev/MiddleWare/sst0_c/src/sst0.d ./Dev/MiddleWare/sst0_c/src/sst0.o ./Dev/MiddleWare/sst0_c/src/sst0.su

.PHONY: clean-Dev-2f-MiddleWare-2f-sst0_c-2f-src

