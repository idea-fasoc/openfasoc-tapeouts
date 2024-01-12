#include <stdio.h>

int sum(int a, int b);

int main()
{
    int a = 50, b = 40;
    int c = sum(a,b);
    // int volatile * const p_reg = (int *) 0x30010014;
    // *p_reg = 0xff;
    return 0;
}

int sum(int a, int b)
{
    return a+b;
}