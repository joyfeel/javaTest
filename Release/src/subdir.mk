################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CConcreteCommand.cpp \
../src/CConcreteCommandAct.cpp \
../src/ICommand.cpp \
../src/ICommandAct.cpp \
../src/eMMCTester.cpp 

OBJS += \
./src/CConcreteCommand.o \
./src/CConcreteCommandAct.o \
./src/ICommand.o \
./src/ICommandAct.o \
./src/eMMCTester.o 

CPP_DEPS += \
./src/CConcreteCommand.d \
./src/CConcreteCommandAct.d \
./src/ICommand.d \
./src/ICommandAct.d \
./src/eMMCTester.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/include/jsoncpp/json -I/opt/local/include/ -O1 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


