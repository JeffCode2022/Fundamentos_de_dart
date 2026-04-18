import 'dart:io';
// ============================================
// 🟢 FASE 0 — SEMANA 1 — DÍA 1
// Tema: ¿Qué es programar? + Hola Mundo
// Fecha: Martes 1 de Abril, 2026
// ============================================

// ✅ Ejercicio 1: Tu primer programa
// Imprime "¡Hola Mundo! Soy [tu nombre] y seré Senior Developer"
void ejercicio1() {
  // Escribe tu código aquí:
  print('Hola, ¿cómo te llamas?');
  String name = stdin.readLineSync()!;

  print('¡Hola mundo!, soy ${name} y seré Senior Developer');
}

// ✅ Ejercicio 2: Múltiples líneas
// Imprime tu nombre, edad y ciudad en líneas separadas usando \n
void ejercicio2() {
  // Escribe tu código aquí:

  print('Mi nombre es: Jefferson, \nmi edad es de 31 años, \ny vivo en Lima-Perú');
}

// ✅ Ejercicio 3: Tabulación
// Imprime una "tabla" con \t (tab):
// Nombre    Edad    Ciudad
// Juan      22      Lima
void ejercicio3() {
  // Escribe tu código aquí:
  print('Nombre\tEdad\tCiudad\nJuan\t22\tLima');
}

// ✅ Ejercicio 4: String Interpolation
// Crea variables para nombre, edad y hobby.
// Imprime: "Me llamo [nombre], tengo [edad] años y me gusta [hobby]"
void ejercicio4() {
  // Escribe tu código aquí:
  String name = 'Jefferson';
  int edad = 31;
  String hobby ='Jugar Valorant';

  print('Me llamo $name, tengo $edad años y me gusta $hobby');
}

// ✅ Ejercicio 5: Expresiones en interpolación
// Crea dos variables numéricas y usa interpolación para mostrar:
// "La suma de [a] + [b] = [resultado]"
void ejercicio5() {
  // Escribe tu código aquí:
   int a = 5;
   int b = 10;

   print('la suma de $a + $b = ${a+b}');
}

// 🚀 FUNCIÓN MAIN — Descomenta el ejercicio que quieras probar
void main() {
  print('=== DÍA 1: Hola Mundo & Print ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
}
