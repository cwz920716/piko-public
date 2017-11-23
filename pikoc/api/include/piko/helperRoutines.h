#ifndef HELPER_ROUTINES_H
#define HELPER_ROUTINES_H

#ifdef __PIKOC_DEVICE__
#if defined(__PIKOC_PTX__)
#include <stdio.h>

	extern "C"
	void printInt(int d) { 
		printf("%d\n", d);
	}


	extern "C"
	void printFloat(float f) { 
		printf("%f\n", f);
	}

#elif defined(__PIKOC_CPU__)
	#include <cstdio>

	extern "C"
	void printInt(int d) { 
		printf("%d\n", d);
	}

	extern "C"
	void printFloat(float f) { 
		printf("%f\n", f);
	}
#else
	#ifndef __PIKOC_ANALYSIS_PHASE__
		This_Code_Should_Never_Get_Compiled_	
	#else
		void printInt(int d) {}
		void printFloat(float f) { }
	#endif
#endif
#endif


#endif
