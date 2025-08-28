################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/MiddleWare/container/circular_buffer.c \
../Dev/MiddleWare/container/circular_char_buffer.c \
../Dev/MiddleWare/container/fifo.c \
../Dev/MiddleWare/container/log_queue.c 

OBJS += \
./Dev/MiddleWare/container/circular_buffer.o \
./Dev/MiddleWare/container/circular_char_buffer.o \
./Dev/MiddleWare/container/fifo.o \
./Dev/MiddleWare/container/log_queue.o 

C_DEPS += \
./Dev/MiddleWare/container/circular_buffer.d \
./Dev/MiddleWare/container/circular_char_buffer.d \
./Dev/MiddleWare/container/fifo.d \
./Dev/MiddleWare/container/log_queue.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/MiddleWare/container/%.o Dev/MiddleWare/container/%.su Dev/MiddleWare/container/%.cyclo: ../Dev/MiddleWare/container/%.c Dev/MiddleWare/container/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/MiddleWare/container/circular_buffer.c_includes.args"

clean: clean-Dev-2f-MiddleWare-2f-container

clean-Dev-2f-MiddleWare-2f-container:
	-$(RM) ./Dev/MiddleWare/container/circular_buffer.cyclo ./Dev/MiddleWare/container/circular_buffer.d ./Dev/MiddleWare/container/circular_buffer.o ./Dev/MiddleWare/container/circular_buffer.su ./Dev/MiddleWare/container/circular_char_buffer.cyclo ./Dev/MiddleWare/container/circular_char_buffer.d ./Dev/MiddleWare/container/circular_char_buffer.o ./Dev/MiddleWare/container/circular_char_buffer.su ./Dev/MiddleWare/container/fifo.cyclo ./Dev/MiddleWare/container/fifo.d ./Dev/MiddleWare/container/fifo.o ./Dev/MiddleWare/container/fifo.su ./Dev/MiddleWare/container/log_queue.cyclo ./Dev/MiddleWare/container/log_queue.d ./Dev/MiddleWare/container/log_queue.o ./Dev/MiddleWare/container/log_queue.su

.PHONY: clean-Dev-2f-MiddleWare-2f-container

