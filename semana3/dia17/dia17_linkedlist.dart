import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 3 — DÍA 17
// Tema: LinkedList desde cero
// Fecha: Jueves 17 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// ¿Qué es una LinkedList?
// Es una estructura de datos donde cada elemento (llamado "Nodo") contiene:
//   1. Un VALOR (el dato que queremos guardar)
//   2. Un PUNTERO (referencia) al SIGUIENTE nodo
//
// A diferencia de una List (Array), los elementos NO están uno al lado del
// otro en la memoria. Están conectados como una cadena de eslabones.
//
// VENTAJAS vs Array:
//   - Insertar/Eliminar al inicio es O(1) → instantáneo
//   - No necesita redimensionar (no tiene tamaño fijo)
//
// DESVENTAJAS:
//   - Acceder al elemento N requiere recorrer N nodos → O(n)
//   - Usa más memoria (cada nodo guarda el dato + el puntero)
//
// ESTRUCTURA:
//   class Node<T> {
//     T data;
//     Node<T>? next;  // Apunta al siguiente (o null si es el último)
//     Node(this.data);
//   }
//
// ============================================

// ════════════════════════════════════════════
// 1. IMPLEMENTA TU CLASE NODE
// ════════════════════════════════════════════
// class Node<T> {
//   T data;
//   Node<T>? next;
//   Node(this.data);
// }

// Escribe tu clase Node aquí:


// ════════════════════════════════════════════
// 2. IMPLEMENTA TU CLASE LINKEDLIST
// ════════════════════════════════════════════
// class LinkedList<T> {
//   Node<T>? _head;   // El primer nodo
//   int _length = 0;
//
//   // Métodos a implementar:
//   void addFirst(T data)   → Agrega al INICIO
//   void addLast(T data)    → Agrega al FINAL
//   T removeFirst()         → Quita el primero y lo retorna
//   T removeLast()          → Quita el último y lo retorna
//   bool contains(T data)   → ¿Existe este dato en la lista?
//   int get length           → Cuántos nodos hay
//   bool get isEmpty         → ¿Está vacía?
//   void printList()         → Imprime: [A] -> [B] -> [C] -> null
//
//   @override
//   String toString() { ... }
// }

// Escribe tu clase LinkedList aquí:


// ════════════════════════════════════════════
// EJERCICIOS
// ════════════════════════════════════════════

// ✅ Ejercicio 1: Construir y recorrer
// Crea una LinkedList<int>, agrega 5 números con addLast
// e imprime la lista con printList.
void ejercicio1() {
  print('\n--- Ejercicio 1: Construir LinkedList ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 2: addFirst vs addLast
// Agrega 3 elementos con addFirst y 3 con addLast.
// Observa el orden resultante y explica con un comentario por qué es así.
void ejercicio2() {
  print('\n--- Ejercicio 2: addFirst vs addLast ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 3: removeFirst y removeLast
// Crea una lista, haz remove del primero y del último.
// Imprime qué elementos se removieron y cómo queda la lista.
void ejercicio3() {
  print('\n--- Ejercicio 3: Remove ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 4: Buscar con contains
// Crea una lista de nombres. Pregunta al usuario un nombre
// y dile si está o no en la lista usando contains().
void ejercicio4() {
  print('\n--- Ejercicio 4: Buscar ---');
  // Escribe tu código aquí:
}


// ============================================
// 🧠 RETO DEL DÍA: Método reverse()
// ============================================
// Agrega un método `void reverse()` a tu clase LinkedList
// que invierta todos los nodos IN-PLACE (sin crear una nueva lista).
//
// Antes: [1] -> [2] -> [3] -> [4] -> null
// Después: [4] -> [3] -> [2] -> [1] -> null
//
// Algoritmo (3 punteros):
//   Node<T>? prev = null;
//   Node<T>? current = _head;
//   while (current != null) {
//     Node<T>? nextNode = current.next;  // Guardar referencia al siguiente
//     current.next = prev;               // Invertir el puntero
//     prev = current;                    // Avanzar prev
//     current = nextNode;               // Avanzar current
//   }
//   _head = prev;                       // El nuevo head es el último que procesamos
// ============================================
void retoReverse() {
  print('\n🧠 === RETO: REVERSE ===');
  // Crea una lista, imprímela, llama a reverse(), imprímela de nuevo.
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 17: LinkedList ===\n');

  // ejercicio1();
  // ejercicio2();
  // ejercicio3();
  // ejercicio4();
  // retoReverse();
}
