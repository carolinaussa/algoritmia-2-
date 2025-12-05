Algoritmo  Citas_Medicas
	
    Definir MATRIZ_CITAS Como Caracter
    Definir HORARIO Como Caracter
    
    Definir CITA_MAX, citas_asignadas, opcion_menu, i Como Entero
    Definir cedula_ingresada, hora_consulta, cedula_consulta Como Caracter
    Definir cita_disponible, cita_encontrada Como Logico
    
    CITA_MAX = 8
    
    Dimension MATRIZ_CITAS[8, 2]
    Dimension HORARIO[8]
    
    citas_asignadas = 0
    
    HORARIO[0] = "7 am"
    HORARIO[1] = "8 am"
    HORARIO[2] = "9 am"
    HORARIO[3] = "10 am"
    HORARIO[4] = "2 pm"
    HORARIO[5] = "3 pm"
    HORARIO[6] = "4 pm"
    HORARIO[7] = "5 pm"
    
    Para i <- 0 Hasta CITA_MAX - 1 Hacer
        MATRIZ_CITAS[i, 0] = HORARIO[i]
        MATRIZ_CITAS[i, 1] = "LIBRE"
    FinPara
    
    Repetir
        Escribir "CITAS ASIGNADAS HOY: ", citas_asignadas, " / ", CITA_MAX
        Escribir "MENÚ PRINCIPAL:"
        Escribir "1. Asignar Nueva Cita"
        Escribir "2. Consultar Citas Asignadas "
        Escribir "3. Consultar Cita por Cédula. "
        Escribir "4. Consultar Cita por Hora"
        Escribir "5. Salir del Sistema"
        Escribir "Ingrese su opción "
        Leer opcion_menu;
        
        Segun opcion_menu Hacer
            1:
                Escribir "--- ASIGNACIÓN DE CITA ---";
                
                Si citas_asignadas < CITA_MAX Entonces
                    
                    cita_disponible = Falso
                    i = 0
                    Mientras (i < CITA_MAX) Y (cita_disponible = Falso) Hacer
                        Si MATRIZ_CITAS[i, 1] = "LIBRE" Entonces
                            cita_disponible <- Verdadero
                            
                            Escribir "Hay disponibilidad a las ", MATRIZ_CITAS[i, 0], "."
                            Escribir "Ingrese el número de cédula del paciente:"
                            Leer cedula_ingresada
                            
                            MATRIZ_CITAS[i, 1] = cedula_ingresada
                            citas_asignadas = citas_asignadas + 1
                            Escribir "Cita asignada para el paciente ", cedula_ingresada, " a las ", MATRIZ_CITAS[i, 0], "."
                            
                        FinSi
                        i <- i + 1;
                    FinMientras
                    
                SiNo
                    Escribir "La agenda del día está completa. No hay más citas disponibles.";
                FinSi
                
            2:
                Escribir Sin Saltar "Hora  | Paciente"
                Para i = 0 Hasta CITA_MAX - 1 Hacer
                    Escribir Sin Saltar MATRIZ_CITAS[i, 0], " | ", MATRIZ_CITAS[i, 1]
                    Escribir ""
                FinPara
                
            3:
                Escribir "CONSULTA POR CÉDULA "
                Escribir "Ingrese el número de cédula a consultar:"
                Leer cedula_consulta
                
                cita_encontrada = Falso
                i <- 0
                
                Mientras (i < CITA_MAX) Y (cita_encontrada = Falso) Hacer 
                    Si MATRIZ_CITAS[i, 1] = cedula_consulta Entonces
                        Escribir "? CITA ENCONTRADA: Paciente ", cedula_consulta, " tiene cita asignada a las ", MATRIZ_CITAS[i, 0], "."
                        cita_encontrada <- Verdadero
                    FinSi
                    i <- i + 1
                FinMientras
                
                Si cita_encontrada = Falso Entonces
                    Escribir "CITA NO ENCONTRADA: La cédula ", cedula_consulta, " no tiene citas  hoy."
                FinSi
                
            4:
                Escribir "CONSULTA POR HORA "
                Escribir "Ingrese la hora a consultar: "
                Leer hora_consulta
                
                cita_encontrada <- Falso;
                i <- 0
                
                Mientras (i < CITA_MAX) Y (cita_encontrada = Falso) Hacer
                    Si MATRIZ_CITAS[i, 0] = hora_consulta Entonces
                        Escribir "La cita de las ", hora_consulta, " está asignada a la Cédula: ", MATRIZ_CITAS[i, 1], ".";
                        cita_encontrada = Verdadero
                    FinSi
                    i <- i + 1;
                FinMientras
                
                Si cita_encontrada = Falso Entonces
                    Escribir "No se encontró la hora ", hora_consulta, " en la agenda."
                FinSi
                
            5:
                Escribir "Saliendo del sistema de gestión de citas. ¡Hasta pronto!"
                
            De Otro Modo:
                Escribir "OPCIÓN INVÁLIDA. Por favor, ingrese un número del 1 al 5."
        FinSegun
        
        
    Hasta Que opcion_menu = 5

FinAlgoritmo