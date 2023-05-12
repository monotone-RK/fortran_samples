# $ module load nvhpc-nompi/23.1

FC := nvfortran
FFLAGS := -fast -acc=gpu -gpu=cuda12.0,cc90 -Minfo=accel -g
SRCS := acc_vadd.f90
TARGET := acc_vadd.exe

compile:
	$(FC) $(FFLAGS) $(SRCS) -o $(TARGET)

run:
	qsub run.sh

.PHONY: clean
clean:
	rm -f $(TARGET) *.mod run.sh.*
