Algoritmo sin_titulo
//	Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
//	m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar nuestro
//	usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra cuenta.	

//Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es correcta
	//haremos que una variable llamada Login sea verdadera.
	
//Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un bucle
//Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
	
	Definir usuario, contrasena Como Caracter
	Definir intento, entrada, cantidad,i, peso Como Entero
	definir tipo_peso Como Entero
	Definir total como entero
	Definir login Como logica
	
	
	intento = 0
	login=Falso
	
	Mientras login=falso y intento<3 Hacer
		Escribir sin saltar "Ingrese su usuario: "
		Leer usuario
		//usuario = "Albus_D"
		//contrasena = "caramelosDeLimon"
		Si usuario = "Albus_D" Entonces
			Escribir Sin Saltar "Ingrese la contrase�a: "
			Leer contrasena
			Si contrasena = "caramelosDeLimon" Entonces
				Escribir "Contrase�a correcta"
				login=Verdadero
			FinSi
		FinSi
		intento=intento +1
	FinMientras
	
	si login Entonces
		hacer
			Escribir "Menu:"
			Escribir "1: Ingresar botellas"
			Escribir "2: Consultar saldo"
			Escribir "3: Salir"
			Escribir sin saltar "Ingrese la opcion deseada: "
			Leer entrada
			Segun entrada Hacer
				1: //ingresar botellas
					Escribir "Ingrese cantidade de botellas"
					leer cantidad
					
					total=0
					
					para i=1 hasta cantidad con paso 1 Hacer
						
						peso=Aleatorio(100,3000)
						si peso<=500 Entonces
							tipo_peso=1
						FinSi
						si peso>500 y peso <=1500 Entonces
							tipo_peso=2
						finsi
						si peso >1500 Entonces
							tipo_peso=3
						finsi
						
						Segun tipo_peso Hacer
							1:
								total=total+50
							2:
								total=total+125
							3:
								total=total+200
						Fin Segun
					FinPara
					Escribir "suma total: ", total
					
					
				2: //copnsultar saldo
					
				3:
					Escribir "Salir..."
				De Otro Modo:
					Escribir "opcion incorrecta"
					
			Fin Segun
		Mientras Que entrada <>3
		
	FinSi

	
FinAlgoritmo
