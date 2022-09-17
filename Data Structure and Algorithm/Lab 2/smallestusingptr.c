#include<stdio.h>
#include<stdlib.h>
int Smallest(int *p,int n);
int main(){
	int *arr,n,small,i;
	int *p;
	printf("Enter number of elements: ");
	scanf("%d",&n);
	arr=(int*)calloc(n,sizeof(int));
    printf("Enter %d elements: ",n);
	for(i=0;i<n;i++){
		scanf("%d",&arr[i]);
	}
	p=arr;
	small=Smallest(p,n);
	printf("The smallest element is %d",small);
	free(arr);
	return 0;
}

int Smallest(int *p,int n){
int sm;
sm=*p;
for(int i=0;i<n;i++){
	if(*p<sm){
		sm=*p;
	}
	p++;
}
return sm;
}