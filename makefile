###########################################################################
# Compiler
###########################################################################

CC = gcc
CFLAGS =
LDFLAGS = -fopenmp

ifeq ($(DEBUG),on)
	CFLAGS += -DDEBUG
endif

###########################################################################
# File Declarations
###########################################################################
BINARIES = serial hw9.1-sisi8853-openmp-manual hw9.2-sisi8853-openmp-compiletime hw9.3-sisi8853-openmp-runtime

# C, H, and Object Files
C_FILES = serial.c hw9.1-sisi8853-openmp-manual.c hw9.2-sisi8853-openmp-compiletime.c hw9.3-sisi8853-openmp-runtime.
H_FILES =
O_FILES = serial.o hw9.1-sisi8853-openmp-manual.o hw9.2-sisi8853-openmp-compiletime.o hw9.3-sisi8853-openmp-runtime.o

###########################################################################
# Main Targets
###########################################################################
all: $(BINARIES)

serial: serial.c
	$(CC) -o serial serial.c $(LDFLAGS)

hw9.1-sisi8853-openmp-manual: hw9.1-sisi8853-openmp-manual.c
	$(CC) -o hw9.1-sisi8853-openmp-manual hw9.1-sisi8853-openmp-manual.c $(LDFLAGS)

hw9.2-sisi8853-openmp-compiletime: hw9.2-sisi8853-openmp-compiletime.c
	$(CC) -o hw9.2-sisi8853-openmp-compiletime hw9.2-sisi8853-openmp-compiletime.c $(LDFLAGS)

hw9.3-sisi8853-openmp-runtime: hw9.3-sisi8853-openmp-runtime.c
	$(CC) -o hw9.3-sisi8853-openmp-runtime hw9.3-sisi8853-openmp-runtime.c $(LDFLAGS)

clean:
	/bin/rm -rf core $(O_FILES) $(BINARIES)

# Suffixes

.cpp.o:
	$(CC) $(CFLAGS) -c -o $*.o $*.cpp

.c.o:
	$(CC) $(CFLAGS) -c -o $*.o $*.c

# Dependencies
