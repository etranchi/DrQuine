#include<stdio.h>
#include<stdlib.h>
#define COUCOU 0
#define AUREVOIR 1
static char sym[] = "\n\t\\\"";
/*
	Commentaire
*/
#define FT() int main(){FILE*f;f=fopen("Grace_kid.c", "w");char*str="#include<stdio.h>%c#include<stdlib.h>%c#define COUCOU 0%c#define AUREVOIR 1%cstatic char sym[] = %c%cn%ct%c%c%c%c%c;%c/*%c%cCommentaire%c*/%c#define FT() int main(){FILE*f;f=fopen(%cGrace_kid.c%c, %cw%c);char*str=%c%s%c;fprintf(f,str,sym[0], sym[0],sym[0], sym[0], sym[3], sym[2], sym[2], sym[2], sym[2], sym[2], sym[3], sym[3], sym[0],sym[0], sym[1], sym[0], sym[0],sym[3], sym[3], sym[3], sym[3],sym[3], str, sym[3], sym[0], sym[0]);return(0);}%cFT();%c";fprintf(f,str,sym[0], sym[0],sym[0], sym[0], sym[3], sym[2], sym[2], sym[2], sym[2], sym[2], sym[3], sym[3], sym[0],sym[0], sym[1], sym[0], sym[0],sym[3], sym[3], sym[3], sym[3],sym[3], str, sym[3], sym[0], sym[0]);return(0);}
FT();
