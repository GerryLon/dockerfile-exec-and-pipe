/*
 * main.c
 */

#include <stdio.h>
#include <time.h>
#include <unistd.h>

int main() {
    time_t timep;
    struct tm *p;
	
	while (1) {
    	time(&timep);
    	p = gmtime(&timep);
		printf("now is: %d-%02d-%02d %02d:%02d:%02d\n", 1900 + p->tm_year, 1 + p->tm_mon, p->tm_mday,
				8 + p->tm_hour, p->tm_min, p->tm_sec);
		sleep(1);
	}
}



