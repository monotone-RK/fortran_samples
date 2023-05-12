FC := gfortran
FFLAGS := -O3 -Wall -Wextra -g
SRCS := rand.f90
TARGET := rand.exe

compile:
	$(FC) $(FFLAGS) $(SRCS) -o $(TARGET)

run:
	qsub run.sh

.PHONY: clean
clean:
	rm -f $(TARGET) run.sh.*
