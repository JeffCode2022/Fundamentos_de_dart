import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 1 — DÍA 5
// Tema: Bucles — for, while, do-while
// Fecha: Sábado 5 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// BUCLE 'for' (Iteración un número conocido de veces):
//   for (int i = 0; i < 5; i++) {
//     print(i); // 0, 1, 2, 3, 4
//   }
//
// BUCLE 'while' (Mientras la condición sea verdadera):
//   int i = 0;
//   while (i < 5) {
//     print(i);
//     i++; // IMPORTANTE: no olvidar modificar la variable, o será bucle infinito
//   }
//
// BUCLE 'do-while' (Ejecuta al menos UNA vez, luego evalúa):
//   int i = 0;
//   do {
//     print(i);
//     i++;
//   } while (i < 5);
//
// SENTENCIAS DE CONTROL:
//   break;    → Sale inmediatamente del bucle (termina el bucle completo)
//   continue; → Salta el resto del código en la iteración actual y pasa a la siguiente
//
// ============================================

// ✅ Ejercicio 1: Iteración básica
// Usa un FOR para imprimir los números del 1 al 10.
// Luego usa otro FOR para imprimir los números del 10 al 1 (descendente).
void ejercicio1() {
  print('\n--- Ejercicio 1: Iteración básica ---');
  // Escribe tu código aquí:
  //ASCENDENTE:
  for (int i = 1; i <= 10; i++){
    print(i);
  }
  //DESCENDENTE:
  for (int i=10; i >= 1; i--){
    print(i);
  }
  
}

// ✅ Ejercicio 2: Tabla de multiplicar
// Pide un número al usuario y muestra su tabla del 1 al 12
// Ejemplo (si ingresa 5):
// 5 x 1 = 5
// 5 x 2 = 10 ...
void ejercicio2() {
  print('\n--- Ejercicio 2: Tabla de multiplicar ---');
  // Escribe tu código aquí:
  stdout.write('Ingrese un número del 1-12');
  int? number = int.tryParse(stdin.readLineSync()??'')??0;

  for (int i =1;i<=12; i++){

      print('$number x $i ${number*i}');
  }


  
}

// ✅ Ejercicio 3: Sumatoria y Promedio
// Pide al usuario cuántos números quiere ingresar (N).
// Luego, usa un bucle FOR para pedirle N números.
// Al final, muestra la suma total y el promedio.
void ejercicio3() {
  print('\n--- Ejercicio 3: Sumatoria ---');
  // Escribe tu código aquí:
  stdout.write('Ingresa la cantidad de numero que deseas sumar');
  int?  n = int.tryParse(stdin.readLineSync()??'')??0;

  double sumaTotal = 0;

  for (int i = 1 ; i <= n; i++){
  stdout.write('Ingresa el número $i: ');
  double numero = double.tryParse(stdin.readLineSync()??'')??0;
  sumaTotal +=  numero;
  }

  double promedio = n >0 ? sumaTotal/n : 0;

  print('El promedio de los $sumaTotal');
  print('El promedio ${promedio.toStringAsFixed(2)}');


  
}

// ✅ Ejercicio 4: Uso de `while`
// Crea un bucle while que le pida contraseñas al usuario.
// El bucle no se detendrá hasta que la contraseña sea "secreto123".
void ejercicio4() {
  print('\n--- Ejercicio 4: Validar contraseña ---');
  // Escribe tu código aquí:
  String? password = '';
  while(password != 'secreto123'){
  stdout.write('Ingrese la constraseña: ');
  password = stdin.readLineSync()??'';

  if (password != 'secreto123'){
    print('❌ Error: Contraseña incorrecta. Inténtalo de nuevo.');

  }
  }
  print('\n✅ ¡Bienvenido al portal, Jefferson!');
}
  

// ✅ Ejercicio 5: Factorial
// Pide un número y calcula su factorial usando un ciclo FOR o WHILE.
// Ej: factorial de 5 = 5 * 4 * 3 * 2 * 1 = 120
void ejercicio5() {
  print('\n--- Ejercicio 5: Factorial ---');
  // Escribe tu código aquí:
  stdout.write('Ingresa un número ppara calcular su factorial');
  int?  n = int.tryParse(stdin.readLineSync()??'')??0;

  //1. validar que el factorial no sea negativo
  if(n<0 ){
    print('El factorial no está definido para números negativos');
    return;
  }
  int factorial = 1;

  for (int i= 1; i<=n; i++){
    factorial *= i;
  }

  print('El factorial de $n ($n!) es:$factorial');

  
}

// ✅ Ejercicio 6: Fibonacci
// La secuencia Fibonacci empieza con 0, 1. Y cada número es la suma de los 2 anteriores.
// Imprime los primeros 20 números de la secuencia.
// (0, 1, 1, 2, 3, 5, 8, 13, 21 ...)
void ejercicio6() {
  print('\n--- Ejercicio 6: Fibonacci ---');
  // Escribe tu código aquí:
  stdout.write('¿Cuántos números de la serie deseas ver?: ');
  int n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  int a=0;
  int b=1;

  print('Serie de Fibonacci ($n términos):');

  for (int i =1; i<= n; i++){
    stdout.write('$a');
    int siguiente = a+b;
    a=b;
    b=siguiente;

  }
  print('\n');

  
}

// ✅ Ejercicio 7: Contar vocales
// Pide una frase al usuario y cuenta cuántas vocales (a, e, i, o, u) tiene.
// Tip: puedes recorrer las letras de un String como si fueran posiciones:
//  frase[0] es la primera letra. El límite es i < frase.length;
void ejercicio7() {
  print('\n--- Ejercicio 7: Contar vocales ---');
  // Escribe tu código aquí:
  String? frase = stdin.readLineSync()??'';

  int contarVocales = 0;

  for(int i = 0;i<frase.length;i++){

  String letra = frase[i].toLowerCase();
  
  if(letra == 'a'|| letra =='e'|| letra =='i'|| letra == 'o'|| letra =='u' ){
    contarVocales++;
  }
  }
  print('La frase es: $frase');
  print('Tiene un total de $contarVocales vocales.');
  
}

// ✅ Ejercicio 8: Cajero Infinito (`break` y `continue`)
// Crea un bucle while(true) que pida números enteros al usuario.
// - Si ingresa un número negativo, usa `continue` (no lo cuenta y pasa al siguiente).
// - Si ingresa un 0, usa `break` (termina el programa).
// - Si es positivo, suma el valor a un acumulador.
// Al terminar el bucle, imprime la suma total.
void ejercicio8() {
  print('\n--- Ejercicio 8: break y continue ---');
  // Escribe tu código aquí:
  
  int suma = 0;
   while(true){
    stdout.write('Introduce un número');
    int? numero = int.tryParse(stdin.readLineSync()??'')??0;
    
    if(numero == null)continue;
    
    if(numero<0){
      continue;
    }
    if(numero ==0){
      break;
    }
    if(numero>0){
      suma += numero;
    }
    
  }
    print('✅ La suma total es: $suma');
  
  
}



// ============================================
// 🧠 RETO DEL DÍA: Adivina el Número
// ============================================
// El programa genera un número aleatorio entre 1 y 100.
//   int numeroSecreto = Random().nextInt(100) + 1;
//
// Tienes 7 intentos para adivinarlo. (bucle while o for)
//
// 1. Pide un número al usuario.
// 2. Si es IGUAL al secreto:
//    - "¡Felicidades! Adivinaste en X intentos." y termina el juego (break).
// 3. Si el número del usuario es MAYOR que el secreto:
//    - "El número misterioso es más bajo. Te quedan X intentos."
// 4. Si el número es MENOR:
//    - "El número misterioso es más alto. Te quedan X intentos."
// 5. Si se acaban los 7 intentos sin acertar:
//    - "¡Perdiste! El número secreto era X."
//
// Usa un control riguroso de iteraciones.
// ============================================
void retoAdivina() {
  print('\n🧠 === ADIVINA EL NÚMERO ===');
  // Escribe tu código aquí:
  int numeroSecreto = Random().nextInt(100)+1;
  int numeroMaximo = 7;
  int intentosRealizados = 0;
  bool gano= false;

  while(intentosRealizados< numeroMaximo){
    intentosRealizados++;
    stdout.write('\nIntento #$intentosRealizados. Ingresa tu número: ');
    int? usuario = int.tryParse(stdin.readLineSync() ?? '');

    if(usuario == null) continue;

    if(numeroSecreto ==usuario){
      print('🎉 ¡Felicidades! Adivinaste en $intentosRealizados intentos.');
      gano = true;
      break;
    }else if(usuario! > numeroSecreto){
      print('📉 El número misterioso es más BAJO.');
    }else{
      print('📉 El número misterioso es más ALTO.');  
    }

    int restante = numeroMaximo- intentosRealizados;
    if(restante>0){
      print('Te quedan $restante intentos.');
    }

    }
    if(!gano){
    print('\n💀 ¡Perdiste! El número secreto era: $numeroSecreto');
    print('Sigue practicando, ¡la próxima será mejor!');
    }
  
  }
  


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 5: Bucles (for, while, do-while) ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
  ejercicio7();
  ejercicio8();
  retoAdivina();
}
