Proceso Menu_Notas
	
    Definir notas Como Real
    Dimension notas[5,5] 
    Definir opcion Como Entero
    Definir alumno Como Entero
    Definir promedio_alumno Como Real
    
    InicializarNotas(notas)
    
    
    Repetir
        
        Escribir "--- MENÚ PRINCIPAL DE NOTAS ---"
        Escribir "Seleccione un aprendiz para ingresar/ver sus notas:"
        Escribir "1: esrudiante 1"
        Escribir "2: estudiante 2"
        Escribir "3: estudiante 3"
        Escribir "4: estudiante 4"
        Escribir "5: estudiante 5"
        Escribir "6: Salir del Programa"
        Escribir "----------------------------------"
        Escribir Sin Saltar "Ingrese su opción (1-6): "
        Leer opcion
        
        Si opcion >= 1 Y opcion <= 5 Entonces
            
            alumno = opcion - 1
            
            
            IngresarNotasAlumno(alumno, notas)
            
            
            promedio_alumno <- CalcularPromedio(alumno, notas)
            
            
            Escribir "--- RESULTADOS DEL APRENDIZ ", alumno + 1, " ---"
            Escribir "Nombre del Aprendiz: Aprendiz ", alumno + 1
            Escribir "Promedio: ", promedio_alumno
            Escribir "Estado: ", DeterminarEstado(promedio_alumno)
            Escribir "------------------------------------------------"
            
            Escribir "Presione ENTER para regresar al menú..."
            Esperar Tecla
            
        SiNo 
            Si opcion = 6 Entonces
                Escribir "Saliendo del programa. "
				Escribir " ..... datos guardados correctamente buelva pronto :D "
            SiNo
                Escribir "Opción no válida. Por favor, ingrese un número del 1 al 6."
            FinSi
        FinSi
        
    Hasta Que opcion = 6
    
FinProceso


SubProceso InicializarNotas(notas)
    Definir i, j Como Entero
    Para i = 0 Hasta 4 Hacer
        Para j = 0 Hasta 4 Hacer 
            notas[i,j] <- 0
        FinPara
    FinPara
FinSubProceso


SubProceso IngresarNotasAlumno(fila, notas)
    Definir j Como Entero
    Escribir "--- Ingreso de Notas para el Aprendiz ", fila + 1, " ---"
    Para j = 0 Hasta 4 Hacer 
        Repetir
            Escribir Sin Saltar "Ingrese la nota ", j + 1, " (0 a 5): "
            Leer notas[fila, j]
            
            Si notas[fila, j] < 0 O notas[fila, j] > 5 Entonces
                Escribir "ERROR: el valor deve tener entre 0 y 5."
            FinSi
        Hasta Que notas[fila, j] >= 0 Y notas[fila, j] <= 5
    FinPara
    Escribir "Notas ingresadas correctamente."
FinSubProceso


Funcion prom = CalcularPromedio(fila, notas)
    Definir j Como Entero
    Definir suma, prom Como Real
    
    suma = 0
    
    Para j = 0 Hasta 4 Hacer 
        suma = suma + notas[fila, j]
    FinPara
    
    prom = suma / 5 
    
FinFuncion

Funcion estado = DeterminarEstado(prom)
    Definir estado Como Cadena
    Si prom >= 3 Entonces
        estado = " Materia aprobada"
    SiNo
        estado = "Materia reprobada"
    FinSi
FinFuncion
	