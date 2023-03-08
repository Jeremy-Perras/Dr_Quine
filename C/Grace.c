#include <stdio.h>
#define GRACE_CODE "#include <stdio.h>%c#define GRACE_CODE %c%s%c%c#define GRACE() int main(){FILE *Grace= fopen(%cGrace_kid.c%c, %cw%c);if(Grace==NULL) return(1);fprintf(Grace,GRACE_CODE, 10, 34,GRACE_CODE, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10); fclose(Grace); RETURN;}%c#define RETURN return 0%cGRACE()%c/*%cThis program will print its own source when run.%c*/"
#define GRACE() int main(){FILE *Grace= fopen("Grace_kid.c", "w");if(Grace==NULL) return(1);fprintf(Grace,GRACE_CODE, 10, 34,GRACE_CODE, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10); fclose(Grace);RETURN;}
#define RETURN return 0
GRACE()
/*
This program will print its own source when run.
*/