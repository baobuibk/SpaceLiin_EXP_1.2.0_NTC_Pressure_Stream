################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/BSupport/I2C/i2c.c 

OBJS += \
./Dev/BSupport/I2C/i2c.o 

C_DEPS += \
./Dev/BSupport/I2C/i2c.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/BSupport/I2C/%.o Dev/BSupport/I2C/%.su Dev/BSupport/I2C/%.cyclo: ../Dev/BSupport/I2C/%.c Dev/BSupport/I2C/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/BSupport/I2C/i2c.c_includes.args"

clean: clean-Dev-2f-BSupport-2f-I2C

clean-Dev-2f-BSupport-2f-I2C:
	-$(RM) ./Dev/BSupport/I2C/i2c.cyclo ./Dev/BSupport/I2C/i2c.d ./Dev/BSupport/I2C/i2c.o ./Dev/BSupport/I2C/i2c.su

.PHONY: clean-Dev-2f-BSupport-2f-I2C

