#include <stdio.h>

void Lsearch(int arr[],int n,int ele)
{
	int i,flag=0;
	for(i = 0 ; i < n ; i++)
	{
		if(ele==arr[i])
		{
			printf("\nElement '%d', found at position '%d'\n",ele,i);
			flag = 1;
		}
	}
	if(flag == 0)
		printf("\nERROR, Element '%d' not found\n",ele);
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
	printf("Enter the element that you want to search : ");
	scanf("%d",&ele);
	Lsearch(arr,n,ele);
}
