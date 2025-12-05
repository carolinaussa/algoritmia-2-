Algoritmo  Gasto_Semanal
	
    Definir gastos_semanales Como Real
    Definir suma_gastos, promedio Como Real
    Definir i Como Entero
    
    
    Dimension gastos_semanales[7]
	
	
    suma_gastos = 0
    
    
    Para i <- 0 Hasta 6 Hacer 
        
        Escribir "Ingrese el gasto del Día ", i + 1, ":"
        Leer gastos_semanales[i]
		
        suma_gastos = suma_gastos + gastos_semanales[i]
        
    FinPara
	
    promedio = suma_gastos / 7
	
    Escribir "RESUMEN DE GASTOS SEMANALES"
    
	
    Escribir "Gastos registrados:"
    Para i <- 0 Hasta 6 Hacer
        Escribir "Día ", i + 1, ": ", gastos_semanales[i]
    FinPara
    
	
    Escribir "Suma Total de Gastos: ", suma_gastos
    Escribir "El Gasto Promedio Semanal es: ", promedio
	
	
FinAlgoritmo