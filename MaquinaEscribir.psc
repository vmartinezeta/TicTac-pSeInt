Funcion ok = DireccionAnimacion(value, esperado)
	Si value > 0 y esperado = 'DEFAULT' Entonces
		ok = Verdadero
	SiNo
		Si value < 0 y esperado = 'REVERSE' Entonces
			ok = Verdadero
		SiNo
			Si value = 0 y esperado = 'ALTERNATE' Entonces
				ok = Verdadero
			SiNo
				ok = Falso
			FinSi
		FinSi
	FinSi
FinFuncion


Funcion imprimirText(text, tiempoEspera, direccion, running Por Referencia)
	nuevoTexto = ''
	num = Longitud(text) - 1
	inicio = 0
	final = num
	Si DireccionAnimacion(direccion, 'REVERSE') Entonces
		inicio = num
		final = 0
	FinSi

	Para i = inicio Hasta final
		Esperar tiempoEspera Milisegundos
		Borrar Pantalla
		letra = Subcadena(text, i, i)
		Si DireccionAnimacion(direccion, 'DEFAULT') Entonces
			nuevoText = nuevoText + letra
		SiNo
			Si DireccionAnimacion(direccion, 'REVERSE') Entonces
				nuevoText = letra + nuevoText
			FinSi
		FinSi
		Escribir nuevoText
	FinPara
	
	Si DireccionAnimacion(direccion, 'REVERSE') Entonces
		Esperar tiempoEspera Milisegundos
		Borrar Pantalla
	FinSi
	running = Falso
FinFuncion


Funcion MaquinaEscribir(text, tiempoEspera, direction, iteraciones)
	cantidad = 1
	running = Verdadero
	Si DireccionAnimacion(direction, 'ALTERNATE') Entonces
		direccion = 1
	SiNo
		direccion = direction
	FinSi
	
	imprimirText(text, tiempoEspera, direccion, running)
	
	Mientras cantidad < iteraciones o iteraciones=-1  Hacer			
		Si !running Entonces
			running = Verdadero
			Si DireccionAnimacion(direction, 'ALTERNATE') Entonces
				direccion = -1 * direccion 
			FinSi			
			imprimirText(text, tiempoEspera, direccion, running)
			cantidad = cantidad + 1
		FinSi
	FinMientras
FinFuncion


Algoritmo Main
	//Direcion de la animacion
	//DEFAULT: 1
	//ALTERNATE: 0
	//REVERSE: -1
	MaquinaEscribir("Soy Victor programador javascript.", 100, 0, -1)
FinAlgoritmo