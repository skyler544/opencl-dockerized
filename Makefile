CC = gcc -Wall -Wextra
OPENCL = -D CL_TARGET_OPENCL_VERSION=100
LINK = -lOpenCL
TARGET = HelloWorld
SRCS = Main.c

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(OPENCL) $(SRCS) -o $(TARGET) $(LINK)

clean:
	rm $(TARGET)