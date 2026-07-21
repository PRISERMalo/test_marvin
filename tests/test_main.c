#include <assert.h>
#include <stdio.h>
#include "my.h"

int main(void)
{
    assert(my_strlen("") == 0);
    assert(my_strlen("hello") == 5);
    assert(my_strlen("Hello, World!") == 13);

    printf("All tests passed!\n");
    return 0;
}
