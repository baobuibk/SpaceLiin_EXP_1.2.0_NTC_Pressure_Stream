################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/BSupport/BSP/bsp_bkram/bsp_bkram.c 

OBJS += \
./Dev/BSupport/BSP/bsp_bkram/bsp_bkram.o 

C_DEPS += \
./Dev/BSupport/BSP/bsp_bkram/bsp_bkram.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/BSupport/BSP/bsp_bkram/%.o Dev/BSupport/BSP/bsp_bkram/%.su Dev/BSupport/BSP/bsp_bkram/%.cyclo: ../Dev/BSupport/BSP/bsp_bkram/%.c Dev/BSupport/BSP/bsp_bkram/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/BSupport/BSP/bsp_bkram/bsp_bkram.c_includes.args"

clean: clean-Dev-2f-BSupport-2f-BSP-2f-bsp_bkram

clean-Dev-2f-BSupport-2f-BSP-2f-bsp_bkram:
	-$(RM) ./Dev/BSupport/BSP/bsp_bkram/bsp_bkram.cyclo ./Dev/BSupport/BSP/bsp_bkram/bsp_bkram.d ./Dev/BSupport/BSP/bsp_bkram/bsp_bkram.o ./Dev/BSupport/BSP/bsp_bkram/bsp_bkram.su

.PHONY: clean-Dev-2f-BSupport-2f-BSP-2f-bsp_bkram

