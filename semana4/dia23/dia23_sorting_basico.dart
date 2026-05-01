import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 4 — DÍA 23
// Tema: Algoritmos de Ordenamiento (Parte 1) — O(n²)
// ============================================

// ✅ Ejercicio 1: Bubble Sort
// Compara pares adyacentes e intercambia si están desordenados.
// Repite hasta que no haya intercambios.
void bubbleSort(List<int> lista) {
  // Escribe tu código aquí:
}

// ✅ Ejercicio 2: Selection Sort
// Busca el mínimo del sub-array desordenado y colócalo al inicio.
void selectionSort(List<int> lista) {
  // Escribe tu código aquí:
}

// ✅ Ejercicio 3: Insertion Sort
// Toma cada elemento e insértalo en su posición correcta
// dentro del sub-array ya ordenado (como ordenar cartas en la mano).
void insertionSort(List<int> lista) {
  // Escribe tu código aquí:
}

// ✅ Ejercicio 4: Visualizar paso a paso
// Modifica UNO de tus algoritmos para que imprima la lista
// después de cada "pasada" completa para ver cómo se ordena.
void bubbleSortVisual(List<int> lista) {
  // Escribe tu código aquí:
}

// ✅ Ejercicio 5: Comparar tiempos
// Genera listas aleatorias de 1000, 5000 y 10000 elementos.
// Mide y compara el tiempo de los 3 algoritmos.
void compararAlgoritmos() {
  print('\n--- Comparar Algoritmos O(n²) ---');
  for (int tamano in [1000, 5000, 10000]) {
    List<int> original = List.generate(tamano, (_) => Random().nextInt(100000));
    print('\n📊 Tamaño: $tamano');

    var copia1 = List<int>.from(original);
    var sw = Stopwatch()..start();
    bubbleSort(copia1);
    sw.stop();
    print('  Bubble:    ${sw.elapsedMilliseconds} ms');

    var copia2 = List<int>.from(original);
    sw.reset(); sw.start();
    selectionSort(copia2);
    sw.stop();
    print('  Selection: ${sw.elapsedMilliseconds} ms');

    var copia3 = List<int>.from(original);
    sw.reset(); sw.start();
    insertionSort(copia3);
    sw.stop();
    print('  Insertion: ${sw.elapsedMilliseconds} ms');
  }
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 23: Sorting O(n²) ===\n');

  List<int> demo = [64, 34, 25, 12, 22, 11, 90];
  print('Original: $demo');

  var c1 = List<int>.from(demo);
  bubbleSort(c1);
  print('Bubble: $c1');

  var c2 = List<int>.from(demo);
  selectionSort(c2);
  print('Selection: $c2');

  var c3 = List<int>.from(demo);
  insertionSort(c3);
  print('Insertion: $c3');

  print('\n--- Visual ---');
  bubbleSortVisual(List<int>.from(demo));

  compararAlgoritmos();
}
