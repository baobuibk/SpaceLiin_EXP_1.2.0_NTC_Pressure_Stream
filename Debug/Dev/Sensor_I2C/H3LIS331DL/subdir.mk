################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.c 

OBJS += \
./Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.o 

C_DEPS += \
./Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Sensor_I2C/H3LIS331DL/%.o Dev/Sensor_I2C/H3LIS331DL/%.su Dev/Sensor_I2C/H3LIS331DL/%.cyclo: ../Dev/Sensor_I2C/H3LIS331DL/%.c Dev/Sensor_I2C/H3LIS331DL/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.c_includes.args"

clean: clean-Dev-2f-Sensor_I2C-2f-H3LIS331DL

clean-Dev-2f-Sensor_I2C-2f-H3LIS331DL:
	-$(RM) ./Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.cyclo ./Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.d ./Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.o ./Dev/Sensor_I2C/H3LIS331DL/h3lis331dl.su

.PHONY: clean-Dev-2f-Sensor_I2C-2f-H3LIS331DL

