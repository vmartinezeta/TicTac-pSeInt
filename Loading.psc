Algoritmo Loading
	textoPrincipal = "Loading"
	puntosuspensivos = ""
	Mientras Verdadero Hacer
		Esperar 1 Segundos
		Borrar Pantalla
		puntosuspensivos = Concatenar(puntosuspensivos, ".")
		si Longitud(puntosuspensivos) > 3 Entonces
			puntosuspensivos = ""
		FinSi
		textoFinal = Concatenar(textoPrincipal, puntosuspensivos)
		Escribir textoFinal
	FinMientras
FinAlgoritmo