import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 3 — DÍA 14
// Tema: List (Arrays) — CRUD, métodos, iteración
// Fecha: Lunes 14 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// DECLARACIÓN:
//   List<int> numeros = [1, 2, 3];        // Lista fija de enteros
//   List<String> nombres = [];             // Lista vacía (crece dinámicamente)
//   var mixta = <dynamic>[1, 'hola', true]; // Lista de cualquier tipo (evitar)
//
// MÉTODOS PRINCIPALES:
//   lista.add(valor)           → Agrega al final
//   lista.addAll([a, b, c])    → Agrega múltiples al final
//   lista.insert(indice, valor)→ Inserta en posición específica
//   lista.remove(valor)        → Elimina la primera ocurrencia del valor
//   lista.removeAt(indice)     → Elimina por posición
//   lista.indexOf(valor)       → Retorna el índice (o -1 si no existe)
//   lista.contains(valor)      → true/false si existe
//   lista.sort()               → Ordena de menor a mayor
//   lista.reversed              → Iterable invertido (usar .toList())
//   lista.sublist(desde, hasta) → Sub-lista desde 'desde' hasta 'hasta' (exclusivo)
//   lista.length               → Cantidad de elementos
//   lista.isEmpty / isNotEmpty → Si la lista está vacía o no
//
// SPREAD OPERATOR (...):
//   var a = [1, 2];
//   var b = [0, ...a, 3]; // [0, 1, 2, 3] — "esparce" los elementos
//
// FOR-IN (Recorrer listas de forma elegante):
//   for (var nombre in nombres) { print(nombre); }
//
// ============================================

// ✅ Ejercicio 1: CRUD Básico de Lista
// Crea una lista vacía de Strings llamada `frutas`.
// 1. Agrega: 'Manzana', 'Plátano', 'Naranja', 'Uva', 'Mango'
// 2. Imprime la lista completa
// 3. Inserta 'Fresa' en la posición 2
// 4. Elimina 'Plátano'
// 5. Imprime la lista final y su longitud
void ejercicio1() {
  print('\n--- Ejercicio 1: CRUD de Lista ---');
  // Escribe tu código aquí:
  List<String> frutas = [];

  frutas.addAll(['Manzana', 'Plátano','Naranja','Uva','Mango']);
  print('\n$frutas');
  frutas.insert(2,'Fresa');
  frutas.removeAt(1);
  print('\n$frutas  \ncantidad total: ${frutas.length}');

}


// ✅ Ejercicio 2: Invertir una lista SIN usar .reversed
// Recibe una List<int> y retorna una NUEVA lista con los elementos al revés.
// Ejemplo: [1, 2, 3, 4] → [4, 3, 2, 1]
// Usa un bucle for descendente.
List<int> invertirLista(List<int> original) {
  // Escribe tu código aquí:
  return [];
}

void ejercicio2() {
  print('\n--- Ejercicio 2: Invertir Lista ---');
  List<int> datos = [10, 20, 30, 40, 50];
  print('Original: $datos');
  print('Invertida: ${invertirLista(datos)}');
}


// ✅ Ejercicio 3: Encontrar Máximo y Mínimo SIN funciones built-in
// No puedes usar .reduce(), .fold(), ni importar dart:math.
// Recorre la lista con un for y compara manualmente.
int encontrarMaximo(List<int> lista) {
  // Escribe tu código aquí:
  return 0;
}

int encontrarMinimo(List<int> lista) {
  // Escribe tu código aquí:
  return 0;
}

void ejercicio3() {
  print('\n--- Ejercicio 3: Máximo y Mínimo ---');
  List<int> numeros = [45, 12, 89, 3, 67, 23];
  print('Lista: $numeros');
  print('Máximo: ${encontrarMaximo(numeros)}');
  print('Mínimo: ${encontrarMinimo(numeros)}');
}


// ✅ Ejercicio 4: Eliminar Duplicados
// Dada una lista con elementos repetidos, retorna una nueva lista
// sin duplicados manteniendo el orden original.
// Ejemplo: [1, 3, 5, 3, 1, 7, 5] → [1, 3, 5, 7]
// NO uses Set (aún no lo hemos visto a fondo). Usa .contains() para verificar.
List<int> eliminarDuplicados(List<int> lista) {
  // Escribe tu código aquí:
  return [];
}

void ejercicio4() {
  print('\n--- Ejercicio 4: Eliminar Duplicados ---');
  List<int> conDuplicados = [1, 3, 5, 3, 1, 7, 5, 9, 7];
  print('Con duplicados: $conDuplicados');
  print('Sin duplicados: ${eliminarDuplicados(conDuplicados)}');
}


// ✅ Ejercicio 5: Fusionar 2 Listas Ordenadas (Merge)
// Dadas dos listas YA ORDENADAS de menor a mayor, crea una nueva lista
// que contenga todos los elementos de ambas, también ordenada.
// Ejemplo: [1, 3, 5] + [2, 4, 6] → [1, 2, 3, 4, 5, 6]
// Tip: Usa dos índices (i, j) y compara elemento a elemento.
List<int> fusionarOrdenadas(List<int> a, List<int> b) {
  // Escribe tu código aquí:
  return [];
}

void ejercicio5() {
  print('\n--- Ejercicio 5: Merge de Listas ---');
  List<int> lista1 = [1, 3, 5, 7];
  List<int> lista2 = [2, 4, 6, 8];
  print('Lista A: $lista1');
  print('Lista B: $lista2');
  print('Fusionada: ${fusionarOrdenadas(lista1, lista2)}');
}


// ✅ Ejercicio 6: Búsqueda Lineal
// Crea una función `int buscarElemento(List<int> lista, int objetivo)`
// que recorra la lista y retorne el ÍNDICE donde encontró el objetivo.
// Si no lo encuentra, retorna -1.
int buscarElemento(List<int> lista, int objetivo) {
  // Escribe tu código aquí:
  return -1;
}

void ejercicio6() {
  print('\n--- Ejercicio 6: Búsqueda Lineal ---');
  List<int> datos = [10, 25, 3, 47, 88, 12];
  print('Lista: $datos');
  print('Buscar 47: índice ${buscarElemento(datos, 47)}');
  print('Buscar 99: índice ${buscarElemento(datos, 99)}');
}


// ✅ Ejercicio 7: Rotar Lista
// Crea `List<int> rotarLista(List<int> lista, int posiciones)`
// Rota los elementos hacia la izquierda N posiciones.
// Ejemplo: rotarLista([1,2,3,4,5], 2) → [3,4,5,1,2]
// Tip: Usa sublist y spread operator (...)
List<int> rotarLista(List<int> lista, int posiciones) {
  // Escribe tu código aquí:
  return [];
}

void ejercicio7() {
  print('\n--- Ejercicio 7: Rotar Lista ---');
  List<int> datos = [1, 2, 3, 4, 5];
  print('Original: $datos');
  print('Rotada 2: ${rotarLista(datos, 2)}');
}


// ✅ Ejercicio 8: Spread Operator
// Dada una lista de números, crea una nueva lista que contenga:
// [0, ...listaOriginal, 100]
// Luego, crea otra lista que combine 3 listas usando spread.
void ejercicio8() {
  print('\n--- Ejercicio 8: Spread Operator ---');
  List<int> base = [10, 20, 30];
  // Escribe tu código aquí:
}


// ✅ Ejercicio 9: Contar Ocurrencias
// Crea `Map<int, int> contarOcurrencias(List<int> lista)`
// Retorna un Map donde la llave es el número y el valor cuántas veces apareció.
// Ejemplo: [1,2,1,3,2,1] → {1: 3, 2: 2, 3: 1}
Map<int, int> contarOcurrencias(List<int> lista) {
  // Escribe tu código aquí:
  return {};
}

void ejercicio9() {
  print('\n--- Ejercicio 9: Contar Ocurrencias ---');
  List<int> datos = [1, 2, 1, 3, 2, 1, 4, 3, 2];
  print('Lista: $datos');
  print('Ocurrencias: ${contarOcurrencias(datos)}');
}


// ✅ Ejercicio 10: Ordenamiento Burbuja (Bubble Sort)
// Implementa el algoritmo de ordenamiento burbuja.
// Compara pares de elementos adyacentes y los intercambia si están en desorden.
// Repite hasta que no haya más intercambios.
// Modifica la lista IN-PLACE (no crees una nueva).
void bubbleSort(List<int> lista) {
  // Escribe tu código aquí:
}

void ejercicio10() {
  print('\n--- Ejercicio 10: Bubble Sort ---');
  List<int> desordenada = [64, 34, 25, 12, 22, 11, 90];
  print('Antes: $desordenada');
  bubbleSort(desordenada);
  print('Después: $desordenada');
}


// ============================================
// 🧠 RETO DEL DÍA: Gestor de Tareas CLI
// ============================================
// Crea un programa interactivo para gestionar tareas:
//
// Menú:
//   1. Agregar tarea
//   2. Eliminar tarea (por número)
//   3. Marcar como completada
//   4. Listar tareas pendientes
//   5. Listar tareas completadas
//   6. Salir
//
// Tip: Puedes usar dos listas:
//   List<String> pendientes = [];
//   List<String> completadas = [];
//
// O una sola lista de Maps:
//   List<Map<String, dynamic>> tareas = [];
//   Donde cada tarea es: {'nombre': 'Estudiar Dart', 'completada': false}
// ============================================
void retoGestorTareas() {
  print('\n🧠 === GESTOR DE TAREAS ===');
  // Escribe tu código aquí:
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== SEMANA 3: DÍA 14 - Listas ===\n');

  // ejercicio1();
  // ejercicio2();
  // ejercicio3();
  // ejercicio4();
  // ejercicio5();
  // ejercicio6();
  // ejercicio7();
  // ejercicio8();
  // ejercicio9();
  // ejercicio10();
  // retoGestorTareas();
}
