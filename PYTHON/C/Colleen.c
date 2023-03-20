#include <stdio.h>
#define COLLEN "#include <stdio.h>%c#define COLLEN %c%s%c%cint main() { printf(COLLEN, 10, 34, COLLEN, 34, 10, 10, 10, 10, 10, 10, 10, 10);%c/*%cThis program will print its own source when run.%c*/%c}%c/*%cThis program will print its own source when run.%c*/"
int main() { printf(COLLEN, 10, 34, COLLEN, 34, 10, 10, 10, 10, 10, 10, 10, 10);
/*
This program will print its own source when run.
*/
}
/*
This program will print its own source when run.
*/