Algoritmo Censo_Estudios_encuesta
	Definir primaria, secundaria, tecnica, profesional, postgrado, opcion1, total Como Entero
	Definir porcentaje Como real
	
	total <- 0
    primaria <- 0
    secundaria <- 0
    tecnica <- 0
    profesional <- 0
    postgrado <- 0
	
	Repetir
		Limpiar Pantalla
		Escribir "CENSO ESTUDIOS 2025"
		Escribir ""
		Escribir "1.Primaria"
		Escribir "2.Secundaria"
		Escribir "3.Tecnica"
		Escribir "4.Profesional"
		Escribir "5.Postgrado"
		Escribir "0:Salir"
		Escribir ""
		Escribir "Ingrese opcion"
		Leer opcion1
		
		Mientras opcion1 < 0 O opcion1 > 5 Hacer
            Escribir "Opción inválida. Ingrese un número entre 0 y 5:"
            Leer opcion1
        FinMientras
		
		Segun opcion1 Hacer
			1: primaria = primaria+1
			2: secundaria = secundaria+1
			3: tecnica = tecnica+1
			4: profesional = profesional+1
			5: postgrado = postgrado+1
			0: Escribir "Se van a mostrar los resultados"  
				
		Fin Segun
	Hasta Que opcion1=0
	total = primaria+secundaria+tecnica+profesional+postgrado
	
	porcentaje= primaria/total*100
	Escribir "RESULTADOS FINALES (", total, " personas encuestadas):"
	Escribir ""
	Escribir "El ", porcentaje, "% tiene estudios de primaria"
	porcentaje= secundaria/total*100
	Escribir "El ", porcentaje, "% tiene estudios de secundaria"
	porcentaje= tecnica/total*100
	Escribir "El ", porcentaje, "% tiene estudios de tecnica"
	porcentaje= profesional/total*100
	Escribir "El ", porcentaje, "% tiene estudios de profesional"
	porcentaje= postgrado/total*100
	Escribir "El ", porcentaje, "% tiene estudios de postgrado"
	
FinAlgoritmo