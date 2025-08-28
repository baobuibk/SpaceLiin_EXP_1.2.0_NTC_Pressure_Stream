################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.c 

OBJS += \
./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.o 

C_DEPS += \
./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/IS66WVS4M8BLL/%.o Dev/Devices/IS66WVS4M8BLL/%.su Dev/Devices/IS66WVS4M8BLL/%.cyclo: ../Dev/Devices/IS66WVS4M8BLL/%.c Dev/Devices/IS66WVS4M8BLL/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.c_includes.args"

clean: clean-Dev-2f-Devices-2f-IS66WVS4M8BLL

clean-Dev-2f-Devices-2f-IS66WVS4M8BLL:
	-$(RM) ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.cyclo ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.d ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.o ./Dev/Devices/IS66WVS4M8BLL/IS66WVS4M8BLL.su

.PHONY: clean-Dev-2f-Devices-2f-IS66WVS4M8BLL

