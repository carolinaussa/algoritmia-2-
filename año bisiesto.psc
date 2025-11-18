Algoritmo esBisiesto
    Definir mes, year Como Entero
    Definir bisiesto Como Logico
    Definir diasMes Como Entero
	
    // Solicitar datos
    Escribir "Ingrese el mes de nacimiento (1-12):"
    Leer mes
    Escribir "Ingrese el year de nacimiento:"
    Leer year
	
    // Validar mes
    Si mes < 1 O mes > 12 Entonces
        Escribir "Mes no válido. Debe estar entre 1 y 12."
		
	FinSi
	
	// Determinar si el year es bisiesto
	Bisiesto <- Falso
	Si (year MOD 4 = 0 Y year MOD 100 <> 0) O (year MOD 400 = 0) Entonces
		Bisiesto <- Verdadero
	FinSi
	
	// Determinar días del mes
	Segun mes Hacer
		Caso 1, 3, 5, 7, 8, 10, 12:
			diasMes <- 31
		Caso 4, 6, 9, 11:
			diasMes <- 30
		Caso 2:
			Si Bisiesto Entonces
				diasMes <- 29
			Sino
				diasMes <- 28
			FinSi
	FinSegun
	
	// Mostrar resultados
	Si Bisiesto Entonces
		Escribir "El year ", year, " es bisiesto."
	Sino
		Escribir "El year ", year, " no es bisiesto."
	FinSi
	Escribir "El mes ", mes, " tiene ", diasMes, " días."
FinAlgoritmo