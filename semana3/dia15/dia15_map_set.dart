import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 3 — DÍA 15
// Tema: Map (Diccionarios) y Set
// Fecha: Martes 15 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// MAP (Diccionario clave-valor):
//   Map<String, int> edades = {'Jefferson': 25, 'Ana': 30};
//   edades['Pedro'] = 28;              // Agregar/Modificar
//   print(edades['Jefferson']);         // Acceder → 25
//   edades.remove('Ana');              // Eliminar
//   edades.containsKey('Pedro');       // ¿Existe la clave? → true
//   edades.containsValue(28);          // ¿Existe el valor? → true
//   edades.keys                        // Iterable de claves
//   edades.values                      // Iterable de valores
//   edades.entries                     // Iterable de MapEntry(key, value)
//   edades.forEach((k, v) => print('$k: $v'));
//
// SET (Conjunto — NO permite duplicados):
//   Set<int> numeros = {1, 2, 3, 3, 3}; // Se guarda {1, 2, 3}
//   numeros.add(4);
//   numeros.remove(2);
//   numeros.contains(3);               // true
//   numeros.union({5, 6});             // {1, 3, 4, 5, 6}
//   numeros.intersection({3, 4, 99}); // {3, 4}
//   numeros.difference({3});           // {1, 4}
//
// ============================================

// ✅ Ejercicio 1: CRUD de Map
// Crea un Map<String, String> llamado `agenda` (nombre → teléfono).
// 1. Agrega 3 contactos
// 2. Busca uno por nombre e imprime su teléfono
// 3. Modifica el teléfono de uno existente
// 4. Elimina un contacto
// 5. Imprime todos los contactos con forEach
void ejercicio1() {
  print('\n--- Ejercicio 1: CRUD de Map ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 2: Contar frecuencia de palabras
// Dada una frase, cuenta cuántas veces aparece cada palabra.
// Retorna un Map<String, int> donde clave=palabra, valor=cantidad.
// Tip: usa frase.split(' ') para obtener una lista de palabras.
Map<String, int> contarPalabras(String frase) {
  // Escribe tu código aquí:
  return {};
}

void ejercicio2() {
  print('\n--- Ejercicio 2: Frecuencia de palabras ---');
  String texto = 'dart es genial dart es rapido dart es moderno';
  print('Frase: $texto');
  print('Frecuencia: ${contarPalabras(texto)}');
}


// ✅ Ejercicio 3: Inventario con Map
// Crea un Map<String, Map<String, dynamic>> para un inventario.
// Cada producto tiene: nombre, precio (double), stock (int).
// Ejemplo: {'laptop': {'precio': 1500.0, 'stock': 5}}
// 1. Agrega 3 productos
// 2. Imprime el inventario completo formateado
// 3. Actualiza el stock de un producto
// 4. Calcula el valor total del inventario (precio * stock de cada uno)
void ejercicio3() {
  print('\n--- Ejercicio 3: Inventario ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 4: Set básico
// 1. Crea dos Sets de enteros con algunos elementos en común
// 2. Imprime la unión, intersección y diferencia
// 3. Verifica si un elemento existe con .contains()
void ejercicio4() {
  print('\n--- Ejercicio 4: Set básico ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 5: Elementos únicos con Set
// Dada una lista con duplicados, usa un Set para obtener solo los únicos.
// Luego convierte de vuelta a List.
// Ejemplo: [1, 2, 3, 2, 1, 4] → [1, 2, 3, 4]
List<int> obtenerUnicos(List<int> lista) {
  // Escribe tu código aquí:
  return [];
}

void ejercicio5() {
  print('\n--- Ejercicio 5: Únicos con Set ---');
  print(obtenerUnicos([5, 3, 5, 1, 3, 7, 1, 9]));
}


// ✅ Ejercicio 6: Estudiantes y notas
// Crea un Map<String, List<double>> donde la clave es el nombre del estudiante
// y el valor es una lista de sus notas.
// Calcula e imprime el promedio de cada estudiante.
void ejercicio6() {
  print('\n--- Ejercicio 6: Estudiantes y notas ---');
  // Escribe tu código aquí:
}


// ✅ Ejercicio 7: Invertir un Map
// Crea una función que reciba un Map<String, String> y retorne
// un nuevo Map con las claves y valores intercambiados.
// Ejemplo: {'a': '1', 'b': '2'} → {'1': 'a', '2': 'b'}
Map<String, String> invertirMap(Map<String, String> original) {
  // Escribe tu código aquí:
  return {};
}

void ejercicio7() {
  print('\n--- Ejercicio 7: Invertir Map ---');
  Map<String, String> codigos = {'PE': 'Perú', 'CO': 'Colombia', 'MX': 'México'};
  print('Original: $codigos');
  print('Invertido: ${invertirMap(codigos)}');
}


// ✅ Ejercicio 8: Verificar anagramas con Map
// Dos palabras son anagramas si tienen las mismas letras con la misma frecuencia.
// Ejemplo: "roma" y "amor" → true
// Usa un Map para contar las letras de cada palabra y compáralos.
bool sonAnagramas(String a, String b) {
  // Escribe tu código aquí:
  return false;
}

void ejercicio8() {
  print('\n--- Ejercicio 8: Anagramas ---');
  print('roma - amor: ${sonAnagramas("roma", "amor")}');   // true
  print('hola - halo: ${sonAnagramas("hola", "halo")}');   // true
  print('dart - data: ${sonAnagramas("dart", "data")}');   // false
}


// ============================================
// 🧠 RETO DEL DÍA: Mini Diccionario Español-Inglés
// ============================================
// Menú:
//   1. Buscar traducción (español → inglés)
//   2. Agregar nueva traducción
//   3. Listar todas las traducciones
//   4. Eliminar una traducción
//   5. Salir
//
// Usa Map<String, String> donde clave=español, valor=inglés
// Precarga al menos 5 traducciones.
// ============================================
void retoDiccionario() {
  print('\n🧠 === MINI DICCIONARIO ===');
  // Escribe tu código aquí:
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 15: Map y Set ===\n');

  // ejercicio1();
  // ejercicio2();
  // ejercicio3();
  // ejercicio4();
  // ejercicio5();
  // ejercicio6();
  // ejercicio7();
  // ejercicio8();
  // retoDiccionario();
}
