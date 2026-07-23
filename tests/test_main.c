#include <assert.h>
#include <stdio.h>
#include "my.h"

int main(void)
{
    assert(my_strlen("") == 0);
    assert(my_strlen("hello") == 5);
    assert(my_strlen("Hello, World!") == 13);

    printf("All tests passed!\n");
    printf("my_strlen tests completed successfully.\n");
    return 0;
}
