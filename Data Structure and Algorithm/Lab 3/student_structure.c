#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct DOB
{
    int day;
    char *mth;
    int year;
};
struct STU_INFO
{
    int reg_no;
    char *name;
    char adrs[20];
};
struct COLLEGE
{
    char *clg_name;
    char univ_name[20];
};
struct STUDENT
{
    struct DOB *dob;
    struct STU_INFO stu_info;
    struct COLLEGE clg;
};
void main()
{
    char month[10];
    struct STUDENT *stu = (struct STUDENT *)malloc(sizeof(struct STUDENT));
    stu->dob = (struct DOB *)malloc(sizeof(struct DOB));
    stu->dob->mth = (char *)malloc(sizeof(month));
    stu->stu_info.name = (char *)malloc(sizeof(char) * 20);
    stu->clg.clg_name = (char *)malloc(sizeof(char) * 50);
    printf("Enter the student details BELOW : \n");
    printf("\nName of the student : ");
    scanf("%s", stu->stu_info.name);
    printf("Reg Number : ");
    scanf("%d", &stu->stu_info.reg_no);
    printf("Address : ");
    scanf("%s", stu->stu_info.adrs);
    printf("Enter Day of DOB : ");
    scanf("%d", &(stu->dob->day));
    printf("Enter Month of DOB : ");
    scanf("%s", stu->dob->mth);
    printf("Enter year for DOB ");
    scanf("%d", &(stu->dob->year));
    printf("College Name : ");
    scanf("%s", stu->clg.clg_name);
    printf("University Name : ");
    scanf("%s", stu->clg.univ_name);
    printf("\n\nStudent Details: ");
    printf("\nName: %s\nReg-Num: %d\nAddress: %s\nDOB: %d.%s.%d\nCollege: %s\nUniversity: %s\n\n", stu->stu_info.name, stu->stu_info.reg_no, stu->stu_info.adrs, stu->dob->day, stu->dob->mth, stu->dob->year, stu->clg.clg_name, stu->clg.univ_name);
}
