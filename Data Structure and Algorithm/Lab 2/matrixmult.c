#include <stdio.h>
#include <stdlib.h>

void matrixmultptr(int m1, int n1, int m2, int n2, int **a, int **b)
{
    int i, j, k, c[100][100];
    if (n1 != m2)
    {
        printf("\nError Matrices cannot be Multiplied!\n");
        exit(0);
    }
    for (i = 0; i < m1; i++)
    {
        for (j = 0; j < n2; j++)
            c[i][j] = 0;
    }
    for (i = 0; i < m1; i++)
    {
        for (j = 0; j < n2; j++)
        {
            for (k = 0; k < n1; k++)
                c[i][j] = c[i][j] + (a[i][k] * b[k][j]);
        }
    }
    printf("The Resultant Matrix after the Multiplication is :\n");
    for (i = 0; i < m1; i++)
    {
        for (j = 0; j < n2; j++)
            printf("%d  ", c[i][j]);
        printf("\n");
    }
}

void main()
{
    int **a;
    int **b;
    int m1, n1, m2, n2, i, j;
    printf("Enter the number of Elements in the Row of the First Matrix : ");
    scanf("%d", &m1);
    printf("\nEnter the number of Elements in the Column of the First Matrix : ");
    scanf("%d", &n1);
    printf("\nEnter the number of Elements in the Row of the Second Matrix : ");
    scanf("%d", &m2);
    printf("\nEnter the number of Elements in the Column of the Second Matrix : ");
    scanf("%d", &n2);
    a = (int **)calloc((m1 + 1), sizeof(int *));
    b = (int **)calloc((m2 + 1), sizeof(int *));
    printf("\nEnter the Elements in the First Matrix : ");
    for (i = 0; i < m1; i++)
    {
        a[i] = (int *)calloc((n1 + 1), sizeof(int));
        for (j = 0; j < n1; j++)
            scanf("%d", &a[i][j]);
    }
    printf("\nEnter the Elements in the Second Matrix : ");
    for (i = 0; i < m2; i++)
    {
        b[i] = (int *)calloc((n2 + 1), sizeof(int));
        for (j = 0; j < n2; j++)
            scanf("%d", &b[i][j]);
    }
    printf("\nThe First Matrix is :\n");
    for (i = 0; i < m1; i++)
    {
        for (j = 0; j < n1; j++)
            printf("%d  ", a[i][j]);
        printf("\n");
    }
    printf("\nThe Second Matrix is :\n");
    for (i = 0; i < m2; i++)
    {
        for (j = 0; j < n2; j++)
            printf("%d  ", b[i][j]);
        printf("\n");
    }
    printf("\n");
    matrixmultptr(m1, n1, m2, n2, a, b);
    for (i = 0; i < m1; i++)
        free(a[i]);
    free(a);
    for (i = 0; i < m2; i++)
        free(b[i]);
    free(b);
}
