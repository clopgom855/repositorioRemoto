Algoritmo valor_maximo
	definir i,num,mayor Como Entero;
	num<-0;
	Escribir "1. Escriba un n�mero";//Como no puedo asignar a "mayor" el valor m�nimo, le asigno la primera entrada
	leer num;
	mayor<-num;
	Para i<-2 Hasta 10 Con Paso 1 paso Hacer
		Escribir i,". Escriba un n�mero";
		leer num;
		Si num>mayor Entonces
			mayor<-num;
		Fin Si
	Fin Para
	Escribir "El numero mayor es ",mayor;
	Escribir "Ahora es mucho mas mejorado y mejor";
FinAlgoritmo
