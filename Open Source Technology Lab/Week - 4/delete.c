#include <stdio.h>

int main()
{
   int array[100], position, c, n;

   printf("Enter the location where you wish to delete element\n");
   scanf("%d", &position);

   if (position >= n+1)
      printf("Deletion not possible.\n");
   else
   {
      for (c = position - 1; c < n - 1; c++)
         array[c] = array[c+1];
   }
   return 0;
}