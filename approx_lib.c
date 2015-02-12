#include<math.h>
#include "approx_lib.h"

void * approx_malloc(size_t size , int error)
{
  return (void *) malloc(sizeof(size));
}

void approx_free(void * ptr)
{
  return free(ptr);
}
