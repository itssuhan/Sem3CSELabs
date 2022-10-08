#include <stdio.h>
#include <stdlib.h>

typedef struct
{
    char arr[6];
    int top1, top2;
} Stack;

void push1(Stack *s, char ch)
{
    if ((s->top1 + 1) < (s->top2))
    {
        s->arr[++(s->top1)] = ch;
    }

    else
    {
        printf("Stack 1 Overload!\n");
    }
}

void push2(Stack *s, char ch)
{
    if ((s->top1 + 1) < (s->top2))
    {
        s->arr[--(s->top2)] = ch;
    }

    else
    {
        printf("Stack 2 Overload!\n");
    }
}

char pop1(Stack *s)
{
    if (s->top1 >= 0)
    {
        return s->arr[(s->top1)--];
    }

    printf("Stack 1 Underload!\n");

    return '`';
}

char pop2(Stack *s)
{
    if ((s->top2) < 5)
    {
        return s->arr[(s->top2)++];
    }

    printf("Stack 2 Underload!\n");
    return '`';
}

void display1(Stack s)
{
    int i = 0;

    for (i = 0; i <= s.top1; i++)
    {
        printf("%c ", s.arr[i]);
    }
    printf("\n");
}

void display2(Stack s)
{
    int i = 0;
    for (i = 4; i >= s.top2; i--)
    {
        printf("%c ", s.arr[i]);
    }
    printf("\n");
}

int main(int argc, char const *argv[])
{
    Stack s;
    s.top1 = -1;
    s.top2 = 5;
    int choice1 = 0, choice2;

    do
    {
        printf("Enter 1 for Stack 1\nEnter 2 for Stack 2\nEnter 3 to exit Below.\n");
        scanf("%d", &choice1);

        if (choice1 == 1)
        {
            char ch;
            printf("\nFor Stack 1 : \n");
            do
            {
                printf("1. Push\n2. Pop\n3. Display\n4. Exit\n");
                printf("Enter your choice below :\n");
                scanf(" %d", &choice2);
                switch (choice2)
                {
                case 1:

                    printf("Enter the char below : \n");
                    scanf(" %c", &ch);
                    push1(&s, ch);

                    break;

                case 2:

                    ch = pop1(&s);
                    if (ch != '^')
                    {
                        printf("The character returned is: %c\n", ch);
                    }

                    break;

                case 3:

                    display1(s);
                    break;

                default:
                    printf("Exiting to Main Menu !\n");
                }
            } while (choice2 != 4);
        }

        else if (choice1 == 2)
        {
            char ch;
            printf("\nFor Stack 2 : \n");

            do
            {
                printf("1. Push\n2. Pop\n3. Display\n4. Exit\n");

                printf("Enter your choice below : \n");
                scanf(" %d", &choice2);

                switch (choice2)
                {
                case 1:

                    printf("Enter the char below!\n");
                    scanf(" %c", &ch);
                    push2(&s, ch);

                    break;
                case 2:

                    ch = pop2(&s);

                    if (ch != '^')
                    {
                        printf("The character returned is: %c\n", ch);
                    }
                    break;

                case 3:

                    display2(s);
                    break;

                default:
                    printf("Exiting to Main Menu !\n");
                }
            } while (choice2 != 4);
        }
    } 
    while (choice1 != 3);
        printf("Exiting Program \n");

    return 0;
}
