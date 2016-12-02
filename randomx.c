#include<stdio.h>
#include<stdlib.h>

void shuffle(int *array, size_t n)
{
	    if (n > 1) 
{
	        size_t i;
	                for (i = 0; i < n - 1; i++) 
	{
	          size_t j = i + rand() / (RAND_MAX / (n - i) + 1);
	                    int t = array[j];
	                              array[j] = array[i];
	                                        array[i] = t;
}
    }
}


int main( int argc, char*argv[] ){
int k = argc;
int polje[k];
int i;

printf("radim..\n");
printf("za %d",k);
for(i=0;i++;i<k)
	polje[i]=i+1;

shuffle(polje,k);

for(i=0;i++;i<k)
	printf("%d ",polje[i]);

return 0;
}
