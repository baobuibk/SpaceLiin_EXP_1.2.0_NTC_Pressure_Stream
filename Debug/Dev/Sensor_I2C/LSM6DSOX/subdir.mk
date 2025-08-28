################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.c 

OBJS += \
./Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.o 

C_DEPS += \
./Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Sensor_I2C/LSM6DSOX/%.o Dev/Sensor_I2C/LSM6DSOX/%.su Dev/Sensor_I2C/LSM6DSOX/%.cyclo: ../Dev/Sensor_I2C/LSM6DSOX/%.c Dev/Sensor_I2C/LSM6DSOX/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.c_includes.args"

clean: clean-Dev-2f-Sensor_I2C-2f-LSM6DSOX

clean-Dev-2f-Sensor_I2C-2f-LSM6DSOX:
	-$(RM) ./Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.cyclo ./Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.d ./Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.o ./Dev/Sensor_I2C/LSM6DSOX/lsm6dsox.su

.PHONY: clean-Dev-2f-Sensor_I2C-2f-LSM6DSOX

