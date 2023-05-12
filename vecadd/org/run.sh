#!/bin/bash
#------- qsub option -----------
#PBS -A CCUSC
#PBS -q gpu
#PBS -l elapstim_req=00:00:10

#------- Program execution ----------
cd $PBS_O_WORKDIR
./vecadd.exe
