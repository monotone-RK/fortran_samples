FC := gfortran
FFLAGS := -O3 -Wall -Wextra -g
SRCS := vecadd.f90
TARGET := vecadd.exe

compile:
	$(FC) $(FFLAGS) $(SRCS) -o $(TARGET)

run:
	qsub run.sh

.PHONY: clean
clean:
	rm -f $(TARGET) run.sh.*
