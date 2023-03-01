#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main ()
{
	
	char palabra[' '];
	int contador =0 ;
	int esp=0, letras=0;
	int i,j;
	
	
	printf ("Escriba una frase: ");
	fflush(stdin);
	gets(palabra);

	for (i = 97; i <= 122; i++)
	{
		for(j = 0; j < strlen (palabra) ; j++)
		{
			if(palabra [j] == i )
			{
				contador++;			
			}
			
		 } 
		 
		 if (contador == 0)
		 {
		 	continue;
		 }
		 else{
		 	printf("La letra %c se repite: %d \n" , i, contador);
		 	contador = 0;
		 }
	}
		j = strlen (palabra);
	for (i = 0; i <= j; i++ )
	{	 
		if (palabra[i] == ' ')
		{
			esp++;
		}
	}
	 letras = j-esp;
			
			printf("Se encontraron: %d espacios ", esp );
			return 0;
	
}