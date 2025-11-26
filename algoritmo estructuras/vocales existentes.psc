Algoritmo Contar_Vocales_existentes
	//definir variables
    Definir cadena1 Como Cadena
    Definir i, longitud1, vocales Como Entero
    Definir caracter1 Como Cadena
	//mostrar varaibles
    vocales <- 0
	
    Escribir "Ingresa una cadena de texto:"
    Leer cadena1
	
    cadena1= Minusculas(cadena1)
	
    longitud1<- Longitud(cadena1)
	
    Para i<- 1 Hasta longitud1 Hacer
        caracter1 <- Subcadena(cadena1,i,i)
		
        Si caracter1 = "a" o caracter1 = "e" o caracter1 = "i" o caracter1 = "o" o caracter1 = "u" Entonces
            vocales <- vocales + 1
        FinSi
    FinPara
	//mostrar resultados
	Escribir "La cantidad de vocales existentes es de: ", vocales
	
FinAlgoritmo