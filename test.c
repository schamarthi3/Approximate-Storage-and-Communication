/* Author : Ashwin Naik
*/
#include <stdio.h>
#include <stdlib.h>
#include "approx_lib.h"
#define ERROR 150

// Test function to check the files in assembly
void main()
{
  char * buffer;
  int i = 0;
  buffer = (char *) approx_malloc(i+1, ERROR);
  printf("Approximate Allocation done.\n");
  return ;
}
