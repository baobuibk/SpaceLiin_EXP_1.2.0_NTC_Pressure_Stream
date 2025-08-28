################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dev/BSupport/DateTime/date_time.c 

OBJS += \
./Dev/BSupport/DateTime/date_time.o 

C_DEPS += \
./Dev/BSupport/DateTime/date_time.d 


# Each subdirectory must supply rules for building sources it contributes
Dev/BSupport/DateTime/%.o Dev/BSupport/DateTime/%.su Dev/BSupport/DateTime/%.cyclo: ../Dev/BSupport/DateTime/%.c Dev/BSupport/DateTime/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DSTM32F765xx -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" @"Dev/BSupport/DateTime/date_time.c_includes.args"

clean: clean-Dev-2f-BSupport-2f-DateTime

clean-Dev-2f-BSupport-2f-DateTime:
	-$(RM) ./Dev/BSupport/DateTime/date_time.cyclo ./Dev/BSupport/DateTime/date_time.d ./Dev/BSupport/DateTime/date_time.o ./Dev/BSupport/DateTime/date_time.su

.PHONY: clean-Dev-2f-BSupport-2f-DateTime

