Algoritmo leer_hasta_0
	//Definir varaibles
	Definir numero1, sumaPares, sumaImpares Como Entero
	//mostrar variables
	sumaPares = 0
	sumaImpares = 0
	
	Repetir
		Escribir "Digite un número: "
		Leer numero1
		
		Si numero1<>0 Entonces
			Si numero1 mod 2 = 0 Entonces
				sumaPares = sumaPares + numero1
			SiNo
				sumaImpares = sumaImpares + numero1
			FinSi
		FinSi
	Hasta Que numero1 = 0
	
	Escribir "La suma de los números pares es: ", sumaPares
	Escribir "La suma de los números impares es: ", sumaImpares
	
FinAlgoritmo