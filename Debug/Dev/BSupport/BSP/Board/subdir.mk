################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/BSupport/BSP/Board/board.c \
../Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.c \
../Dev/BSupport/BSP/Board/bsp_debug.c 

OBJS += \
./Dev/BSupport/BSP/Board/board.o \
./Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.o \
./Dev/BSupport/BSP/Board/bsp_debug.o 

C_DEPS += \
./Dev/BSupport/BSP/Board/board.d \
./Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.d \
./Dev/BSupport/BSP/Board/bsp_debug.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/BSupport/BSP/Board/%.o Dev/BSupport/BSP/Board/%.su Dev/BSupport/BSP/Board/%.cyclo: ../Dev/BSupport/BSP/Board/%.c Dev/BSupport/BSP/Board/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/BSupport/BSP/Board/board.c_includes.args"

clean: clean-Dev-2f-BSupport-2f-BSP-2f-Board

clean-Dev-2f-BSupport-2f-BSP-2f-Board:
	-$(RM) ./Dev/BSupport/BSP/Board/board.cyclo ./Dev/BSupport/BSP/Board/board.d ./Dev/BSupport/BSP/Board/board.o ./Dev/BSupport/BSP/Board/board.su ./Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.cyclo ./Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.d ./Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.o ./Dev/BSupport/BSP/Board/bsp_board_EXP_1_2_0.su ./Dev/BSupport/BSP/Board/bsp_debug.cyclo ./Dev/BSupport/BSP/Board/bsp_debug.d ./Dev/BSupport/BSP/Board/bsp_debug.o ./Dev/BSupport/BSP/Board/bsp_debug.su

.PHONY: clean-Dev-2f-BSupport-2f-BSP-2f-Board

