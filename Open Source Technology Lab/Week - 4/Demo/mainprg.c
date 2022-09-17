#include <stdio.h>
#include "maths.h"
void main()
{
int a,b;
printf("Write the Value of a and b");
scanf("%d %d",&a ,&b);
printf("Addition = %d\n",add(a,b));
printf("Subtraction = %d\n",sub(a,b));
printf("Multiplication = %d\n",mult(a,b));
printf("Division = %d\n",div(a,b));
}
