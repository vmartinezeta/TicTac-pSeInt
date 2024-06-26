//Autor: V�ctor Mart�nez
Funcion crearLinea(linea, orientacion, ficha1, ficha2, ficha3)
	linea[0, 0] = orientacion
	linea[1, 0] = ficha1
	linea[1, 1] = ficha2
	linea[1, 2] = ficha3
FinFuncion


Funcion getLinea(l, num , lineas)
	Si num = 1 Entonces
		crearLinea(l, lineas[0, 0, 0], lineas[0, 1, 0], lineas[0, 1, 1], lineas[0, 1, 2])
	FinSi
	Si num = 2 Entonces
		crearLinea(l, lineas[1, 0, 0], lineas[1, 1, 0], lineas[1, 1, 1], lineas[1, 1, 2])
	FinSi
	Si num = 3 Entonces
		crearLinea(l, lineas[2, 0, 0], lineas[2, 1, 0], lineas[2, 1, 1], lineas[2, 1, 2])
	FinSi	
	Si num = 4 Entonces
		crearLinea(l, lineas[3, 0, 0], lineas[3, 1, 0], lineas[3, 1, 1], lineas[3, 1, 2])
	FinSi				
	Si num = 5 Entonces
		crearLinea(l, lineas[4, 0, 0], lineas[4, 1, 0], lineas[4, 1, 1], lineas[4, 1, 2])
	FinSi	
	Si num = 6 Entonces
		crearLinea(l, lineas[5, 0, 0], lineas[5, 1, 0], lineas[5, 1, 1], lineas[5, 1, 2])
	FinSi
	Si num = 7 Entonces
		crearLinea(l, lineas[6, 0, 0], lineas[6, 1, 0], lineas[6, 1, 1], lineas[6, 1, 2])
	FinSi
	Si num = 8 Entonces
		crearLinea(l, lineas[7, 0, 0], lineas[7, 1, 0], lineas[7, 1, 1], lineas[7, 1, 2])
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
		fichaEnJuego = "O"
	SiNo
		fichaEnJuego = "x"
	FinSi
FinFuncion


Funcion actualizarTablero(tablero, ficha, posicion)
	i = posicion[0]
	j = posicion[1]
	tablero[i, j] = ficha
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
	ganador = linea[1,0] = linea[1,1] Y linea[1,1] = linea[1,2] Y linea[1, 0] <> getFichaDefault()
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
	Dimension linea1[2, 3]
	Dimension linea2[2, 3]
	Dimension linea3[2, 3]
	Dimension linea4[2, 3]
	Dimension linea5[2, 3]
	Dimension linea6[2, 3]
	Dimension linea7[2, 3]
	Dimension linea8[2, 3]

	crearLinea(linea1, "HORIZONTAL", tablero[0,0], tablero[0,1],tablero[0,2])
	lineas[0, 0, 0] = linea1[0, 0]
	lineas[0, 1, 0] = linea1[1, 0]
	lineas[0, 1, 1] = linea1[1, 1]
	lineas[0, 1, 2] = linea1[1, 2]
	
	crearLinea(linea2, "HORIZONTAL", tablero[1,0], tablero[1,1],tablero[1,2])
	lineas[1, 0, 0] = linea2[0, 0]
	lineas[1, 1, 0] = linea2[1, 0]
	lineas[1, 1, 1] = linea2[1, 1]
	lineas[1, 1, 2] = linea2[1, 2]
	
	crearLinea(linea3, "HORIZONTAL", tablero[2,0], tablero[2,1],tablero[2,2])
	lineas[2, 0, 0] = linea3[0, 0]
	lineas[2, 1, 0] = linea3[1, 0]
	lineas[2, 1, 1] = linea3[1, 1]
	lineas[2, 1, 2] = linea3[1, 2]
	
	crearLinea(linea4, "VERTICAL", tablero[0,0], tablero[1,0],tablero[2,0])
	lineas[3, 0, 0] = linea4[0, 0]
	lineas[3, 1, 0] = linea4[1, 0]
	lineas[3, 1, 1] = linea4[1, 1]
	lineas[3, 1, 2] = linea4[1, 2]
	
	crearLinea(linea5, "VERTICAL", tablero[0,1], tablero[1,1],tablero[2,1])
	lineas[4, 0, 0] = linea5[0, 0]
	lineas[4, 1, 0] = linea5[1, 0]
	lineas[4, 1, 1] = linea5[1, 1]
	lineas[4, 1, 2] = linea5[1, 2]
	
	crearLinea(linea6, "VERTICAL", tablero[0,2], tablero[1,2],tablero[2,2])
	lineas[5, 0, 0] = linea6[0, 0]
	lineas[5, 1, 0] = linea6[1, 0]
	lineas[5, 1, 1] = linea6[1, 1]
	lineas[5, 1, 2] = linea6[1, 2]
	
	crearLinea(linea7, "DIAGONAL1", tablero[0,0], tablero[1,1],tablero[2,2])
	lineas[6, 0, 0] = linea7[0, 0]
	lineas[6, 1, 0] = linea7[1, 0]
	lineas[6, 1, 1] = linea7[1, 1]
	lineas[6, 1, 2] = linea7[1, 2]
	
	crearLinea(linea8, "DIAGONAL2", tablero[0,2], tablero[1,1],tablero[2,0])
	lineas[7, 0, 0] = linea8[0, 0]
	lineas[7, 1, 0] = linea8[1, 0]
	lineas[7, 1, 1] = linea8[1, 1]
	lineas[7, 1, 2] = linea8[1, 2]
FinFuncion


Funcion ok = finalizo(actual, tablero)
	Dimension lineas[8, 2, 3]
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


Funcion ok = valido(n, tablero)
	Dimension posicion[2]
	num = ConvertirANumero(n)
	getPosicion(posicion, num)
	i = posicion[0]
	j = posicion[1]
	ficha = tablero[i, j]
	ok = num >= 1 Y num <= 9 Y ficha = getFichaDefault()
FinFuncion


Funcion ok = isInputValido(n)
	Dimension  permitido[9]

	Para i =0 Hasta 8 Hacer
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
	Escribir  "Orientaci�n: ", linea[0,0] 
	Escribir "Fichas: " Sin Saltar
	fichas = ""
	para i = 0 Hasta 2 Hacer
		si fichas = "" Entonces
			fichas = linea[1, i] 
		sino 
			fichas = fichas + " - " + linea[1, i]
		FinSi
	FinPara
	Escribir fichas
FinFuncion


Funcion ok = isDivisionExacta(num) 
	noDecimal = trunc(num/3)
	n = noDecimal * 3
	Si n = num Entonces
		ok = Verdadero
	SiNo
		ok = Falso
	FinSi
FinFuncion



Funcion  vector = getVectorI(num)
	si isDivisionExacta(num) Entonces
		vector = trunc(num / 3) - 1
	SiNo
		vector = trunc(num/3)
	FinSi
FinFuncion


Funcion  j = getVectorJ(num) 
	factor = getVectorI(num)
	si factor * 3 + 1 = num Entonces
		j = 0	
	FinSi
	si factor * 3 + 2 = num Entonces
		j = 1
	FinSi
	si factor * 3 + 3 = num Entonces
		j = 2
	FinSi
	
FinFuncion

Funcion getPosicion(posicion,num) 
	i = getVectorI(num)
	j = getVectorJ(num)
	posicion[0] = i
	posicion[1] = j
FinFuncion



Algoritmo TicTac
	Dimension tablero[3, 3]
	Dimension actual[2, 3]
	Dimension posicion[2]
	
	
	crearTablero(tablero)

	fichaEnJuego = "x"
	Escribir "Turno: ",fichaEnJuego
	imprimirTablero(tablero)
	Mientras  No finalizo(actual, tablero) Hacer
		Repetir
			Escribir "Inserte (1-9)"
			Leer num
		Hasta Que isInputValido(num) y valido(num, tablero)

		getPosicion(posicion, ConvertirANumero(num))
		actualizarTablero(tablero, fichaEnJuego, posicion)		
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
