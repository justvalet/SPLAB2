#include <stdio.h>

int main()
{
    unsigned short a[10];
    int i;
    unsigned int c=0;

    for(i=0; i<10; i++)
    {
        a[i]=17990^65280;
        printf("%c%c", (char)(a[i]), (char)(a[i]>>8));
    }

    for(i=1; i<10; i+=2)
    {
        c+=a[i];
    }
    printf("\n%d\n", c);

    return 0;
}
