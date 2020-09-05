#include <stdio.h>

int sum(int a, int b)
{
    return a + b;
}

int main(int argc, char *argv[])
{
    int a = 2;
    int b = 4;
    int c;
    
    c = sum(a, b);
    
    printf("show c:%d", c);
    
    return 0;
}
