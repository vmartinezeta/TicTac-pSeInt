Funcion render(_texto, tiempoEspera, direccion, running Por Referencia)
	nuevoTexto = ""
	num = Longitud(_texto)
	inicio = 0
	final = num
	si direccion < 0 Entonces
		inicio = num
		final = 0
	FinSi
	Para i = inicio Hasta final
		Esperar tiempoEspera Milisegundos
		Borrar Pantalla
		si direccion>0 Entonces
			letra = Subcadena(_texto, i, i)
			nuevoTexto = Concatenar(nuevoTexto, letra)
			Escribir nuevoTexto
		SiNo
			subtexto = Subcadena(_texto, 0, i)
			Escribir subtexto
		FinSi
	FinPara
	
	si direccion < 0 Entonces
		Borrar Pantalla
	FinSi
	running = Falso
FinFuncion


Funcion MaquinaEscribir(_texto, tiempoEspera, direccion, iteraciones)
	cantidad = 1
	running = Verdadero
	render(_texto, tiempoEspera, direccion, running)
	Mientras cantidad < iteraciones o iteraciones=-1  Hacer		
		si no running Entonces
			running = Verdadero
			render(_texto, tiempoEspera, direccion, running)
			cantidad = cantidad + 1
		FinSi
	FinMientras
FinFuncion


Algoritmo Main
	MaquinaEscribir("Soy victor programador javascript.", 100, 1, -1)
FinAlgoritmo