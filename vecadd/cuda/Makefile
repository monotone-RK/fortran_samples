# $ module load nvhpc-nompi/23.1

FC := nvfortran
FFLAGS := -fast -cuda -gpu=cuda12.0,cc90 -g
SRCS := vecadd.cuf
TARGET := cuda_vadd.exe

compile:
	$(FC) $(FFLAGS) $(SRCS) -o $(TARGET)

run:
	qsub run.sh

.PHONY: clean
clean:
	rm -f $(TARGET) *.mod run.sh.*
