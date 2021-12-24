#include <stdio.h>
#include <stdlib.h>

void hello_world(void)
{
        printf("Hello World\n");
}

int main(int argc, char* argv[])
{
    printf("Hello World from main\n");
    hello_world();
}

