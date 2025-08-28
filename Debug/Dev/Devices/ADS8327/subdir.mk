################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/ADS8327/ads8327.c 

OBJS += \
./Dev/Devices/ADS8327/ads8327.o 

C_DEPS += \
./Dev/Devices/ADS8327/ads8327.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/ADS8327/%.o Dev/Devices/ADS8327/%.su Dev/Devices/ADS8327/%.cyclo: ../Dev/Devices/ADS8327/%.c Dev/Devices/ADS8327/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/ADS8327/ads8327.c_includes.args"

clean: clean-Dev-2f-Devices-2f-ADS8327

clean-Dev-2f-Devices-2f-ADS8327:
	-$(RM) ./Dev/Devices/ADS8327/ads8327.cyclo ./Dev/Devices/ADS8327/ads8327.d ./Dev/Devices/ADS8327/ads8327.o ./Dev/Devices/ADS8327/ads8327.su

.PHONY: clean-Dev-2f-Devices-2f-ADS8327

