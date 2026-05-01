import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 4 — DÍA 21
// Tema: Big O Notation — Complejidad Temporal y Espacial
// Fecha: Lunes 21 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// Big O mide CUÁNTO TIEMPO o ESPACIO usa tu algoritmo a medida que
// crece la cantidad de datos (n).
//
// COMPLEJIDADES COMUNES (de mejor a peor):
//   O(1)       → Constante. No importa cuántos datos haya. Ej: acceder a lista[0]
//   O(log n)   → Logarítmica. Se reduce a la mitad en cada paso. Ej: búsqueda binaria
//   O(n)       → Lineal. Un recorrido completo. Ej: un for simple
//   O(n log n) → Log-lineal. Ej: Merge Sort, Quick Sort
//   O(n²)      → Cuadrática. Loops anidados. Ej: Bubble Sort
//   O(2^n)     → Exponencial. Fibonacci recursivo sin memo
//
// REGLAS PARA ANALIZAR:
//   1. Ignora constantes: O(2n) = O(n)
//   2. Quédate con el término más grande: O(n² + n) = O(n²)
//   3. Loops anidados se multiplican: for(for()) = O(n * n) = O(n²)
//   4. Loops consecutivos se suman: for() + for() = O(n + n) = O(n)
//
// ============================================

// ✅ Ejercicio 1: Identificar Complejidad
// Analiza cada función e indica su complejidad Big O en un comentario.

// ¿Cuál es la complejidad? → O(?)
int obtenerPrimero(List<int> lista) {
  return lista[0];
}

// ¿Cuál es la complejidad? → O(?)
int sumarTodos(List<int> lista) {
  int suma = 0;
  for (var n in lista) {
    suma += n;
  }
  return suma;
}

// ¿Cuál es la complejidad? → O(?)
bool tieneDuplicados(List<int> lista) {
  for (int i = 0; i < lista.length; i++) {
    for (int j = i + 1; j < lista.length; j++) {
      if (lista[i] == lista[j]) return true;
    }
  }
  return false;
}

// ¿Cuál es la complejidad? → O(?)
void imprimirPares(List<int> lista) {
  for (var a in lista) {
    for (var b in lista) {
      print('$a, $b');
    }
  }
}

void ejercicio1() {
  print('\n--- Ejercicio 1: Identificar Complejidad ---');
  print('Escribe las respuestas como comentarios arriba de cada función.');
}


// ✅ Ejercicio 2: De O(n²) a O(n) — "Dos Sumas"
// Dado un array y un objetivo (target), encuentra dos números
// que sumen exactamente el target. Retorna sus índices.
//
// VERSIÓN LENTA O(n²): dos loops anidados comparando pares.
// VERSIÓN RÁPIDA O(n): usa un Map para guardar los complementos.
//
// Ejemplo: nums = [2, 7, 11, 15], target = 9 → [0, 1] (porque 2+7=9)

// Implementa la versión LENTA:
List<int> twoSumLento(List<int> nums, int target) {
  // Escribe tu código aquí:
  return [];
}

// Implementa la versión RÁPIDA con Map:
List<int> twoSumRapido(List<int> nums, int target) {
  // Escribe tu código aquí:
  return [];
}

void ejercicio2() {
  print('\n--- Ejercicio 2: Two Sum ---');
  List<int> nums = [2, 7, 11, 15];
  print('Lento: ${twoSumLento(nums, 9)}');
  print('Rápido: ${twoSumRapido(nums, 9)}');
}


// ✅ Ejercicio 3: Medir tiempo de ejecución
// Crea una función `int medirTiempo(Function funcion)` que mida
// cuántos milisegundos tarda en ejecutarse una función.
// Usa `Stopwatch()` de Dart.
//
// Tip:
//   var sw = Stopwatch()..start();
//   funcion();
//   sw.stop();
//   return sw.elapsedMilliseconds;
int medirTiempo(Function funcion) {
  // Escribe tu código aquí:
  return 0;
}

void ejercicio3() {
  print('\n--- Ejercicio 3: Medir tiempo ---');
  // Crea una lista grande (10000 elementos) y mide tieneDuplicados vs twoSumRapido
  List<int> grande = List.generate(10000, (i) => Random().nextInt(100000));
  print('Tiempo O(n²): ${medirTiempo(() => tieneDuplicados(grande))} ms');
  print('Tiempo O(n): ${medirTiempo(() => twoSumRapido(grande, 9999))} ms');
}


// ✅ Ejercicio 4: Analiza TU código
// Vuelve a tus archivos del Día 14 y Día 10.
// Escribe la complejidad Big O de estas funciones tuyas:
//   - invertirLista()     → O(?)
//   - eliminarDuplicados()→ O(?)
//   - bubbleSort()        → O(?)
//   - fibonacci(n)        → O(?) (la versión recursiva)
//   - factorial(n)        → O(?)
void ejercicio4() {
  print('\n--- Ejercicio 4: Analiza tu código ---');
  print('Escribe las respuestas como comentarios aquí abajo:');
  // invertirLista → O(?)
  // eliminarDuplicados → O(?)
  // bubbleSort → O(?)
  // fibonacci recursivo → O(?)
  // factorial → O(?)
}


// ✅ Ejercicio 5: Contains Duplicate — Dos enfoques
// Dado un array, determina si algún valor aparece al menos dos veces.
// Implementa 2 versiones:
//   1. O(n²) con loops anidados
//   2. O(n) con Set

bool containsDupLento(List<int> nums) {
  // Escribe tu código aquí:
  return false;
}

bool containsDupRapido(List<int> nums) {
  // Escribe tu código aquí:
  return false;
}

void ejercicio5() {
  print('\n--- Ejercicio 5: Contains Duplicate ---');
  print(containsDupLento([1, 2, 3, 1]));  // true
  print(containsDupRapido([1, 2, 3, 4])); // false
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 21: Big O Notation ===\n');

  // ejercicio1();
  // ejercicio2();
  // ejercicio3();
  // ejercicio4();
  // ejercicio5();
}
