Algoritmo NumerosPares
	
    Definir numeros, i Como Entero
    
    
    Dimension numeros[11]
    
    Escribir "Ingreso de datos "
    Para i = 1 Hasta 10 Hacer
        Escribir "Ingrese el número de la posición ", i, ":"
        Leer numeros[i]
    FinPara
    
    Escribir " "
    Escribir " Numeros pares encontrados"
    
    Para i = 1 Hasta 10 Hacer
        Si numeros[i] MOD 2 = 0 Entonces
            Escribir "El número ", numeros[i], " es par."
        FinSi
    FinPara
    
FinAlgoritmo