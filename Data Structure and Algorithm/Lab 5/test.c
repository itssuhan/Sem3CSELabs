#include <stdio.h>
#include <stdlib.h>
#define MAX 100
typedef struct
{
    char stack[MAX];
    int tos;
}STACK;

void push(char n,STACK *s);
char pop(STACK *s);
void push(char n,STACK *s)
{
    if (s->tos==MAX-1)
    {
        printf("Stack Overflow \n");
    }
    else
    {
        s->tos++;
        s->stack[s->tos]=x;
    }
}
char pop(STACK *s)
{
    if(s->tos==-1)
    {
        printf("Stack Underflow \n");
        exit(1);
    }
    else
    {
        return(s->stack[s->tos--]);
    }
}