import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 2 — DÍA 10
// Tema: Recursividad
// Fecha: Jueves 10 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// ¿Qué es la recursividad?
// Es cuando una función se llama a SÍ MISMA desde adentro de su propio código.
// Es como un bucle "invisible".
//
// ⚠️ REGLA DE ORO DE LA RECURSIÓN:
// Toda función recursiva DEBE tener un CASO BASE (o caso de parada). Si no lo tiene,
// se llamará infinitamente hasta reventar la memoria de la PC (Stack Overflow).
//
// ESTRUCTURA CLÁSICA:
// int cuentaRegresiva(int n) {
//   // 1. CASO BASE (Punto de parada)
//   if (n == 0) {
//     print('Despegue!');
//     return 0;
//   }
//   // 2. CASO RECURSIVO (Llamarse a sí misma)
//   print(n);
//   return cuentaRegresiva(n - 1); // <-- Aquí ocurre la recursión
// }
//
// ¿Cuándo usarla?
// Es súper útil cuando un problema grande se puede partir en versiones más pequeñas 
// exactamente iguales a sí mismo (como recorrer árboles, carpetas del sistema, o algoritmos matemáticos).
// ============================================

// ✅ Ejercicio 1: Cuenta Regresiva Básica
// Crea una función recursiva `void cuentaRegresiva(int n)`
// Si n = 0, imprime "Cero!". Si n > 0, imprime el número y luego llámate
// a ti mismo con (n - 1).
// Escribe tu función aquí:

  void cuentaRegresiva(int n){
    if(n ==0){
      print("CERO");
    }else if(n> 0){
      print(n);
      cuentaRegresiva(n-1);
    }
  }


// ✅ Ejercicio 2: Factorial Recursivo
// En días pasados hiciste el factorial con un bucle `for`. Ahora hazlo con recursividad.
// Fórmula: n! = n * (n - 1)!
// Caso base: Si n == 0 o n == 1, retorna 1.
// Crea la función `int factorial(int n)`.
// Escribe tu función aquí:
int factorial(int n){

  if(n<=1){
    return 1;
  }
  return n * factorial(n-1);

}



// ✅ Ejercicio 3: Suma Recursiva
// Crea una función `int sumaRecursiva(int n)` 
// Debe retornar la suma de todos los números desde 1 hasta n.
// Por ejemplo: sumaRecursiva(4) devolvería 10 (4 + 3 + 2 + 1)
// Caso base: Si n == 1, retornar 1.
// Escribe tu función aquí:

int sumaRecursiva(int n){
  if(n==1){
    return 1;
  }
  return n + sumaRecursiva(n-1);
}


// ✅ Ejercicio 4: Fibonacci Recursivo
// Secuencia de Fibonacci: 0, 1, 1, 2, 3, 5, 8, ...
// El número en la posición 'n' es la suma de los dos anteriores.
// Crea `int fibonacci(int n)`. Donde 'n' es el índice de la serie.
// Caso base: Si n == 0 retorna 0. Si n == 1 retorna 1.
// Caso recursivo: retorna fibonacci(n - 1) + fibonacci(n - 2).
// Escribe tu función aquí:

int fibonacci(int n){
  if(n == 0){
    return 0;
  }
  if(n == 1){
    return 1;
  }

  return fibonacci(n-1) + fibonacci(n-2);

}


// ✅ Ejercicio 5: Sumar Dígitos de un Número
// Vas a sumar cada dígito por separado de un número grandote.
// Ej: 123 -> retorna 6 (1 + 2 + 3)
// Caso base: Si n == 0, retornar 0.
// Caso recursivo: retorna (n % 10) + sumaDigitos(n ~/ 10). 
// Tip: `n % 10` siempre extrae el último número. `n ~/ 10` elimina el último número.
// Crea `int sumaDigitos(int n)`.
// Escribe tu función aquí:
int sumaDigitos(int n){
  if(n==0){
    return 0;
  }

  return  (n % 10) + sumaDigitos(n ~/10);
}


// ✅ Ejercicio 6: Potencia
// Crea la función `int potencia(int base, int exponente)`.
// Si el exponente == 0, retorna 1.
// Caso recursivo: retorna base * potencia(base, exponente - 1).
// Escribe tu función aquí:
int potencia(int base, int exponente){
  if(exponente == 0){
    return 1;
  }

  return base*potencia(base,exponente-1);

}


// ✅ Ejercicio 7: Invertir String Recursivo
// Crea `String invertir(String texto)`.
// Caso base: Si el texto está vacío (texto.isEmpty), retorna el texto.
// Caso recursivo: Retorna el ÚLTIMO carácter de `texto` concatenado (+) a 
// la recursión de `invertir(...)` pasándole el texto SIN su último carácter.
// Funciones clave: texto[texto.length - 1], y texto.substring(0, texto.length - 1).
// Escribe tu función aquí:
String invertir(String texto){
  if(texto.isEmpty){
    return texto;
  }

  String ultimaLetra = texto[texto.length-1];

  String restoDePalabra = texto.substring(0,texto.length-1);


  return ultimaLetra + invertir(restoDePalabra);



}



// ============================================
// 🧠 RETO DEL DÍA: Torres de Hanoi (Nivel Pro y legendario en algoritmos)
// ============================================
// Las Torres de Hanoi consisten en 3 postes (A, B y C).
// Tienes N discos apilados del más grande al más chico en el poste A. 
// Tienes que moverlos al poste C, con dos reglas:
// 1. Solo puedes mover 1 disco a la vez.
// 2. Un disco grande NO PUEDE ir encima de uno chico.
// 
// La recursión de esto es mágica. 
// Crea la función `void hanoi(int n, String origen, String destino, String auxiliar)`.
// 
// Caso Base: Si n == 1:
//    Imprime "Mueve el disco de $origen a $destino"
// Caso Recursivo (n > 1):
//    1. Mueve n-1 discos de 'origen' a 'auxiliar' usando el 'destino' como comodín.
//    2. Imprime el movimiento del disco 'n' (igual que el caso base).
//    3. Mueve los n-1 discos del 'auxiliar' al 'destino' usando el 'origen' como comodín.
// 
// ¡Acomoda y confía en el algoritmo! Dentro del main() llama a `hanoi(4, 'A', 'C', 'B');`
// ============================================

void hanoi(int n, String origen, String destino,String auxiliar){
  if(n==1){
    print("Mueve el disco de $origen a $destino");
    return;
  }
  
  hanoi(n-1,origen, auxiliar, destino);
  print("Mueve el disco $n de $origen a $destino");

  hanoi(n-1,auxiliar,destino,origen);

}

void retoHanoi() {
  print('\n🧠 === TORRES DE HANOI ===');
  // Llama a tu función hanoi aquí cuando esté lista
  hanoi(4, 'A', 'C', 'B');
}


// 🚀 FUNCIÓN MAIN
// Prueba todas tus iteraciones y funciones aquí
// 🚀 FUNCIÓN MAIN
// Prueba todas tus iteraciones y funciones aquí
void main() {
  print('=== 🚀 DÍA 10: RECURSIÓN Y EL EXILIO DE LOS BUCLES ===\n');

  print('--- Ejercicio 1: Cuenta Regresiva ---');
  cuentaRegresiva(3);

  print('\n--- Ejercicio 2: Factorial ---');
  print('Factorial de 5 (5!): ${factorial(5)}'); // Debería dar 120

  print('\n--- Ejercicio 3: Suma Recursiva ---');
  print('Suma del 1 al 4: ${sumaRecursiva(4)}'); // Debería dar 10

  print('\n--- Ejercicio 4: Fibonacci ---');
  print('Fibonacci posición 6: ${fibonacci(6)}'); // Debería dar 8

  print('\n--- Ejercicio 5: Sumar Dígitos ---');
  print('Suma de los dígitos de 9876: ${sumaDigitos(9876)}'); // Debería dar 30

  print('\n--- Ejercicio 6: Potencia ---');
  print('2 elevado a la 5: ${potencia(2, 5)}'); // Debería dar 32

  print('\n--- Ejercicio 7: Invertir String ---');
  print('Klyneo invertido: ${invertir("Klyneo")}'); // Debería dar oenylK

  // Reto Final
  retoHanoi();
}