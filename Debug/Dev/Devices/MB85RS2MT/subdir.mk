################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/Devices/MB85RS2MT/mb85rs2mt.c 

OBJS += \
./Dev/Devices/MB85RS2MT/mb85rs2mt.o 

C_DEPS += \
./Dev/Devices/MB85RS2MT/mb85rs2mt.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/Devices/MB85RS2MT/%.o Dev/Devices/MB85RS2MT/%.su Dev/Devices/MB85RS2MT/%.cyclo: ../Dev/Devices/MB85RS2MT/%.c Dev/Devices/MB85RS2MT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/Devices/MB85RS2MT/mb85rs2mt.c_includes.args"

clean: clean-Dev-2f-Devices-2f-MB85RS2MT

clean-Dev-2f-Devices-2f-MB85RS2MT:
	-$(RM) ./Dev/Devices/MB85RS2MT/mb85rs2mt.cyclo ./Dev/Devices/MB85RS2MT/mb85rs2mt.d ./Dev/Devices/MB85RS2MT/mb85rs2mt.o ./Dev/Devices/MB85RS2MT/mb85rs2mt.su

.PHONY: clean-Dev-2f-Devices-2f-MB85RS2MT

