//1.0 10 alumnos -> nota > muestra la media -> notas mayores de la media
//2.0  el usuario elige alumnos 
//3.0  se muetra tambien el nombre
//4.20 no solo muestra una nota sinoque muestra 3
//5.0 número de notas que elija el usuario para cada alumno
Algoritmo notas
	Definir alumno,media_asignatura,num_alumnos,i Como Real;
	Definir nombre_alumno Como Caracter;
	media_asignatura<-0;
	Escribir "Escriba el número de alumnos: ";
	Leer num_alumnos;
	Dimension alumno[num_alumnos];
	Dimension nombre_alumno[num_alumnos];
	Para i<-0 Hasta num_alumnos-1 Con Paso 1 paso Hacer
		Escribir "Escriba el  nombre del alumno: ";
		Leer nombre_alumno[i];
		Escribir "Escriba la nota del alumno ",i+1,":";
		leer alumno[i];
		media_asignatura<-media_asignatura+alumno[i];
	Fin Para
	media_asignatura<-media_asignatura/num_alumnos;
	Escribir "La media es: ",media_asignatura;
	Escribir "Las notas por encima de la media son: ";
	para i<-0 hasta num_alumnos-1 Con paso 1 paso Hacer
		Si media_asignatura<alumno[i] Entonces
			Escribir "El alumno ",nombre_alumno[i]," ha sacado ",alumno[i];
		Fin Si
	FinPara
FinAlgoritmo
