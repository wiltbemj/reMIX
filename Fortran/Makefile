F90 = /Users/merkivg1/Downloads/hdf5-1.10.0-patch1/hdf5/bin/h5fc
#ifort
FFLAGS += -O3 -ffree-line-length-none  -Ddouble_precision -Dmgmres_solver
#-DNO2003_HDF5

#### CHOICE OF SOLVER
#-Dpardiso_solver
#-Dmgmres_solver

#### DEBUG
#-check bounds -traceback -fpe0

#### OTHER OPTIONS
# NO2003_HDF5 - HDF5 lib compiled without fortran 2003 support
#-fast 
#-qopenmp

INCLUDES = 
#-I$(MKLROOT)/include 
LIBS = 
#-L$(MKLROOT)/lib/intel64 -lmkl_intel_lp64 -lmkl_sequential -lmkl_core

FFLAGS += $(INCLUDES) $(LIBS)

.SUFFIXES: .F90 .f .f90

.f90.o:
	$(F90) $(FFLAGS) -c $<

.F90.o:
	$(F90) $(FFLAGS) -c $<

EXE = mix

objects = mixdefs.o\
	mixtypes.o\
	mixio.o\
	mixgeom.o\
	mixstate.o\
	mixsolver.o\
	mix.o\
	mgmres.o

$(EXE): $(objects)
	$(F90) $(FFLAGS) $(LDFLAGS)  -o $(EXE) $(objects) 

clean:
	rm -f *~ *.o *.mod *.optrpt $(EXE)
