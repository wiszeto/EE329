################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-nuttx

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-nuttx:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/condition.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/device.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/init.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/io.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/irq.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/shmem.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/lib/system/nuttx/time.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-lib-2f-system-2f-nuttx

