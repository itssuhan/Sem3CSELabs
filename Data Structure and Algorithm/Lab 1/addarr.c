#include <stdio.h>

void addarr(int n, double arr[])
{
	double sum = 0.0;
	int i;
	for (i = 0; i < n; i++)
	{
		sum = sum + *(arr + i);
	}
	printf("\nThe Sum of The Elements of the Array is : %lf \n", sum);
}

void main()
{
	int n, i;
	double arr[100];
	printf("Enter the number of elements in the array : ");
	scanf("%d", &n);
	printf("\nEnter the elements of the array : \n");
	for (i = 0; i < n; i++)
		scanf("%lf", &arr[i]);
	addarr(n, arr);
}
