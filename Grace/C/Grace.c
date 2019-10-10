#include<stdio.h>
#include<stdlib.h>
static char sym[] = "\n\t\\\"";
#define FT() int main(){FILE*f;f=fopen("Grace_kid.c", "w");char*str="#include<stdio.h>%c#include<stdlib.h>%cstatic char sym[] = %c%cn%ct%c%c%c%c%c;%c#define FT() int main(){FILE*f;f=fopen(%cGrace_kid.c%c, %cw%c);char*str=%c%s%c;fprintf(f,str,sym[0], sym[0], sym[3], sym[2], sym[2], sym[2], sym[2], sym[2], sym[3], sym[3], sym[0],sym[3], sym[3], sym[3], sym[3],sym[3], str, sym[3], sym[0], sym[0]);return(0);}%cFT();%c";fprintf(f,str,sym[0], sym[0], sym[3], sym[2], sym[2], sym[2], sym[2], sym[2], sym[3], sym[3], sym[0],sym[3], sym[3], sym[3], sym[3],sym[3], str, sym[3], sym[0], sym[0]);return(0);}
FT();
