#include "stdio.h"

struct TestStruct 
{
    int a;
    int b;
    int c;
};

auto 
main(
    [[maybe_unused]] int argc,
    [[maybe_unused]] const char* argv[],
    [[maybe_unused]] const char* envp[]
) -> int
{
    TestStruct test {1, 2, 3};

    printf("%d\n", test.a);
    printf("%d\n", test.b);
    printf("%d\n", test.c);
    printf("0x%p\n", &test);

    return 0;
}