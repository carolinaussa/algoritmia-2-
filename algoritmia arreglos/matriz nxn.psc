Algoritmo  Ejercicio7
    Definir N, i, j Como Entero
    Definir matriz Como Entero
	
    Escribir "Ingrese el tamaño N de la matriz NxN: "
    Leer N
	
    Dimension matriz[N, N]
    Definir sumaDiagonal Como Entero
    sumaDiagonal = 0
	
    Para i = 1 Hasta N
        Para j = 1 Hasta N
            Escribir "Ingrese el valor en la posición [", i, ",", j, "]: "
            Leer matriz[i, j]
			
            Si i = j Entonces
                sumaDiagonal <- sumaDiagonal + matriz[i, j]
            FinSi
        FinPara
    FinPara
	
    Escribir "La suma de la diagonal principal es: ", sumaDiagonal
FinProceso