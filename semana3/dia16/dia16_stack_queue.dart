import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 3 — DÍA 16
// Tema: Implementar Stack y Queue desde cero
// Fecha: Miércoles 16 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// STACK (Pila) — LIFO: Last In, First Out
//   Imagina una torre de platos: solo puedes poner o quitar el de ARRIBA.
//   Operaciones:
//     push(valor)  → Agrega al tope
//     pop()        → Quita y retorna el del tope
//     peek()       → Mira el del tope SIN quitarlo
//     isEmpty      → ¿Está vacía?
//     size         → Cuántos elementos tiene
//
// QUEUE (Cola) — FIFO: First In, First Out
//   Imagina la fila del banco: el primero que llega es el primero que atienden.
//   Operaciones:
//     enqueue(valor) → Agrega al final de la cola
//     dequeue()      → Quita y retorna el primero de la cola
//     front()        → Mira el primero SIN quitarlo
//     isEmpty        → ¿Está vacía?
//     size           → Cuántos elementos tiene
//
// INTERNAMENTE usaremos una List<T> como almacenamiento.
// ============================================

// ════════════════════════════════════════════
// IMPLEMENTA TU STACK AQUÍ
// ════════════════════════════════════════════
// class Stack<T> {
//   final List<T> _items = [];
//
//   void push(T valor) { ... }
//   T pop() { ... }           // Lanza excepción si está vacío
//   T peek() { ... }          // Lanza excepción si está vacío
//   bool get isEmpty => ...;
//   int get size => ...;
//   
//   @override
//   String toString() => 'Stack: $_items';
// }

// Escribe tu clase Stack aquí:


// ════════════════════════════════════════════
// IMPLEMENTA TU QUEUE AQUÍ
// ════════════════════════════════════════════
// class Queue<T> {
//   final List<T> _items = [];
//
//   void enqueue(T valor) { ... }
//   T dequeue() { ... }        // Lanza excepción si está vacío
//   T front() { ... }          // Lanza excepción si está vacío
//   bool get isEmpty => ...;
//   int get size => ...;
//
//   @override
//   String toString() => 'Queue: $_items';
// }

// Escribe tu clase Queue aquí:


// ════════════════════════════════════════════
// EJERCICIOS
// ════════════════════════════════════════════

// ✅ Ejercicio 1: Probar tu Stack
// Crea un Stack<int>, haz push de 5 números, haz pop de 2,
// imprime peek y el tamaño.
void ejercicio1() {
  print('\n--- Ejercicio 1: Probar Stack ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 2: Probar tu Queue
// Crea un Queue<String>, agrega 4 nombres, haz dequeue de 2,
// imprime front y el tamaño.
void ejercicio2() {
  print('\n--- Ejercicio 2: Probar Queue ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 3: Invertir String con Stack
// Usa tu Stack para invertir un String.
// Tip: push cada carácter, luego pop todos para armar el string invertido.
String invertirConStack(String texto) {
  // Escribe tu código aquí:
  return '';
}

void ejercicio3() {
  print('\n--- Ejercicio 3: Invertir con Stack ---');
  print('Jefferson → ${invertirConStack("Jefferson")}');
}


// ✅ Ejercicio 4: Simulador de Cola de Atención
// Simula la cola de un banco. Menú:
//   1. Llega cliente (enqueue)
//   2. Atender cliente (dequeue)
//   3. Ver siguiente cliente (front)
//   4. Ver cola completa
//   5. Salir
void ejercicio4() {
  print('\n--- Ejercicio 4: Cola de Atención ---');
  // Escribe tu código aquí:
}


// ============================================
// 🧠 RETO DEL DÍA: Verificador de Paréntesis Balanceados
// ============================================
// Usa tu Stack<String> para verificar si una expresión tiene
// los paréntesis, corchetes y llaves correctamente balanceados.
//
// Reglas:
//   - Cada '(' debe cerrarse con ')'
//   - Cada '[' debe cerrarse con ']'
//   - Cada '{' debe cerrarse con '}'
//   - Deben estar en el orden correcto
//
// Ejemplos:
//   "((()))"     → true
//   "(())"       → true
//   "({[]})"     → true
//   "(("         → false
//   "([)]"       → false
//   ""           → true
//
// Algoritmo:
//   1. Recorre cada carácter de la expresión.
//   2. Si es un abridor ( [ {, haz push al stack.
//   3. Si es un cerrador ) ] }, haz pop y verifica que coincida.
//   4. Al final, el stack debe estar vacío.
// ============================================
bool parentesisBalanceados(String expresion) {
  // Escribe tu código aquí:
  return false;
}

void retoParentesis() {
  print('\n🧠 === VERIFICADOR DE PARÉNTESIS ===');
  List<String> pruebas = [
    '((()))',
    '({[]})',
    '(())',
    '((',
    '([)]',
    '{[()]}',
    '',
  ];
  for (var expr in pruebas) {
    print('"$expr" → ${parentesisBalanceados(expr)}');
  }
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 16: Stack y Queue ===\n');

  // ejercicio1();
  // ejercicio2();
  // ejercicio3();
  // ejercicio4();
  // retoParentesis();
}
