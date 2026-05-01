import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 4 — DÍA 22
// Tema: Algoritmos de Búsqueda
// ============================================
//
// 📖 TEORÍA:
// BÚSQUEDA LINEAL O(n): Recorrer uno por uno hasta encontrarlo.
// BÚSQUEDA BINARIA O(log n): Solo funciona en listas ORDENADAS.
//   Divide la lista a la mitad en cada paso.
//
// ============================================

// ✅ Ejercicio 1: Búsqueda Lineal
int busquedaLineal(List<int> lista, int objetivo) {
  // Escribe tu código aquí:
  return -1;
}

// ✅ Ejercicio 2: Búsqueda Binaria Iterativa
int busquedaBinaria(List<int> lista, int objetivo) {
  // Escribe tu código aquí:
  // Tip: usa dos punteros (izq, der) y calcula mid = (izq + der) ~/ 2
  return -1;
}

// ✅ Ejercicio 3: Búsqueda Binaria Recursiva
int busquedaBinariaRecursiva(List<int> lista, int objetivo, int izq, int der) {
  // Caso base: izq > der → no encontrado (-1)
  // Escribe tu código aquí:
  return -1;
}

// ✅ Ejercicio 4: Search Insert Position (LeetCode #35)
// Dada una lista ordenada y un target, retorna el índice si se encuentra.
// Si no, retorna el índice donde se DEBERÍA insertar para mantener el orden.
// Ejemplo: [1,3,5,6], target=5 → 2 | target=2 → 1 | target=7 → 4
int searchInsert(List<int> nums, int target) {
  // Escribe tu código aquí (usa búsqueda binaria):
  return 0;
}

// ✅ Ejercicio 5: Comparar velocidades
// Genera una lista ordenada de 1,000,000 elementos.
// Mide el tiempo de busquedaLineal vs busquedaBinaria para el mismo elemento.
void ejercicio5() {
  print('\n--- Ejercicio 5: Comparar Velocidades ---');
  List<int> grande = List.generate(1000000, (i) => i);
  int buscar = 999999;
  var sw = Stopwatch();

  sw.start();
  busquedaLineal(grande, buscar);
  sw.stop();
  print('Lineal O(n): ${sw.elapsedMicroseconds} µs');

  sw.reset();
  sw.start();
  busquedaBinaria(grande, buscar);
  sw.stop();
  print('Binaria O(log n): ${sw.elapsedMicroseconds} µs');
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 22: Algoritmos de Búsqueda ===\n');

  List<int> datos = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91];

  print('Lineal (23): ${busquedaLineal(datos, 23)}');
  print('Binaria (23): ${busquedaBinaria(datos, 23)}');
  print('Binaria Recursiva (23): ${busquedaBinariaRecursiva(datos, 23, 0, datos.length - 1)}');
  print('Search Insert (20): ${searchInsert(datos, 20)}');

  ejercicio5();
}
