Algoritmo puntajes_Icfes
	
	dimension nombres[10]
	dimension puntajes[10]
	
	definir nombres Como Caracter
	Definir puntajes, numeroMayor,numeroMenor,sumaPuntajes Como Entero
	definir promedio Como Real
	definir i Como Entero
	
	sumaPuntajes=0
	numeroMayor = -1
	numeroMenor=401
	
	para i=0 hasta 9 Hacer
		
		Escribir "ingrese el nombre del ",i+1," estudiante: "
		leer nombres[i]
		
		Repetir
			Escribir "ingrese su puntaje de ICFES: "
			leer puntajes[i]
			
			sumaPuntajes = sumaPuntajes+puntajes[i]
			
			si puntajes[i] < 1 o puntajes[i]>400 Entonces
				Escribir "el resultado debe ser entre 1 y 400"
			FinSi
		Hasta Que puntajes[i]>=1 y puntajes[i]<= 400
		
		si puntajes[i] > numeroMayor Entonces
			
			numeroMayor = puntajes[i]
		FinSi
		
		si puntajes[i] < numeroMenor Entonces
			numeroMenor = puntajes[i]
		FinSi
		
	FinPara
	
	promedio = sumaPuntajes/10
	
	Escribir "el numero mayor es: ",numeroMayor
	Escribir "el numero menor es: ",numeroMenor
	Escribir "el promedio de puntajes es: ",promedio
	
	
FinAlgoritmo
