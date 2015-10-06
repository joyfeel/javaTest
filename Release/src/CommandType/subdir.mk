################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CommandType/CCmdType1Receiver.cpp \
../src/CommandType/CCmdType2Receiver.cpp \
../src/CommandType/CCmdType3Receiver.cpp \
../src/CommandType/IReceiver.cpp 

OBJS += \
./src/CommandType/CCmdType1Receiver.o \
./src/CommandType/CCmdType2Receiver.o \
./src/CommandType/CCmdType3Receiver.o \
./src/CommandType/IReceiver.o 

CPP_DEPS += \
./src/CommandType/CCmdType1Receiver.d \
./src/CommandType/CCmdType2Receiver.d \
./src/CommandType/CCmdType3Receiver.d \
./src/CommandType/IReceiver.d 


# Each subdirectory must supply rules for building sources it contributes
src/CommandType/%.o: ../src/CommandType/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/include/jsoncpp/json -I/opt/local/include/ -O1 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


