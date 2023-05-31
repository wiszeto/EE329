################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-libraries-2f-SrcWrapper-2f-src-2f-stm32

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-libraries-2f-SrcWrapper-2f-src-2f-stm32:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/PortNames.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/bootloader.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/clock.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/core_callback.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/dwt.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/hw_config.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/otp.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/pinmap.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/stm32_def.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/system_stm32yyxx.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/timer.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/libraries/SrcWrapper/src/stm32/uart.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-libraries-2f-SrcWrapper-2f-src-2f-stm32

