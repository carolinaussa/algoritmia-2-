Algoritmo Identificar_Tipo_Triangulo
    Definir lado1, lado2, lado3 Como Real
	
    // Solicitar datos
    Escribir "Ingrese la longitud del primer lado:"
    Leer lado1
    Escribir "Ingrese la longitud del segundo lado:"
    Leer lado2
    Escribir "Ingrese la longitud del tercer lado:"
    Leer lado3
	
    // Validar que sean longitudes positivas
    Si lado1 <= 0 O lado2 <= 0 O lado3 <= 0 Entonces
		
        Escribir "Error: Todos los lados deben ser mayores que cero."
    Sino
	finsi
	// Validar que puedan formar un triángulo
	Si (lado1 + lado2 <= lado3) O (lado1 + lado3 <= lado2) O (lado2 + lado3 <= lado1) Entonces
		Escribir "Error: Las longitudes ingresadas no pueden formar un triángulo."
	Sino
		// Identificar tipo de triángulo
		Si lado1 = lado2 Y lado2 = lado3 Entonces
			Escribir "El triángulo es EQUILÁTERO."
		Sino Si lado1 = lado2 O lado1 = lado3 O lado2 = lado3 Entonces
				Escribir "El triángulo es ISÓSCELES."
			Sino
				Escribir "El triángulo es ESCALENO."
			FinSi
		FinSi
	FinSi
FinAlgoritmo