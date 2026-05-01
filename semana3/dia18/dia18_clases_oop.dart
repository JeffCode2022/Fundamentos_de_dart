import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 3 — DÍA 18
// Tema: Introducción a Clases y OOP
// Fecha: Viernes 18 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// CLASE = Plano/Molde para crear objetos.
// OBJETO = Instancia concreta creada a partir de la clase.
//
// class Persona {
//   // PROPIEDADES (atributos)
//   String nombre;
//   int edad;
//
//   // CONSTRUCTOR (se ejecuta al crear el objeto)
//   Persona(this.nombre, this.edad);
//
//   // CONSTRUCTOR NOMBRADO
//   Persona.invitado() : nombre = 'Invitado', edad = 0;
//
//   // MÉTODOS (funciones del objeto)
//   void saludar() {
//     print('Hola, soy $nombre y tengo $edad años');
//   }
//
//   // toString (cómo se imprime el objeto)
//   @override
//   String toString() => 'Persona($nombre, $edad)';
// }
//
// ENCAPSULACIÓN:
//   En Dart, los atributos privados empiezan con guión bajo (_).
//   String _password;  // Solo accesible dentro del archivo
//
// GETTERS Y SETTERS:
//   String get password => _password;
//   set password(String valor) {
//     if (valor.length >= 8) _password = valor;
//   }
//
// ============================================

// ✅ Ejercicio 1: Tu primera clase
// Crea una clase `Producto` con:
//   - Propiedades: nombre (String), precio (double), stock (int)
//   - Constructor que reciba los 3 valores
//   - Método `mostrarInfo()` que imprima los datos del producto
//   - Override de `toString()`
// Crea 3 productos en el main e imprime su info.

// Escribe tu clase Producto aquí:


void ejercicio1() {
  print('\n--- Ejercicio 1: Clase Producto ---');
  // Crea 3 instancias de Producto aquí:
}


// ✅ Ejercicio 2: Clase Estudiante con promedio
// Crea una clase `Estudiante` con:
//   - Propiedades: nombre (String), notas (List<double>)
//   - Constructor
//   - Método `double calcularPromedio()` que retorne el promedio de notas
//   - Método `String obtenerEstado()` que retorne 'Aprobado' (>=60) o 'Reprobado'
//   - Método `void agregarNota(double nota)` que agregue a la lista
//   - Override de toString()

// Escribe tu clase Estudiante aquí:


void ejercicio2() {
  print('\n--- Ejercicio 2: Clase Estudiante ---');
  // Crea un estudiante, agrega notas, muestra promedio y estado.
}


// ✅ Ejercicio 3: Encapsulación — Cuenta Bancaria
// Crea una clase `CuentaBancaria` con:
//   - Propiedades PRIVADAS: _titular (String), _saldo (double)
//   - Constructor que reciba titular y saldo inicial
//   - GETTER: `double get saldo => _saldo;`
//   - GETTER: `String get titular => _titular;`
//   - Método `void depositar(double monto)` → valida monto > 0
//   - Método `void retirar(double monto)` → valida monto > 0 y saldo suficiente
//   - Override toString()

// Escribe tu clase CuentaBancaria aquí:


void ejercicio3() {
  print('\n--- Ejercicio 3: CuentaBancaria ---');
  // Crea una cuenta, deposita, retira, e imprime el saldo.
}


// ✅ Ejercicio 4: Constructor nombrado
// Crea una clase `Vehiculo` con:
//   - marca, modelo, año, color
//   - Constructor principal: Vehiculo(marca, modelo, año, color)
//   - Constructor nombrado: Vehiculo.basico(marca, modelo) → año=2026, color='Negro'
//   - Método `String descripcion()` que retorne una cadena descriptiva

// Escribe tu clase Vehiculo aquí:


void ejercicio4() {
  print('\n--- Ejercicio 4: Constructor nombrado ---');
  // Crea un vehículo completo y uno básico.
}


// ✅ Ejercicio 5: Clase con métodos de cálculo
// Crea una clase `Rectangulo` con:
//   - Propiedades: base (double), altura (double)
//   - GETTER: `double get area => base * altura;`
//   - GETTER: `double get perimetro => 2 * (base + altura);`
//   - GETTER: `bool get esCuadrado => base == altura;`
//   - Override toString()

// Escribe tu clase Rectangulo aquí:


void ejercicio5() {
  print('\n--- Ejercicio 5: Rectángulo ---');
  // Crea rectángulos, imprime área, perímetro, y si es cuadrado.
}


// ✅ Ejercicio 6: Lista de objetos
// Crea una List<Producto> con 5 productos (reusa tu clase del Ejercicio 1).
// 1. Imprime todos los productos
// 2. Filtra los que tengan precio > 100 (usa .where())
// 3. Calcula el valor total del inventario (precio * stock de cada uno)
void ejercicio6() {
  print('\n--- Ejercicio 6: Lista de objetos ---');
  // Escribe tu código aquí:
}


// ============================================
// 🧠 RETO DEL DÍA: Refactorizar Stack, Queue y LinkedList
// ============================================
// Toma tus implementaciones del Día 16 y 17 y asegúrate de que:
// 1. Usen encapsulación (propiedades privadas con _)
// 2. Tengan getters para isEmpty y size
// 3. Lancen excepciones con mensajes claros al hacer pop/dequeue de una estructura vacía
// 4. Tengan un toString() descriptivo
//
// Si ya las hiciste así, ¡felicidades! Solo pruébalas aquí.
// ============================================
void retoRefactorizar() {
  print('\n🧠 === RETO: REFACTORIZAR ===');
  // Prueba tus estructuras refactorizadas aquí:
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 18: Clases y OOP ===\n');

  // ejercicio1();
  // ejercicio2();
  // ejercicio3();
  // ejercicio4();
  // ejercicio5();
  // ejercicio6();
  // retoRefactorizar();
}
