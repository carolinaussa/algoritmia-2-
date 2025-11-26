Algoritmo Mejor_valor
	
	Definir x, j, z, mejorZ Como Real
	Definir mejorX, mejorY Como Real
	Definir i Como Entero
	
	mejorZ = -99999
	
	Para i = 1 Hasta 100 Con Paso 1 Hacer
		
		x = Aleatorio(-5, 5)
		j = Aleatorio(-5, 5)
		
		// Calcular Z = x^2 + y^2
		z = (x * x) + (j * j)
		
		// Evaluar si Z es el mejor
		Si z > mejorZ Entonces
			mejorZ = z
			mejorX = x
			mejorY = j
		FinSi
		
	FinPara
	
	Escribir "El mayor valor de Z es: ", mejorZ
	Escribir "Obtenido con x=", mejorX, " y y=", mejorY
	
FinAlgoritmo