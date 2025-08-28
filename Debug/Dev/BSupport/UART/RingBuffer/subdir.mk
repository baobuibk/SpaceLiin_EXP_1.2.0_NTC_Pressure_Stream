################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/BSupport/UART/RingBuffer/ring_buffer.c 

OBJS += \
./Dev/BSupport/UART/RingBuffer/ring_buffer.o 

C_DEPS += \
./Dev/BSupport/UART/RingBuffer/ring_buffer.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/BSupport/UART/RingBuffer/%.o Dev/BSupport/UART/RingBuffer/%.su Dev/BSupport/UART/RingBuffer/%.cyclo: ../Dev/BSupport/UART/RingBuffer/%.c Dev/BSupport/UART/RingBuffer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/BSupport/UART/RingBuffer/ring_buffer.c_includes.args"

clean: clean-Dev-2f-BSupport-2f-UART-2f-RingBuffer

clean-Dev-2f-BSupport-2f-UART-2f-RingBuffer:
	-$(RM) ./Dev/BSupport/UART/RingBuffer/ring_buffer.cyclo ./Dev/BSupport/UART/RingBuffer/ring_buffer.d ./Dev/BSupport/UART/RingBuffer/ring_buffer.o ./Dev/BSupport/UART/RingBuffer/ring_buffer.su

.PHONY: clean-Dev-2f-BSupport-2f-UART-2f-RingBuffer

