#include<stdio.h>
void Reverse(int *p, int n, int *q);
int main(){
	int arr[100],i,n;
	int *p,*q;
	printf("Enter the number of elements: ");
	scanf("%d",&n);
	printf("Enter the elements: ");
	for(i=0;i<n;i++){
		scanf("%d",&arr[i]);
	}
	p=arr;
	q=&arr[n-1];
	Reverse(p,n,q);
    printf("Reversed array elements are: ");
	for(i=0;i<n;i++){
		printf("%d ",arr[i]);
	}
	return 0;
}
void Reverse(int *p, int n, int *q){
	int temp;
	for(int i=0;i<n/2;i++){
		temp=*p;
		*p=*q;
		*q=temp;
		p++;
		q--;
	}
}