# $ module load nvhpc-nompi/23.1

FC := nvfortran
FFLAGS := -fast -cuda -gpu=cuda12.0,cc90 -g
SRCS := thrust_module.cuf testsort.cuf
TARGET := testsort.exe

compile:
	nvcc -c -arch sm_90 csort.cu
	$(FC) $(FFLAGS) -c++libs $(SRCS) csort.o -o $(TARGET)

run:
	qsub run.sh

.PHONY: clean
clean:
	rm -f $(TARGET) *.o *.mod run.sh.*
