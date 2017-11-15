#!  /bin/sh
#
#PBS -N 2d_eoc 
#PBS -e 2d_eoc_error.dat
#PBS -o 2d_eoc_info.dat
#PBS -q shortq
#PBS -l nodes=1:ppn=64

#  Make sure we're in right directory
cd $PBS_O_WORKDIR
date
ls
echo "starting job..."

#  Load MPI module 
module load mpich/gcc_5.2.0/3.2

/cm/shared/apps/ncsu/SERPENT/bin/sss2 2d_core_eoc -omp 64

module unload mpich/gcc_5.2.0/3.2
