//1.0 10 alumnos -> nota > muestra la media -> notas mayores de la media
//2.0  el usuario elige alumnos 
//3.0  se muetra tambien el nombre
//4.20 no solo muestra una nota sinoque muestra 3
//5.0 número de notas que elija el usuario para cada alumno
Algoritmo notas
	Definir alumno,media_asignatura,num_alumno,i,j,num_asignatura Como Real;
	Definir nombre_alumno,nombre_asignatura Como Caracter;
	
	
	Escribir "Escriba el número de alumnos: ";
	Leer num_alumno;
	
	Escribir  "Escriba el número de asignaturas: ";
	Leer num_asignatura;
	
	Dimension nombre_asignatura[num_asignatura];//Defino el vector del nombre de las asignaturas
	Dimension nombre_alumno[num_alumno];//Defino el vector del nombre de los alumnos
	Dimension alumno[num_alumno,num_asignatura];//Defino un vector bidimensional donde se guardan las notas de cada alumno
	Dimension media_asignatura[num_asignatura];//Defino el vector de las medias de cada asignatura
	
	Para i<-0 Hasta num_asignatura-1 Con Paso 1 paso Hacer
		media_asignatura[i]<-0;
	Fin Para
	
	Para i<-0 Hasta num_asignatura-1 Con Paso 1 paso Hacer
		Escribir "Escriba el nombre de la asignatura ",i+1,":";
		leer nombre_asignatura[i];
	Fin Para
	
	Para i<-0 Hasta num_alumno-1 Con Paso 1 paso Hacer
		
		Escribir "Escriba el  nombre del alumno: ";
		Leer nombre_alumno[i];
		
		Para j<-0 hasta num_asignatura-1 Con Paso 1 paso hacer//Guarda las notas del alumno para cada asignatura
			
		Escribir "Las notas de ",nombre_alumno[i], " en la asignatura ",nombre_asignatura[j];
		leer alumno[i,j];
		
		media_asignatura[j]<-media_asignatura[j]+alumno[i,j];//Realizo la suma de las notas de los alumnos de cada asignatura
		
		Fin Para
	FinPara

	Para i<-0 Hasta num_asignatura-1 Con Paso 1 paso Hacer//Bucle para calcular las medias;
		
		media_asignatura[i]<-media_asignatura[i]/num_alumno;
		Escribir "La media para la asignatura ",nombre_asignatura[i]," es: ",media_asignatura[i];
	Fin Para
	
	Para j<-0 Hasta num_asignatura-1 Con Paso 1 paso Hacer
		
		Escribir "Las notas de ", nombre_asignatura[j]," por encima de la media son: ";
		
		para i<-0 hasta num_alumno-1 Con paso 1 paso Hacer
			
		Si media_asignatura[j]<alumno[i,j] Entonces
			Escribir "El alumno ",nombre_alumno[i]," ha sacado ",alumno[i,j];
		Fin Si
		
		FinPara
	Fin Para
FinAlgoritmo
