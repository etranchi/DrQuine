#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
int main() {
	int i = 5;
	FILE*f;
	char *name = "Sully_1.c";
	f=fopen(name, "w");
	fprintf(f, "%s", "int main() {printf(\"%s\",\"coucou\");return (0);}");
	fclose(f);
	system("gcc Sully_1.c -o Sully_1");
	printf("%s", "coucou");
	execl("./Sully_1", "Sully_1", NULL);
	return(0);
}