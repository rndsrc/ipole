CC = h5pcc

# CFLAGS from original build.py chosen not to produce silent errors

ifneq (,$(findstring icc,$(shell $(CC) --version)))

	GSL_DIR = /opt/apps/intel19/gsl/2.6


	CFLAGS = -O3 -xCORE-AVX2 -axCORE-AVX512,MIC-AVX512 -std=gnu11 -qopenmp
	MATH_LIB =
endif

ifneq (,$(findstring gcc,$(shell $(CC) --version)))

	GSL_DIR = /opt/apps/gcc7_1/gsl/2.3/

	CC = h5pcc -shlib
	
	CFLAGS = -O3 -std=gnu99 -Wall -fopenmp
endif
