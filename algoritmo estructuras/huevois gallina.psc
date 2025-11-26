Algoritmo precio_huevo_granja
	//definir variables
    Definir n, i Como Entero
    Definir peso, altura, huevos, calidad Como Real
    Definir sumaCalidad, promedioCalidad, precioKilo Como Real
	//mostrar variables
    sumaCalidad <- 0
	
    Escribir "Ingrese el número de gallinas en la granja:"
    Leer n
	
    Para i<- 1 Hasta n Hacer
        Escribir "=============================="
        Escribir "Gallina ", i
		
        Escribir "Ingrese el peso de la gallina (kg):"
        Leer peso
        Escribir "Ingrese la altura de la gallina (m):"
        Leer altura
        Escribir "Ingrese el número de huevos que pone:"
        Leer huevos
		
        calidad<- (peso * altura)/huevos
		
        Escribir "La calidad de esta gallina es: ", calidad
		
        sumaCalidad <- sumaCalidad + calidad
    FinPara
	
    promedioCalidad <- sumaCalidad / n
	
    Si promedioCalidad >= 15 Entonces
        precioKilo <- 1.2 * promedioCalidad
    SiNo
        Si promedioCalidad > 8 Y promedioCalidad < 15 Entonces
            precioKilo <- 1.0 * promedioCalidad
        SiNo
            precioKilo <- 0.8 * promedioCalidad
        FinSi
    FinSi
	
    //Mostrar resultados
    Escribir "=============================="
    Escribir "Promedio de calidad de las gallinas: ", promedioCalidad
    Escribir "El precio de venta sugerido por kilo de huevos es: ", precioKilo
    Escribir "=============================="
FinAlgoritmo