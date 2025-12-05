algoritmo Analisis_Temperatura
	
    Definir matriz_temperaturas Como Real
    Definir dias_semana Como Caracter
    Definir i, j, opcion_menu, dia_consulta Como Entero
    Definir temp_mayor, dia_mayor Como Entero
    Definir temp_min_dia, temp_max_dia Como Real
	
	dimension matriz_temperaturas[7,2]
	dimension dias_semana[7]
	
	
    dias_semana[0] = "Lunes"
    dias_semana[1] = "Martes"
    dias_semana[2] = "Miércoles"
    dias_semana[3] = "Jueves"
    dias_semana[4] = "Viernes"
    dias_semana[5] = "Sábado"
    dias_semana[6] = "Domingo"
    
    temp_mayor = 0
    dia_mayor = -1
    
    
    Para i = 0 Hasta 6 Hacer 
        
        Escribir " Datos para el día: ", dias_semana[i]
        
		
        Escribir " Ingrese la Temperatura minima:"
        Leer temp_min_dia
        matriz_temperaturas[i, 0] = temp_min_dia
        
		Escribir "  Ingrese la Temperatura MÁXIMA:"
		Leer temp_max_dia
        
        matriz_temperaturas[i, 1] = temp_max_dia
        
		
        Si temp_max_dia > temp_mayor Entonces
            temp_mayor = temp_max_dia
            dia_mayor = i          
        FinSi
        
    FinPara
	
    
    Repetir
        Escribir "             MENÚ DE CONSULTAS                     "
        Escribir "1. Consultar el día con la mayor Temperatura "
        Escribir "2. Consultar Temperaturas para un día específico."
        Escribir "3. Salir."
        Escribir "Ingrese su opción :"
        Leer opcion_menu
        
        Segun opcion_menu Hacer
            1:
                Si dia_mayor <> -1 Entonces
                    Escribir "El día ", dias_semana[dia_mayor], " la temperatura máxima fue de ", temp_mayor, " grados"
                FinSi
				
            2:
                Escribir "Seleccione el día para consultar (1=Lunes a 7=Domingo):"
                Leer dia_consulta;
                
                Si (dia_consulta >= 1 Y dia_consulta <= 7) Entonces
                    i = dia_consulta - 1
                    
                    Escribir "Temperaturas para el día ", dias_semana[i], ":"
                    Escribir "  Temperatura MÍNIMA: ", matriz_temperaturas[i, 0], " grados."
                    Escribir "  Temperatura MÁXIMA: ", matriz_temperaturas[i, 1], " grados."
                SiNo
                    Escribir "Día no válido. ingrese un número entre 1 y 7."
                FinSi
                
            3:
                Escribir "Finalizando el programa"
                
            De Otro Modo:
                Escribir "Opción no válida. Intente de nuevo."
                
        FinSegun
        
        
    Hasta Que opcion_menu = 3

Finalgoritmo

