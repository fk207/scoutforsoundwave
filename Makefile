# Compiler and Flags
CC = gcc
CFLAGS = -O2

SRC_DIR = elevate/src/

# Target executable name
TARGET = $(SRC_DIR)elevate

# Source files and Object files
SRCS = $(SRC_DIR)elevate.c $(SRC_DIR)brute.c $(SRC_DIR)dp.c $(SRC_DIR)memoize.c $(SRC_DIR)recurse.c
OBJS = $(SRCS:.c=.o)
DEPS = $(SRC_DIR)elevate.h

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
