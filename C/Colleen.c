#include <stdio.h>
#define Collen "#include <stdio.h>%c#define Collen %c%s%c%cint main() { printf(Collen, 10, 34, Collen, 34, 10, 10, 10, 10, 10, 10, 10, 10);%c/*%cThis program will print its own source when run.%c*/%c}%c/*%cThis program will print its own source when run.%c*/"
int main() { printf(Collen, 10, 34, Collen, 34, 10, 10, 10, 10, 10, 10, 10, 10);
/*
This program will print its own source when run.
*/
}
/*
This program will print its own source when run.
*/