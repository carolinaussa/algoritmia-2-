Algoritmo cantidad_letras_paises
	
	dimension paises[5]
	dimension longitudPais[5]
	
	definir i,longitudPais Como Entero
	Definir paises Como Caracter
	
	
	para i=0 Hasta 4 Hacer
		
		Escribir "ingrese un pais: "
		leer paises[i]
		
		longitudPais[i] = Longitud(paises[i])
		
	FinPara
	
	Escribir "PAISES -------- NUMERO DE LETRAS"
	para i=0 Hasta 4 hacer 
		
		Escribir paises[i]," ---------------- ",longitudPais[i]
		
	FinPara
	
FinAlgoritmo