################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/UpdateMethod/CUpdateStatus.cpp \
../src/UpdateMethod/IUpdateStatus.cpp 

OBJS += \
./src/UpdateMethod/CUpdateStatus.o \
./src/UpdateMethod/IUpdateStatus.o 

CPP_DEPS += \
./src/UpdateMethod/CUpdateStatus.d \
./src/UpdateMethod/IUpdateStatus.d 


# Each subdirectory must supply rules for building sources it contributes
src/UpdateMethod/%.o: ../src/UpdateMethod/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I/usr/include/jsoncpp -I/opt/local/include/ -Os -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


