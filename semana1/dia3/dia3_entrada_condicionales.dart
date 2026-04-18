import 'dart:core';
import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 1 — DÍA 3
// Tema: Entrada de Datos + Condicionales (if/else)
// Fecha: Jueves 3 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// ENTRADA DE DATOS:
//   stdout.write('Mensaje: ');  → imprime SIN salto de línea
//   stdin.readLineSync()        → lee una línea del teclado (retorna String?)
//   int.parse('42')             → convierte String a int
//   double.parse('3.14')        → convierte String a double
//   int.tryParse('abc')         → retorna null si no puede convertir (más seguro)
//
// CONDICIONALES:
//   if (condición) { ... }
//   else if (condición) { ... }
//   else { ... }
//
// OPERADORES DE COMPARACIÓN:
//   ==   igual a
//   !=   diferente de
//   >    mayor que
//   <    menor que
//   >=   mayor o igual
//   <=   menor o igual
//
// OPERADORES LÓGICOS:
//   &&   AND (ambas deben ser true)
//   ||   OR (al menos una debe ser true)
//   !    NOT (invierte el valor)
//
// ============================================

// ✅ Ejercicio 1: Par o Impar
// Pide un número al usuario y muestra si es par o impar
// Tip: un número es par si numero % 2 == 0
void ejercicio1() {
  print('\n--- Ejercicio 1: Par o Impar ---');
  // Escribe tu código aquí:
  stdout.write('Introduce un número:');
  String?  entrada = stdin.readLineSync();

  int? numero= int.tryParse(entrada ?? '');

  if(numero != null){

    if (numero % 2 == 0){
      print('El número $numero es PAR');
    }else{
      print('El numero $numero es IMPAR');
    }
  }else{
    print('El dato ingresado es invalido');
  }
}

// ✅ Ejercicio 2: Mayor de edad
// Pide la edad al usuario
// Si tiene 18 o más → "Eres mayor de edad"
// Si no → "Eres menor de edad, te faltan X años"
void ejercicio2() {
  print('\n--- Ejercicio 2: Mayor de edad ---');
  // Escribe tu código aquí:
  String? edad = stdin.readLineSync();
  int? edadNum = int.tryParse(edad ?? '');


  if(edadNum != null){

  if (edadNum >= 18){
    print('Eres mayor de edad');

  }else{
    int edadFalt = 18-edadNum;
    print('Eres menor de edad, te faltan $edadFalt años');
  }
  }else{
     print('El dato ingresado es invalido');
  }


  
}

// ✅ Ejercicio 3: Número positivo, negativo o cero
// Pide un número y clasifícalo
void ejercicio3() {
  print('\n--- Ejercicio 3: Positivo, Negativo o Cero ---');
  // Escribe tu código aquí:
  stdout.write('Ingresa un numero: ');
  String? entrada = stdin.readLineSync();
  int?  numero = int.tryParse(entrada ?? '');

  if(numero != null){
    if(numero > 0){
      print('El numero es $numero, es Positivo');


    }else if( numero < 0 ){
      print('El numero es $numero, es Negativo');

    }else {
      print('El numero es $numero, CERO');
    }

  }else{
    print('Error: El dato ingresado no es un número válido.');
  }
}

// ✅ Ejercicio 4: La nota más alta
// Pide 3 notas al usuario y muestra cuál es la más alta
// NO uses funciones de List como .reduce() o .sort()
// Usa solo if/else
void ejercicio4() {
  print('\n--- Ejercicio 4: La nota más alta ---');
  // Escribe tu código aquí:
  stdout.write('INGRESA NOTA 1');
  double? nota1 = double.tryParse(stdin.readLineSync() ??'');

  stdout.write('INGRES NOTA 2');
  double? nota2 = double.tryParse(stdin.readLineSync() ??'');

  stdout.write('INGRESA NOTA 3');
  double? nota3 = double.tryParse(stdin.readLineSync() ??'');


  if(nota1 != null && nota2 !=null && nota3 != null){
    double mayor;

    if(nota1 >= nota2 && nota1 >= nota3){
      mayor = nota1;
    }else if (nota2 >= nota1 && nota2 >= nota3 ){
      mayor = nota2;
    }else{
      mayor = nota3;
    }

    print('La nota más alta es: $mayor');


  }else{
    print('Error: Asegúrate de ingresar números válidos en las 3 notas.');
  }




}

// ✅ Ejercicio 5: Clasificar triángulo
// Pide los 3 lados de un triángulo
// Si los 3 lados son iguales → "Equilátero"
// Si solo 2 son iguales → "Isósceles"
// Si todos son diferentes → "Escaleno"
// BONUS: Verifica primero si los lados forman un triángulo válido
//        (la suma de 2 lados cualquiera > el tercer lado)
void ejercicio5() {
  print('\n--- Ejercicio 5: Clasificar triángulo ---');
  // Escribe tu código aquí:

  stdout.write('INGRESA LADO 1 ');
  double? a = double.tryParse(stdin.readLineSync() ??'');

  stdout.write('INGRES LADO 2');
  double? b = double.tryParse(stdin.readLineSync() ??'');

  stdout.write('INGRESA LADO 3');
  double? c = double.tryParse(stdin.readLineSync() ??'');

  if(a != null && b !=null &&  c != null && a > 0 && b>0 && c >0 ){
    if((a+b>c)&&(a+c>b)&&(b+c>a)){
      
      if(a==b && b==c){
        print('Resultado: Triángulo Equilátero');
      }
      else if(a==b || a==c || b==c){
        print('Resultado: Triángulo Isósceles');

      }else{
        print('Resultado: Triángulo Escaleno');
      }

    }else{
      print('Error: Los lados ingresados NO pueden formar un triángulo.');
    }
  }else{
   print('Error: Por favor ingresa números válidos mayores a cero.');
    
  }
}

// ✅ Ejercicio 6: Semáforo
// Pide un color al usuario (rojo, amarillo, verde)
// Muestra la acción correspondiente:
//   rojo    → "¡Detenerse!"
//   amarillo → "Precaución, prepararse para detenerse"
//   verde   → "Avanzar"
//   otro    → "Color no válido"
// Tip: convierte a minúsculas con .toLowerCase() para aceptar "ROJO", "Rojo", etc.
void ejercicio6() {
  print('\n--- Ejercicio 6: Semáforo ---');
  // Escribe tu código aquí:
  stdout.write('Escribe un color (ROJO, AMARILLO, VERDE): ');

  String color = (stdin.readLineSync()??'').toLowerCase();

  if(color== 'rojo'){
    print('¡Detenerse!');
  }else if(color == 'amarillo'){
    print('Precaución, prepararse para detenerse');
  }else if(color == 'verde'){
    print('Avanzar');
  }else{
    print('Color invalido');
  }

}

// ✅ Ejercicio 7: Año bisiesto
// Pide un año al usuario y determina si es bisiesto
// Reglas:
//   - Es bisiesto si es divisible entre 4
//   - PERO NO es bisiesto si es divisible entre 100
//   - EXCEPTO si es divisible entre 400 (entonces SÍ es bisiesto)
// Ejemplos: 2000 → sí, 1900 → no, 2024 → sí, 2023 → no
void ejercicio7() {
  print('\n--- Ejercicio 7: Año bisiesto ---');
  // Escribe tu código aquí:
  stdout.write('INGRESA UN AÑO Y SE IDENTIFICAA SI ES BISIESTO O NO');
  int? years = int.tryParse(stdin.readLineSync()??'');

  if(years != null  && years > 0){


    if((years % 4 == 0 && years % 100 != 0)||(years % 400 == 0)){
      print('El año $years SÍ es bisiesto. ✅');

    }else{
      print('El año $years NO es bisiesto. ❌');
    }
  }else{
   print('Error: Ingresa un año válido.'); 
  }
}

// ✅ Ejercicio 8: Calculadora básica
// Pide 2 números y una operación (+, -, *, /)
// Realiza la operación y muestra el resultado
// Si la operación es "/" y el segundo número es 0, muestra "Error: división por cero"
// Si la operación no es válida, muestra "Operación no reconocida"
void ejercicio8() {
  print('\n--- Ejercicio 8: Calculadora básica ---');
  // Escribe tu código aquí:
  double? a = double.tryParse(stdin.readLineSync()??'');
  double? b = double.tryParse(stdin.readLineSync()??'');

  stdout.write('Ingrese un operado puede ser : (+, -, * ó /)');
  String? operador = stdin.readLineSync();

  if(operador != null && a != null && b != null ){


    if(operador == '+'){
     print('Resultado: $a + $b = ${a + b}');
    }
    else if(operador == '-'){
      print('Resultado: $a - $b = ${a - b}');
    }
    else if(operador == '*'){
      print('Resultado: $a * $b = ${a * b}');
    }
    else if(operador == '/'){
      if(b != 0){
        print('Resultado: $a / $b = ${a / b}');
      }
      else{
        print('Error: división por cero');
      }
    }
    else{
      print('Operación no reconocida');
    }

  }else{
    print('El dato ó operador ingresado son invalidos');
  }

}

// ============================================
// 🧠 RETO DEL DÍA: Cajero Automático
// ============================================
// El programa debe:
//
// 1. Mostrar un saldo inicial (ej: S/ 1500.00)
//
// 2. Pedir al usuario el monto a retirar
//
// 3. Validar:
//    - El monto debe ser mayor a 0
//    - El monto debe ser múltiplo de 10 (los cajeros no dan monedas)
//    - El monto no debe exceder el saldo
//
// 4. Si pasa las validaciones:
//    - Restar del saldo
//    - Mostrar el desglose en billetes (200, 100, 50, 20, 10)
//      usando el MENOR número de billetes posible
//    - Mostrar el saldo restante
//
// 5. Si no pasa → mostrar mensaje de error específico
//
// Ejemplo:
//   Saldo: S/ 1500.00
//   Monto a retirar: 370
//   → 1 billete de 200
//   → 1 billete de 100
//   → 1 billete de 50
//   → 1 billete de 20
//   Total: 4 billetes
//   Saldo restante: S/ 1130.00
//
// BONUS: Permitir que el usuario haga múltiples retiros
//        hasta que escriba "salir"
// ============================================
void retoCajero() {
  print('\n🧠 === CAJERO AUTOMÁTICO ===');
  // Escribe tu código aquí:
  double saldo = 1500;

  while(true){
  print('\n-------------------------------------------');
  print('💰 SALDO ACTUAL: S/ ${saldo.toStringAsFixed(2)}');
  stdout.write('Ingrese monto a retirar (o escribe "salir"): ');

  String entrada = (stdin.readLineSync() ?? '').toLowerCase().trim();

  if(entrada=='salir'){
    print('Saliendo del sistema... ¡Gracias por su visita! 👋');
    break;
  }
  int? montoARetirar = int.tryParse(entrada);
  
  if(montoARetirar ==null){
    print('❌ Error: Por favor, ingresa un número válido o "salir".');
    continue; // Salta al inicio del bucle sin ejecutar lo de abajo
  }

    if(montoARetirar<=0){
      print('❌ Error: El monto debe ser mayor a 0.');

    
    }else if(montoARetirar % 10 !=0){
     print('❌ Error: Solo billetes de 10, 20, 50, 100 y 200 (Múltiplos de 10).');

    }else if(montoARetirar > saldo){
      print('❌ Error: Fondos insuficientes. Saldo disponible: S/ $saldo');

    }
    else{
      int auxiliar = montoARetirar;

      int b200 = auxiliar ~/ 200; auxiliar %= 200;
      int b100 = auxiliar ~/ 100; auxiliar %= 100;
      int b50  = auxiliar ~/ 50;  auxiliar %= 50;
      int b20  = auxiliar ~/ 20;  auxiliar %= 20;
      int b10  = auxiliar ~/ 10;  auxiliar %= 10;

      saldo -= montoARetirar;

      print('\n--- Desglose de Billetes ---');
      if (b200 > 0) print('-> $b200 billete(s) de S/ 200');
      if (b100 > 0) print('-> $b100 billete(s) de S/ 100');
      if (b50 > 0)  print('-> $b50 billete(s) de S/ 50');
      if (b20 > 0)  print('-> $b20 billete(s) de S/ 20');
      if (b10 > 0)  print('-> $b10 billete(s) de S/ 10');
      
      print('---------------------------');
      print('Retiro exitoso de: S/ $montoARetirar');
      print('Nuevo saldo: S/ ${saldo.toStringAsFixed(2)}');

      
    }

  
  }

}

// 🚀 FUNCIÓN MAIN — Descomenta el ejercicio que quieras probar
void main() {
  print('=== DÍA 3: Entrada de Datos + Condicionales ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
  ejercicio7();
  ejercicio8();
  retoCajero();
}
