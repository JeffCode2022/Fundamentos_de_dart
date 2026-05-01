import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 4 — DÍA 24
// Tema: Algoritmos de Ordenamiento (Parte 2) — O(n log n)
// ============================================
//
// Estos algoritmos usan "Divide and Conquer" (Dividir y Conquistar):
// 1. DIVIDIR el problema en sub-problemas más pequeños
// 2. CONQUISTAR resolviendo cada sub-problema
// 3. COMBINAR las soluciones
//
// ============================================

// ✅ Ejercicio 1: Merge Sort
// Divide la lista a la mitad recursivamente hasta tener listas de 1 elemento.
// Luego "fusiona" (merge) las sub-listas de forma ordenada.
//
// mergeSort([38, 27, 43, 3])
//   → mergeSort([38, 27]) + mergeSort([43, 3])
//   → [27, 38] + [3, 43]
//   → merge → [3, 27, 38, 43]
List<int> mergeSort(List<int> lista) {
  // Caso base
  if (lista.length <= 1) return lista;

  // Dividir
  // Escribe tu código aquí:

  // Conquistar (llamada recursiva)

  // Combinar (merge)
  return [];
}

// Función auxiliar para fusionar dos listas ordenadas
List<int> merge(List<int> izq, List<int> der) {
  // Escribe tu código aquí (usa dos índices como en el Día 14 ejercicio 5):
  return [];
}


// ✅ Ejercicio 2: Quick Sort
// Elige un "pivote" (generalmente el último elemento).
// Coloca los menores a la izquierda y los mayores a la derecha.
// Repite recursivamente en cada mitad.
void quickSort(List<int> lista, int inicio, int fin) {
  if (inicio >= fin) return;

  // Particionar
  // int pivotIndex = partition(lista, inicio, fin);

  // Ordenar sub-listas
  // quickSort(lista, inicio, pivotIndex - 1);
  // quickSort(lista, pivotIndex + 1, fin);
}

int partition(List<int> lista, int inicio, int fin) {
  // Escribe tu código aquí:
  // Pivote = lista[fin]
  // i = inicio - 1
  // Recorre j desde inicio hasta fin-1
  // Si lista[j] <= pivote: i++, swap(lista[i], lista[j])
  // Al final: swap(lista[i+1], lista[fin])
  // Retorna i+1
  return 0;
}


// ✅ Ejercicio 3: Comparar TODOS los algoritmos
// Compara los 5 algoritmos (Bubble, Selection, Insertion, Merge, Quick)
// con listas de 1000, 10000 y 50000 elementos.
void compararTodos() {
  print('\n--- Comparar TODOS los algoritmos ---');
  for (int tamano in [1000, 10000, 50000]) {
    List<int> original = List.generate(tamano, (_) => Random().nextInt(100000));
    print('\n📊 Tamaño: $tamano');

    // Merge Sort
    var copia1 = List<int>.from(original);
    var sw = Stopwatch()..start();
    mergeSort(copia1);
    sw.stop();
    print('  Merge Sort:  ${sw.elapsedMilliseconds} ms');

    // Quick Sort
    var copia2 = List<int>.from(original);
    sw.reset(); sw.start();
    quickSort(copia2, 0, copia2.length - 1);
    sw.stop();
    print('  Quick Sort:  ${sw.elapsedMilliseconds} ms');
  }
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 24: Sorting O(n log n) ===\n');

  List<int> demo = [38, 27, 43, 3, 9, 82, 10];
  print('Original: $demo');

  print('Merge Sort: ${mergeSort(List<int>.from(demo))}');

  var quickDemo = List<int>.from(demo);
  quickSort(quickDemo, 0, quickDemo.length - 1);
  print('Quick Sort: $quickDemo');

  compararTodos();
}
