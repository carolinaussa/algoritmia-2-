Algoritmo  SumaArreglos
	

    Definir i Como Entero;
    Definir A, B, C Como Entero;
    Dimension A[5];
    Dimension B[5];
    Dimension C[5];
	
    Escribir "=== Ingreso de datos para el arreglo A ===";
    Para i =1 Hasta 5 Hacer
        Escribir "A[", i, "] = ";
        Leer A[i];
    FinPara
	
    Escribir "";
    Escribir "=== Ingreso de datos para el arreglo B ===";
    Para i = 1 Hasta 5 Hacer
        Escribir "B[", i, "] = ";
        Leer B[i];
    FinPara
	
   
    Para i = 1 Hasta 5 Hacer
        C[i] = A[i] + B[i];
    FinPara
	
    Escribir "";
    Escribir "=== Arreglo A ===";
    Para i = 1 Hasta 5 Hacer
        Escribir Sin Saltar A[i], "  ";
    FinPara
	
    Escribir "";
    Escribir "=== Arreglo B ===";
    Para i = 1 Hasta 5 Hacer
        Escribir Sin Saltar B[i], "  ";
    FinPara
	
    Escribir "";
    Escribir "=== Arreglo C (A + B) ===";
    Para i = 1 Hasta 5 Hacer
        Escribir Sin Saltar C[i], "  ";
    FinPara
	
FinProceso
