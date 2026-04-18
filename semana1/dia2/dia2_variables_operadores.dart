import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 1 — DÍA 2
// Tema: Variables, Tipos de Datos y Operadores
// Fecha: Miércoles 2 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// TIPOS DE DATOS:
//   int     → números enteros:       42, -7, 0
//   double  → números decimales:     3.14, -0.5, 99.99
//   String  → texto:                 'Hola', "Mundo"
//   bool    → verdadero/falso:       true, false
//
// DECLARACIÓN:
//   var     → Dart infiere el tipo (puede cambiar de valor, no de tipo)
//   final   → se asigna UNA vez, no cambia después
//   const   → constante en COMPILACIÓN, nunca cambia
//
// OPERADORES ARITMÉTICOS:
//   +   suma
//   -   resta
//   *   multiplicación
//   /   división (retorna double)
//   ~/  división entera (retorna int)
//   %   módulo (residuo de la división)
//
// ============================================

// ✅ Ejercicio 1: Área del rectángulo
// Declara base y altura como double, calcula e imprime el área (base * altura)
void ejercicio1() {
  // Escribe tu código aquí:
  double base= 10;
  double altura = 5;
  double area = base * altura;

  print('El area de un rectangulo es $area');

  
}

// ✅ Ejercicio 2: Área del círculo
// Declara el radio como double. Usa la fórmula: π * radio²
// Tip: puedes usar pi de dart:math o 3.14159
void ejercicio2() {
  // Escribe tu código aquí:
  double radio = 5;
  double area = pi * radio * radio;

  print ('El área de un círculo es $area');
}

// ✅ Ejercicio 3: Área del triángulo
// Declara base y altura. Fórmula: (base * altura) / 2
void ejercicio3() {
  // Escribe tu código aquí:
  double base=10;
  double altura=5;
  double area = (base*altura)/2;

  print('El area de un triangulo es $area');
}

// ✅ Ejercicio 4: Convertir Celsius a Fahrenheit
// Fórmula: F = (C * 9/5) + 32
// Prueba con: 0°C, 100°C, 37°C
void ejercicio4() {
  // Escribe tu código aquí:
  double celsius = 0 ;
  double fahrenheit = (celsius * 9/5)+32;

  print('La temperatura en grados fahrenheit es :$fahrenheit');
}

// ✅ Ejercicio 5: Convertir Fahrenheit a Celsius
// Fórmula: C = (F - 32) * 5/9
// Prueba con: 32°F, 212°F, 98.6°F
void ejercicio5() {
  // Escribe tu código aquí:
  double fahrenheit = 32;
  double celsius = (fahrenheit - 32)* 5/9;

  print('La temperatura en grados celsius es :$celsius');
}

// ✅ Ejercicio 6: Promedio de 5 notas
// Declara 5 variables para notas (double), calcula el promedio
void ejercicio6() {
  // Escribe tu código aquí:
  double  n1 = 15.2;
  double  n2 = 10.4;
  double  n3 = 11.3;
  double  n4 = 20;
  double  n5 = 15.4;
  
  double promedio = (n1+n2+n3+n4+n5) / 5 ;

  print('El promedio final es de: $promedio');



}

// ✅ Ejercicio 7: Operador módulo (%)
// Dado un número de minutos, convierte a horas y minutos restantes
// Ejemplo: 135 minutos → "2 horas y 15 minutos"
// Tip: usa ~/ para horas y % para minutos restantes
void ejercicio7() {
  // Escribe tu código aquí:
  int totalMinutos = 135;
  int horas = totalMinutos ~/ 60;

  int minutosRestantes = totalMinutos % 60;

  print('El total de $totalMinutos minutos en hora y minutos es: $horas horas y $minutosRestantes minutos ');







}

// ✅ Ejercicio 8: var, final, const
// Crea 3 variables:
//   - var nombre → asigna tu nombre, luego cámbialo. ¿Funciona?
//   - final fechaNacimiento → asígnala. Intenta cambiarla. ¿Qué pasa?
//   - const PI → asígnala con 3.14159. Intenta cambiarla. ¿Qué pasa?
// Comenta qué aprendiste sobre cada una
void ejercicio8() {
  // Escribe tu código aquí:
  var nombre = 'Jefferson';
  final fechaNacimiento = '30/09/1994';
  const pi = 3.14159;

  nombre = 'Juan';

  //fechaNacimiento = '30/9/2000';

  //pi = 314;

  print('Nombre:$nombre');
  print('Fecha de Nacimiento:$fechaNacimiento');
  print('El valor de pi es:$pi');


}

// ✅ Ejercicio 9: Swap de variables
// Declara dos variables a=10, b=20
// Intercambia sus valores SIN crear una tercera variable
// Tip: usa operaciones aritméticas (+, -)
void ejercicio9() {
  // Escribe tu código aquí:
  var  a = 10;
  var  b = 20;

  print('Antes: a= $a, b=$b');

  a = a+b;
  b = a-b;
  a = a-b;

  print('Despues a =$a, b= $b');
  }

// ✅ Ejercicio 10: Desglose de dinero
// Dado un monto en soles (ej: 487), muestra cuántos billetes y monedas necesitas:
// Billetes: 200, 100, 50, 20, 10
// Monedas: 5, 2, 1
// Ejemplo: 487 → 2x200, 0x100, 1x50, 1x20, 1x10, 1x5, 1x2, 0x1
void ejercicio10( ) {
  // Escribe tu código aquí:

  int monto = 487;

  //Billetes :

  int b200 = monto ~/200;
  monto%=200;

  int b100 = monto ~/100;
  monto %=100;

  int b50 = monto ~/50;
  monto %=50;

  int b20 = monto ~/20;
  monto %=20;

  int b10 = monto ~/10;
  monto %=10;

  //MONEDAS 

  int m5 = monto ~/5;
  monto %=5;

  int m2 = monto ~/2;
  monto %=2;

  int m1 = monto ~/1;
  monto %=1;

  // Resultado
  print('Billetes: ${b200}x200, ${b100}x100, ${b50}x50, ${b20}x20, ${b10}x10');
  print('Monedas: ${m5}x5, ${m2}x2, ${m1}x1');

  
}

// ============================================
// 🧠 RETO DEL DÍA: Calculadora de IMC
// ============================================
// El usuario ingresa:
//   - Su peso en kg (double)
//   - Su altura en metros (double)
//
// El programa calcula el IMC: peso / (altura * altura)
//
// Y muestra la categoría según la OMS:
//   IMC < 18.5       → "Bajo peso"
//   18.5 <= IMC < 25  → "Peso normal"
//   25 <= IMC < 30    → "Sobrepeso"
//   IMC >= 30         → "Obesidad"
//
// Ejemplo de salida:
//   "Tu IMC es 24.22 → Peso normal"
//
// BONUS: Redondea el IMC a 2 decimales con .toStringAsFixed(2)
// ============================================
void retoIMC() {
  print('\n🧠 === CALCULADORA DE IMC ===');
  // Escribe tu código aquí:
  double peso = 98.3;
  double altura = 1.753;

  double IMC = peso /(altura * altura);

  if(IMC < 18.5){
  print('El IMC del paciente es de: ${IMC.toStringAsFixed(2)}');
  print('Bajo Peso');
  }
  else if(18.5 <= IMC && IMC < 25){
  print('El IMC del paciente es de: ${IMC.toStringAsFixed(2)}');
  print('Peso Normal');
  }
  else if(25 <=IMC && IMC <30){
  print('El IMC del paciente es de: ${IMC.toStringAsFixed(2)}');
  print('Sobrepeso');
  }
  else{
  print('El IMC del paciente es de: ${IMC.toStringAsFixed(2)}');
  print('Obesidad ');

  }
  
  }





// 🚀 FUNCIÓN MAIN — Descomenta el ejercicio que quieras probar
void main() {
  print('=== DÍA 2: Variables, Tipos de Datos y Operadores ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
  ejercicio7();
  ejercicio8();
  ejercicio9();
  ejercicio10();
  retoIMC();
}
