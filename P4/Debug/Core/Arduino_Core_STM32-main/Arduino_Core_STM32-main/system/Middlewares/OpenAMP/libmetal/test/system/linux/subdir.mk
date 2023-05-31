################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.c \
../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.c 

OBJS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.o \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.o 

C_DEPS += \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.d \
./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/%.o Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/%.su Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/%.cyclo: ../Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/%.c Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L4A6xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-linux

clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-linux:
	-$(RM) ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/alloc.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/atomic.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/condition.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/irq.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/main.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/mutex.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/shmem.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/spinlock.su ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.cyclo ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.d ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.o ./Core/Arduino_Core_STM32-main/Arduino_Core_STM32-main/system/Middlewares/OpenAMP/libmetal/test/system/linux/threads.su

.PHONY: clean-Core-2f-Arduino_Core_STM32-2d-main-2f-Arduino_Core_STM32-2d-main-2f-system-2f-Middlewares-2f-OpenAMP-2f-libmetal-2f-test-2f-system-2f-linux

