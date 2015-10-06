################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CommandFactory/CBufferLengthCaseHandler.cpp \
../src/CommandFactory/CCmdIndexHandler.cpp \
../src/CommandFactory/CCommandFactory.cpp \
../src/CommandFactory/CDeviceTypeCaseHandler.cpp \
../src/CommandFactory/CEraseCaseHandler.cpp \
../src/CommandFactory/CEudaCaseHandler.cpp \
../src/CommandFactory/CFactory.cpp \
../src/CommandFactory/CGppCaseHandler.cpp \
../src/CommandFactory/CHandler.cpp \
../src/CommandFactory/CInitializationHandler.cpp \
../src/CommandFactory/CReadCaseHandler.cpp \
../src/CommandFactory/CResetCaseHandler.cpp \
../src/CommandFactory/CSingleFileCaseHandler.cpp \
../src/CommandFactory/CSingleFileDiskCaseHandler.cpp \
../src/CommandFactory/CTestCaseHandler.cpp \
../src/CommandFactory/CTwoFileCaseHandler.cpp \
../src/CommandFactory/CWriteCaseHandler.cpp 

OBJS += \
./src/CommandFactory/CBufferLengthCaseHandler.o \
./src/CommandFactory/CCmdIndexHandler.o \
./src/CommandFactory/CCommandFactory.o \
./src/CommandFactory/CDeviceTypeCaseHandler.o \
./src/CommandFactory/CEraseCaseHandler.o \
./src/CommandFactory/CEudaCaseHandler.o \
./src/CommandFactory/CFactory.o \
./src/CommandFactory/CGppCaseHandler.o \
./src/CommandFactory/CHandler.o \
./src/CommandFactory/CInitializationHandler.o \
./src/CommandFactory/CReadCaseHandler.o \
./src/CommandFactory/CResetCaseHandler.o \
./src/CommandFactory/CSingleFileCaseHandler.o \
./src/CommandFactory/CSingleFileDiskCaseHandler.o \
./src/CommandFactory/CTestCaseHandler.o \
./src/CommandFactory/CTwoFileCaseHandler.o \
./src/CommandFactory/CWriteCaseHandler.o 

CPP_DEPS += \
./src/CommandFactory/CBufferLengthCaseHandler.d \
./src/CommandFactory/CCmdIndexHandler.d \
./src/CommandFactory/CCommandFactory.d \
./src/CommandFactory/CDeviceTypeCaseHandler.d \
./src/CommandFactory/CEraseCaseHandler.d \
./src/CommandFactory/CEudaCaseHandler.d \
./src/CommandFactory/CFactory.d \
./src/CommandFactory/CGppCaseHandler.d \
./src/CommandFactory/CHandler.d \
./src/CommandFactory/CInitializationHandler.d \
./src/CommandFactory/CReadCaseHandler.d \
./src/CommandFactory/CResetCaseHandler.d \
./src/CommandFactory/CSingleFileCaseHandler.d \
./src/CommandFactory/CSingleFileDiskCaseHandler.d \
./src/CommandFactory/CTestCaseHandler.d \
./src/CommandFactory/CTwoFileCaseHandler.d \
./src/CommandFactory/CWriteCaseHandler.d 


# Each subdirectory must supply rules for building sources it contributes
src/CommandFactory/%.o: ../src/CommandFactory/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I/usr/include/jsoncpp -I/opt/local/include/ -Os -g3 -Wall -c -fmessage-length=0 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


