Algoritmo enteromayor_que_0
    Definir numero Como Entero
    Definir numeroTexto, numeroInvertido Como Cadena
	
    Escribir "Ingrese un número entero de 3 dígitos mayor que 0:"
    Leer numero
	
    Si numero < 100 o numero > 999 Entonces
        Escribir "Error: El número debe tener exactamente 3 dígitos y ser mayor que 0."
    Sino
        numeroTexto <- ConvertirATexto(numero)
        numeroInvertido <- (numeroTexto)
		
        Si numeroTexto = numeroInvertido Entonces
            Escribir "El número es capicúa (igual al derecho y al revés)."
        Sino
            Escribir "El número NO es capicúa."
        FinSi
    FinSi
FinAlgoritmo