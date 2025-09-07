//Autor: Víctor Martínez
Funcion crearCelda(celda, num, fila, col, simbolo)
	celda[0] = num
	celda[1] = fila
	celda[2] = col
	celda[3] = simbolo
FinFuncion


Funcion getCelda(celda, num, celdas)
	Si num = 1 Entonces
		crearCelda(celda, celdas[0,0], celdas[0, 1], celdas[0,2], celdas[0,3])
	FinSi
	Si num = 2 Entonces
		crearCelda(celda, celdas[1,0], celdas[1, 1], celdas[1,2],celdas[1,3])
	FinSi
	Si num = 3 Entonces
		crearCelda(celda, celdas[2,0], celdas[2, 1], celdas[2,2], celdas[2,3])
	FinSi	
	Si num = 4 Entonces
		crearCelda(celda, celdas[3,0], celdas[3, 1], celdas[3,2], celdas[3,3])
	FinSi				
	Si num = 5 Entonces
		crearCelda(celda, celdas[4,0], celdas[4, 1], celdas[4,2], celdas[4,3])
	FinSi	
	Si num = 6 Entonces
		crearCelda(celda, celdas[5,0], celdas[5, 1], celdas[5,2], celdas[5,3])
	FinSi
	Si num = 7 Entonces
		crearCelda(celda, celdas[6,0], celdas[6, 1], celdas[6,2], celdas[6,3])
	FinSi
	Si num = 8 Entonces
		crearCelda(celda, celdas[7,0], celdas[7, 1], celdas[7,2], celdas[7,3])
	FinSi
	Si num = 9 Entonces
		crearCelda(celda, celdas[8,0], celdas[8, 1], celdas[8,2], celdas[8,3])
	FinSi
FinFuncion


Funcion pasarCeldas(tablero, celdas)
	Dimension celda1[4]
	Dimension celda2[4]
	Dimension celda3[4]
	Dimension celda4[4]
	Dimension celda5[4]
	Dimension celda6[4]
	Dimension celda7[4]
	Dimension celda8[4]
	Dimension celda9[4]
	
	crearCelda(celda1, "1", "0", "0",tablero[0,0])
	celdas[0, 0] = celda1[0]
	celdas[0, 1] = celda1[1]
	celdas[0, 2] = celda1[2]	
	celdas[0, 3] = celda1[3]	
	crearCelda(celda2, "2", "0", "1", tablero[0,1])
	celdas[1, 0] = celda2[0]
	celdas[1, 1] = celda2[1]
	celdas[1, 2] = celda2[2]
	celdas[1, 3] = celda2[3]
	crearCelda(celda3, "3", "0", "2", tablero[0,2])
	celdas[2, 0] = celda3[0]
	celdas[2, 1] = celda3[1]
	celdas[2, 2] = celda3[2]
	celdas[2, 3] = celda3[3]
	crearCelda(celda4, "4","1", "0", tablero[1,0])
	celdas[3, 0] = celda4[0]
	celdas[3, 1] = celda4[1]
	celdas[3, 2] = celda4[2]
	celdas[3, 3] = celda4[3]
	crearCelda(celda5, "5", "1", "1", tablero[1,1])
	celdas[4, 0] = celda5[0]
	celdas[4, 1] = celda5[1]
	celdas[4, 2] = celda5[2]
	celdas[4, 3] = celda5[3]
	crearCelda(celda6, "6", "1", "2", tablero[1,2])
	celdas[5, 0] = celda6[0]
	celdas[5, 1] = celda6[1]
	celdas[5, 2] = celda6[2]
	celdas[5, 3] = celda6[3]
	crearCelda(celda7, "7","2", "0",  tablero[2,0])
	celdas[6, 0] = celda7[0]
	celdas[6, 1] = celda7[1]
	celdas[6, 2] = celda7[2]
	celdas[6, 3] = celda7[3]
	crearCelda(celda8, "8","2", "1", tablero[2,1])
	celdas[7, 0] = celda8[0]
	celdas[7, 1] = celda8[1]
	celdas[7, 2] = celda8[2]
	celdas[7, 3] = celda8[3]
	crearCelda(celda9, "9", "2", "2", tablero[2,2])
	celdas[8, 0] = celda9[0]
	celdas[8, 1] = celda9[1]
	celdas[8, 2] = celda9[2]
	celdas[8, 3] = celda9[3]
	
FinFuncion

Funcion crearLinea(linea, orientacion, ficha1, ficha2, ficha3)
	linea[0] = orientacion
	linea[1] = ficha1
	linea[2] = ficha2
	linea[3] = ficha3
FinFuncion


Funcion getLinea(l, num, lineas)
	Si num = 1 Entonces
		crearLinea(l, lineas[0, 0], lineas[0, 1], lineas[0, 2], lineas[0, 3])
	FinSi
	Si num = 2 Entonces
		crearLinea(l, lineas[1, 0], lineas[1, 1], lineas[1, 2], lineas[1, 3])
	FinSi
	Si num = 3 Entonces
		crearLinea(l, lineas[2, 0], lineas[2, 1], lineas[2, 2], lineas[2, 3])
	FinSi	
	Si num = 4 Entonces
		crearLinea(l, lineas[3, 0], lineas[3, 1], lineas[3, 2], lineas[3, 3])
	FinSi				
	Si num = 5 Entonces
		crearLinea(l, lineas[4, 0], lineas[4, 1], lineas[4, 2], lineas[4, 3])
	FinSi	
	Si num = 6 Entonces
		crearLinea(l, lineas[5, 0], lineas[5, 1], lineas[5, 2], lineas[5, 3])
	FinSi
	Si num = 7 Entonces
		crearLinea(l, lineas[6, 0], lineas[6, 1], lineas[6, 2], lineas[6, 3])
	FinSi
	Si num = 8 Entonces
		crearLinea(l, lineas[7, 0], lineas[7, 1], lineas[7, 2], lineas[7, 3])
	FinSi
FinFuncion


Funcion crearTablero(tablero) 
	Para i = 0 Hasta 2 Hacer
		Para j = 0 Hasta 2 Hacer
			tablero[i, j] = getFichaDefault()
		FinPara
	FinPara
FinFuncion


Funcion cambiarTurno(fichaEnJuego Por Referencia) 
	Si fichaEnJuego = "x" Entonces
		fichaEnJuego = "0"
	SiNo
		fichaEnJuego = "x"
	FinSi
FinFuncion


Funcion actualizarTablero(tablero, ficha, fila, col)
	tablero[fila, col] = ficha
FinFuncion


Funcion imprimirTablero(tablero)
	Para i = 0 Hasta 2 Hacer
		Para j = 0 Hasta 2 Hacer
			Escribir " " + tablero[i,j] + " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion


Funcion ficha = getFichaDefault
	ficha = "_"
FinFuncion


Funcion ganador = hayGanador(linea)
	ganador = linea[1] = linea[2] Y linea[1] = linea[3] Y linea[1] <> getFichaDefault()
FinFuncion


Funcion ok = completo(tablero) 
	cantidad = 0
	Para i = 0 Hasta 2 Hacer
		para j = 0 Hasta 2 Hacer
			Si tablero[i, j] = getFichaDefault() Entonces
				cantidad = cantidad + 1
			FinSi
		FinPara
	FinPara
	ok = cantidad = 0
FinFuncion


Funcion pasarLineas(tablero, lineas)
	Dimension linea1[4]
	Dimension linea2[4]
	Dimension linea3[4]
	Dimension linea4[4]
	Dimension linea5[4]
	Dimension linea6[4]
	Dimension linea7[4]
	Dimension linea8[4]

	crearLinea(linea1, "HORIZONTAL", tablero[0,0], tablero[0,1],tablero[0,2])
	lineas[0, 0] = linea1[0]
	lineas[0, 1] = linea1[1]
	lineas[0, 2] = linea1[2]
	lineas[0, 3] = linea1[3]
	
	crearLinea(linea2, "HORIZONTAL", tablero[1,0], tablero[1,1],tablero[1,2])
	lineas[1, 0] = linea2[0]
	lineas[1, 1] = linea2[1]
	lineas[1, 2] = linea2[2]
	lineas[1, 3] = linea2[3]
	
	crearLinea(linea3, "HORIZONTAL", tablero[2,0], tablero[2,1],tablero[2,2])
	lineas[2, 0] = linea3[0]
	lineas[2, 1] = linea3[1]
	lineas[2, 2] = linea3[2]
	lineas[2, 3] = linea3[3]
	
	crearLinea(linea4, "VERTICAL", tablero[0,0], tablero[1,0],tablero[2,0])
	lineas[3, 0] = linea4[0]
	lineas[3, 1] = linea4[1]
	lineas[3, 2] = linea4[2]
	lineas[3, 3] = linea4[3]
	
	crearLinea(linea5, "VERTICAL", tablero[0,1], tablero[1,1],tablero[2,1])
	lineas[4, 0] = linea5[0]
	lineas[4, 1] = linea5[1]
	lineas[4, 2] = linea5[2]
	lineas[4, 3] = linea5[3]
	
	crearLinea(linea6, "VERTICAL", tablero[0,2], tablero[1,2],tablero[2,2])
	lineas[5, 0] = linea6[0]
	lineas[5, 1] = linea6[1]
	lineas[5, 2] = linea6[2]
	lineas[5, 3] = linea6[3]
	
	crearLinea(linea7, "DIAGONAL1", tablero[0,0], tablero[1,1],tablero[2,2])
	lineas[6, 0] = linea7[0]
	lineas[6, 1] = linea7[1]
	lineas[6, 2] = linea7[2]
	lineas[6, 3] = linea7[3]
	
	crearLinea(linea8, "DIAGONAL2", tablero[0,2], tablero[1,1],tablero[2,0])
	lineas[7, 0] = linea8[0]
	lineas[7, 1] = linea8[1]
	lineas[7, 2] = linea8[2]
	lineas[7, 3] = linea8[3]
FinFuncion


Funcion ok = finalizo(actual, tablero)
	Dimension lineas[8, 4]
	pasarLineas(tablero, lineas)
	ganador = Falso
	i = 1
	Mientras  i<=8 Y No ganador Hacer
		getLinea(actual, i, lineas)
		Si hayGanador(actual) Entonces
			ganador = Verdadero
		FinSi
		i=i+1
	FinMientras

	ok = ganador o completo(tablero)
FinFuncion


Funcion ok = isCeldaOcupada(n, tablero)
	Dimension celdas[9, 4]
	Dimension celda[4]
	num = ConvertirANumero(n)
	pasarCeldas(tablero, celdas)
	getCelda(celda, num, celdas)
	ficha = celda[3]
	ok = (num >= 1 Y num <= 9) Y ficha = getFichaDefault()
FinFuncion


Funcion ok = isInputValido(n)
	Dimension  permitido[9]

	Para i = 0 Hasta 8 Hacer
		permitido[i] = i+1
	FinPara

	i = 0
	ok = Falso
	Mientras i <= 8 Y No ok Hacer
		num = ConvertirATexto(permitido[i])
		Si num = n Entonces
			ok = Verdadero
		FinSi
		i = i + 1
	FinMientras
FinFuncion


Funcion notificar(linea)
	Escribir "Ganastes!"
	Escribir  "Orientación: ", linea[0] 
	Escribir "Fichas: " Sin Saltar
	fichas = ""
	para i = 1 Hasta 3 Hacer
		si fichas = "" Entonces
			fichas = linea[i] 
		sino 
			fichas = fichas + " - " + linea[i]
		FinSi
	FinPara
	Escribir fichas
FinFuncion



Funcion  ok = valido(num, tablero)
	ok = isInputValido(num) y isCeldaOcupada(num, tablero)
FinFuncion

Funcion  colocarJugador(tablero, fichaEnJuego)
	Dimension celdas[9,4]
	Dimension celda[4]
	
	Repetir
		Escribir "Inserte (1-9)"
		Leer num
	Hasta Que valido(num, tablero)
	
	pasarCeldas(tablero, celdas)
	getCelda(celda, num, celdas)
	actualizarTablero(tablero, fichaEnJuego, celda[1], celda[2])
FinFuncion


Algoritmo TicTac
	Dimension tablero[3, 3]
	Dimension actual[4]

	crearTablero(tablero)
	fichaEnJuego = "0"
	Escribir "Turno: ",fichaEnJuego
	imprimirTablero(tablero)
	Mientras  No finalizo(actual, tablero) Hacer
		colocarJugador(tablero, fichaEnJuego)
		cambiarTurno(fichaEnJuego)			
		Escribir "Turno: ",fichaEnJuego
		imprimirTablero(tablero)
	FinMientras

	Si hayGanador(actual) Entonces		
		notificar(actual)
	SiNo
		Si completo(tablero) Entonces
			Escribir "Empataron!"			
		FinSi		
	FinSi
FinAlgoritmo