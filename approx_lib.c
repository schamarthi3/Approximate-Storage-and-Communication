#include<math.h>
#include "approx_lib.h"

// Author : Ashwin Naik
// Approximate Malloc function for approximate memory allocation
void * approx_malloc(size_t size , int error)
{
  printf("Approximating memory allocation\n");
  return (void *) malloc(size);
}

// Approximate Free function for approximating the free memory 
void approx_free(void * ptr)
{
  printf("Approximating memory free\n");
  return free(ptr);
}
