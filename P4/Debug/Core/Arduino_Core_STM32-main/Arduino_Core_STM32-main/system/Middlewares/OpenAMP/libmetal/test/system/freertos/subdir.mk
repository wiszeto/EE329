################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-freertos

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-freertos:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/alloc.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/atomic.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/irq.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/main.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/mutex.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/sleep.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/freertos/threads.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-freertos

