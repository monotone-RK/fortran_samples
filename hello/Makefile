FC := gfortran
FFLAGS := -O3 -Wall -Wextra -g
SRCS := hello.f90
TARGET := hello_world.exe

compile:
	$(FC) $(FFLAGS) $(SRCS) -o $(TARGET)

run:
	qsub run.sh

.PHONY: clean
clean:
	rm -f $(TARGET) run.sh.*
