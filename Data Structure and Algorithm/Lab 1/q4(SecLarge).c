#include <stdio.h>

void SLarge(int arr[], int n)
{
    int min = arr[0], max = arr[0], i, smax;
    for (i = 0; i < n; i++)
    {
        if (max < arr[i])
            max = arr[i];
        if (min > arr[i])
            min = arr[i];
    }
    for (i = 0; i < n; i++)
    {
        if (max == arr[i])
            arr[i] = min;
    }
    smax = min;
    for (i = 0; i < n; i++)
    {
        if (smax < arr[i])
            smax = arr[i];
    }
    printf("Second Largest Element in the Array = %d \n", smax);
}

void main()
{
	int n,i,ele;
	int arr[100];
	printf("Enter the number of elements in the array : ");
	scanf("%d",&n);
	printf("\nEnter the elements of the array : \n");
	for(i = 0 ; i < n ; i++)
		scanf("%d",&arr[i]);
	SLarge(arr,n);
}