//  Program to Exchange the Digits //

#include<stdio.h>
#include<stdlib.h>
void exchange(int *px, int *py)
{
	int temp;
	temp = *px;
	*px = *py;
	*py = temp;
	return;                      
}

int main()
{
	int *a,*b;
	
	a=(int *)malloc(sizeof(int));
	b=(int *)malloc(sizeof(int));

	printf("Enter the Digits : ");
	scanf("%d %d",a,b);

	exchange(a,b);
	printf("The Reverse of the Digits is : ");
	printf("%d %d",*a,*b);
    
    return 0;
}

