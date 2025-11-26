Algoritmo reloj_digital_PSEINT
	//definir variables
	Definir hora, minuto, segundo1 Como Entero
	
	//mostrar variables
	hora = 0
	minuto = 0
	segundo1 = 0
	Mientras hora<24 Hacer
		//Borrar pantalla para que se actualize el reloj por cada sugundo
		Borrar Pantalla
		Escribir "-------------------------"
		Escribir "     RELOJ DIGITAL       "
		Escribir "-------------------------"
		
		// se pone el <10 porque esto ayuda a que el reloj quede con ceros a la izquierda y se acomode pareciendo un reloj real
		Si hora<10 Entonces
			Escribir Sin Saltar "0", hora, ":"
		SiNo
			Escribir Sin Saltar hora, ":"
		FinSi
		
		Si minuto< 10 Entonces
			Escribir Sin Saltar "0", minuto, ":"
		SiNo
			Escribir Sin Saltar minuto, ":"
		FinSi
		
		Si segundo1 < 10 Entonces
			Escribir "0", segundo1
		SiNo
			Escribir segundo1
		FinSi
		
		Esperar 1 Segundos   //Para que genero los segundos a tiempo real
		
		// Actualizar tiempo
		segundo1 = segundo1 + 1
		
		Si segundo1 = 60 Entonces
			segundo1 = 0
			minuto = minuto + 1
		FinSi
		
		Si minuto = 60 Entonces
			minuto = 0
			hora = hora + 1
		FinSi
		
	FinMientras
	
FinAlgoritmo