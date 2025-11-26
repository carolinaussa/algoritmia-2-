Algoritmo votaciones_elecciones_automatico_
	//definir variables
	Definir opcion1, cerrar, votos1, votos2, votos3, votosBlanco, totalVotos Como Entero
	//mostrar variables
	votos1= 0
    votos2= 0
    votos3= 0
    votosBlanco= 0
    totalVotos= 0
	
	Repetir
		Limpiar Pantalla
        Escribir "Simulando votación automática..."
        Escribir "Votantes registrados: ", totalVotos
		
        opcion1 = Aleatorio(1,4)    
        Escribir "El votante eligió la opción: ", opcion1
		
        Segun opcion1 Hacer
            1:
                votos1 = votos1 + 1
            2:
                votos2 = votos2 + 1
            3:
                votos3 = votos3 + 1
            4:
                votosBlanco = votosBlanco + 1
        FinSegun
		
        totalVotos = totalVotos + 1
		
    Hasta Que totalVotos = 50
	//mostrar resultados
    Borrar Pantalla
    Escribir "===== RESULTADOS FINALES ====="
    Escribir "Personas que votaron: ", totalVotos
    Escribir "Numero de votos a Candidato Uno: ", votos1
    Escribir "Numero de votos a candidato Dos: ", votos2
    Escribir "Numero de votos a candidato Tres: ", votos3
    Escribir "Numero de votos en Blanco: ", votosBlanco
    Escribir "==============================="
	
FinAlgoritmo