Algoritmo  Habitantes_conjunto
	
    Definir habitantes Como Entero
    
    Definir opcion_menu, i, j, k, torre_cons, piso_cons Como Entero
    Definir total_habitantes, suma_torre, total_piso, cont_apartamentos Como Entero
    Definir promedio_piso, promedio_torre Como Real
	
    Dimension habitantes[3, 5, 4]
	
    
    Para i = 0 Hasta 2 Hacer
        Para j = 0 Hasta 4  Hacer
            Para k = 0 Hasta 3 Hacer
                habitantes[i, j, k] = 0
            FinPara
        FinPara
    FinPara
	
    Repetir
        Escribir "MENU CONJUNTO RESIDENCIAL"
        Escribir "1. Agregar habitantes a cada apartamento (Aleatorio 1-5)"
        Escribir "2. Consultar número de habitantes por apartamento"
        Escribir "3. Consultar la cantidad total de habitantes del conjunto"
        Escribir "4. Consultar el promedio de habitantes por piso de cada torre"
        Escribir "5. Consultar el promedio de habitantes por torre"
        Escribir "6. Salir"
        Escribir "Ingrese Opcion:"
        Leer opcion_menu
        
        Limpiar Pantalla
        
        Segun opcion_menu Hacer
            1:
                Escribir "GENERANDO HABITANTES ALEATORIOS "
                Para i = 0 Hasta 2 Con Paso 1 Hacer
                    Para j = 0 Hasta 4 Con Paso 1 Hacer
                        Para k = 0 Hasta 3 Con Paso 1 Hacer
                            habitantes[i, j, k] = azar(5) + 1
                        FinPara
                    FinPara
                FinPara
                Escribir " Habitantes generados y agregados a todos los apartamentos."
                
            2:
                Escribir "2. CONSULTAR HABITANTES POR APARTAMENTO "
                Escribir "Ingrese el número de Torre:"
                Leer torre_cons
                Escribir "Ingrese el número de Piso:"
                Leer piso_cons
                
                Si (torre_cons >= 1 Y torre_cons <= 3) Y (piso_cons >= 1 Y piso_cons <= 5) Entonces
                    Escribir "Apartamentos en Torre ", torre_cons, ", Piso ", piso_cons, ":"
                    Para k <- 0 Hasta 3 Con Paso 1 Hacer
                        Escribir "Apartamento ", k + 1, ": ", habitantes[torre_cons - 1, piso_cons - 1, k], " habitantes."
                    FinPara
                SiNo
                    Escribir "Torre o Piso inválido. Ingrese valores dentro del rango "
                FinSi
                
            3:
                Escribir "3. CONSULTAR TOTAL DE HABITANTES DEL CONJUNTO "
                total_habitantes = 0
                
                Para i = 0 Hasta 2 Hacer
                    Para j = 0 Hasta 4 Hacer
                        Para k = 0 Hasta 3 Hacer
                            total_habitantes = total_habitantes + habitantes[i, j, k]
                        FinPara
                    FinPara
                FinPara
                
                Escribir "La cantidad TOTAL de habitantes en el conjunto es: ", total_habitantes, "."
                
            4:
                Escribir "4. PROMEDIO DE HABITANTES POR PISO DE CADA TORRE "
                
                Para i = 0 Hasta 2 Hacer
                    Escribir "TORRE ", i + 1, ":"
                    
                    Para j = 0 Hasta 4 Hacer
                        total_piso = 0
                        cont_apartamentos = 0
                        
                        Para k = 0 Hasta 3 Hacer
                            total_piso = total_piso + habitantes[i, j, k]
                            cont_apartamentos = cont_apartamentos + 1
                        FinPara
                        
                        Si cont_apartamentos > 0 Entonces
                            promedio_piso <- total_piso / cont_apartamentos
                            Escribir "  Piso ", j + 1, ": ", promedio_piso
                        SiNo
                            Escribir "  Piso ", j + 1, ": (Datos no disponibles)"
                        FinSi
                    FinPara
                FinPara
                
            5:
                Escribir "5. PROMEDIO DE HABITANTES POR TORRE"
                
                Para i = 0 Hasta 2 Con Paso 1 Hacer
                    suma_torre = 0
                    cont_apartamentos = 0
                    
                    Para j = 0 Hasta 4 Hacer
                        Para k = 0 Hasta 3 Hacer
                            suma_torre = suma_torre + habitantes[i, j, k]
                            cont_apartamentos = cont_apartamentos + 1
                        FinPara
                    FinPara
                    
                    Si cont_apartamentos > 0 Entonces
                        promedio_torre = suma_torre / cont_apartamentos
                        Escribir "Torre ", i + 1, " (", suma_torre, " hab.): Promedio por apartamento: ", promedio_torre
                    SiNo
                        Escribir "Torre ", i + 1, ": (Datos no disponibles)"
                    FinSi
                FinPara
                
            6:
                Escribir "Saliendo del sistema"
                
            De Otro Modo:
                Escribir "Opción no válida"
                
        FinSegun
		
    Hasta Que opcion_menu = 6
	
FinAlgoritmo