funcion digito <- descomposicion(num, resto, cantCeros)
	digito <- -1
	num <- num - resto
	value <- 0 //Esta variable comprueba si i es igual al digito en descomponer
	
	Repetir
		multiplicador <- digito * cantCeros
		si (num > multiplicador) Entonces
			digito <- digito + 1
		SiNo
				value <- 1
				digito <- digito - 1		
				
		FinSi
	Hasta Que value = 1
	
FinFuncion


//Funcion para desencriptar nuemero
funcion desencriptar ()
	Escribir "ingrese el numero a desencriptar"
	leer num
	mil <- descomposicion(num, 0,1000)
	
	restoCentena <- mil * 1000
	centena <- descomposicion(num, restoCentena, 100)
	
	restoDecena <- centena * 100 + restoCentena
	decena <- descomposicion(num, restoDecena, 10)
	
	restoUnidad <- (decena * 10) + restoDecena
	unidad <- descomposicion(num, restoUnidad, 1)
	unidad <- unidad + 1
	
	si unidad = 10 Entonces
		decena <- decena + 1
		unidad <- unidad - 10
	FinSi
	
	Escribir restoCentena
	Escribir restoDecena
	escribir restoUnidad
	Escribir "el numero que ingreso es: " mil " " centena " " decena " " unidad
	
	mil <- digitoDesencrip(mil)
	centena <- digitoDesencrip(centena)
	decena <- digitoDesencrip(decena)
	unidad <- digitoDesencrip(unidad)
	
	escribir "el numero desencriptado es: " decena unidad mil centena
	main()
FinFuncion

//Funcion de desencriptacion por digito 
funcion x <- digitoDesencrip(x)
	x <- (x - 7 + 10) % 10
FinFuncion

//funcion de encriptacion por digito
funcion x <- digitoEncrip(x)
	x <- (x + 7) MOD 10
FinFuncion

//Funcion para encriptar numero
funcion encriptar ()
	Escribir "ingrese el numero a encriptar"
	leer num
	mil <- descomposicion(num, 0,1000)
	
	restoCentena <- mil * 1000
	centena <- descomposicion(num, restoCentena, 100)
	
	restoDecena <- centena * 100 + restoCentena
	decena <- descomposicion(num, restoDecena, 10)
	
	restoUnidad <- (decena * 10) + restoDecena
	unidad <- descomposicion(num, restoUnidad, 1)
	unidad <- unidad + 1
	
	si unidad = 10 Entonces
		decena <- decena + 1
		unidad <- unidad - 10
	FinSi
	
	Escribir "El numer ingresado fue: " mil centena decena unidad
	
	mil <- digitoEncrip(mil)
	centena <- digitoEncrip(centena)
	decena <- digitoEncrip(decena)
	unidad <- digitoEncrip(unidad)
	
	Escribir "Su equivalente encriptado es: " decena unidad mil centena
	main()
FinFuncion


//Funcion de menu principal
funcion main () 
	Escribir "ingrese que desea hacer"
	Escribir "1 para encriptar"
	Escribir "2 para desencriptar"
	leer opc
	Segun opc Hacer
		1:
			encriptar()
		2:
			desencriptar()
		De Otro Modo:
			Escribir "ERROR: opcion no valida"
			main()
	Fin Segun
FinFuncion

Algoritmo tp
	main()
FinAlgoritmo
