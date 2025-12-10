SubProceso resultado <- suma(a,b)
	
	Definir resultado Como Real;
	resultado <- a+b;
FinSubProceso

SubProceso resultado <- resta(a,b)
	Definir resultado Como Real;
	resultado <- a-b;
FinSubProceso

SubProceso resultado <- multiplicacion(a,b)
	Definir resultado Como Real;
	resultado <- a*b;
FinSubProceso

SubProceso resultado <- division(a,b)
	Definir resultado Como Real;
	si b = 0 Entonces
		Escribir "Error: no se puede dividir entre 0";
		resultado <- 0;
	SiNo
		resultado <- - a/b;
	FinSi
	resultado <- a/b;
	
FinSubProceso

Algoritmo ContinacionCalculadora
	
	Definir Opc, numero1, numero2, resultado Como real;
	Definir continuar Como Caracter;
	
	continuar <- "S";
	
	Mientras continuar = "S" O continuar = "s" Hacer
	Escribir "Elige el numero de la opcion que desees: ";
	Escribir "1 Sumar ";
	Escribir "2 Restar";
	Escribir "3 Dividir";
	Escribir "4 Multiplicar";
	Leer Opc;
	//sumar
	//restar
	//dividir
	//multiplicar
	Escribir "Escribe el primer numero y da enter";
	Leer numero1;
	Escribir "Escribe el segundo numero y da enter";
	Leer numero2;
	Segun Opc Hacer
		1: resultado<- suma(numero1,numero2);
		2: resultado<- resta(numero1,numero2);
		3: resultado<- division(numero1,numero2);
		4: resultado<- multiplicacion(numero1,numero2);
		De Otro Modo:
			Escribir "Opción inválida";
	FinSegun
	
	Imprimir "El resultado es: ", + resultado;
	//Si terminaste rapido, puedes intentar hacer las operaciones de 3 o más números.

	Escribir "¿Deseas realizar otra operación? (S/N)";
	Leer continuar;
	
FinMientras

Escribir "Gracias por usar la calculadora ";
	
FinAlgoritmo