import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

// ============================================
// 🟢 FASE 0 — SEMANA 6 — DÍA 36
// Tema: Consumir APIs desde Dart
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// ASYNC / AWAIT:
//   Las llamadas a internet tardan tiempo. Dart usa `async/await`
//   para esperar la respuesta SIN congelar el programa.
//
//   Future<String> obtenerDatos() async {
//     var respuesta = await http.get(Uri.parse('https://api.com/datos'));
//     return respuesta.body;
//   }
//
// PAQUETE HTTP:
//   Agregar al pubspec.yaml:
//     dependencies:
//       http: ^1.2.0
//   Luego: dart pub get
//
// JSON:
//   import 'dart:convert';
//   var datos = jsonDecode(respuesta.body);  // String → Map
//   var texto = jsonEncode(miMapa);           // Map → String
//
// ============================================

// IMPORTANTE: Antes de ejecutar, crea un archivo pubspec.yaml en esta carpeta:
// name: dia36_apis
// dependencies:
//   http: ^1.2.0
// Luego ejecuta: dart pub get

// ✅ Ejercicio 1: Tu primer GET
// Consume la API de JSONPlaceholder y muestra 5 posts.
Future<void> ejercicio1() async {
  print('\n--- Ejercicio 1: GET Posts ---');
  // var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  // var respuesta = await http.get(url);
  // if (respuesta.statusCode == 200) {
  //   List datos = jsonDecode(respuesta.body);
  //   for (int i = 0; i < 5; i++) {
  //     print('${datos[i]['id']}. ${datos[i]['title']}');
  //   }
  // }
}

// ✅ Ejercicio 2: GET con parámetros
// Busca un usuario específico por ID.
Future<void> ejercicio2() async {
  print('\n--- Ejercicio 2: GET User ---');
  // var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  // Escribe tu código aquí:
}

// ✅ Ejercicio 3: POST — Crear un recurso
// Envía datos para crear un post nuevo.
Future<void> ejercicio3() async {
  print('\n--- Ejercicio 3: POST ---');
  // var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  // var respuesta = await http.post(
  //   url,
  //   headers: {'Content-Type': 'application/json'},
  //   body: jsonEncode({
  //     'title': 'Mi Post desde Dart',
  //     'body': 'Esto fue creado con código',
  //     'userId': 1,
  //   }),
  // );
  // print('Status: ${respuesta.statusCode}');
  // print('Respuesta: ${respuesta.body}');
}

// ✅ Ejercicio 4: Manejo de errores en requests
// ¿Qué pasa si la URL no existe? ¿Y si no hay internet?
Future<void> ejercicio4() async {
  print('\n--- Ejercicio 4: Error Handling ---');
  // try {
  //   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/9999');
  //   var respuesta = await http.get(url);
  //   if (respuesta.statusCode == 200) {
  //     print('Éxito: ${respuesta.body}');
  //   } else if (respuesta.statusCode == 404) {
  //     print('Error 404: Recurso no encontrado');
  //   } else {
  //     print('Error ${respuesta.statusCode}');
  //   }
  // } catch (e) {
  //   print('Error de conexión: $e');
  // }
}


// ============================================
// 🧠 RETO: PokéAPI Explorer
// ============================================
// Pide al usuario el nombre de un Pokémon por consola.
// Consume la PokéAPI y muestra:
//   - Nombre
//   - ID
//   - Tipos
//   - Stats (HP, Attack, Defense, Speed)
//   - Habilidades
// Si el pokémon no existe, muestra error amigable.
//
// URL: https://pokeapi.co/api/v2/pokemon/{nombre}
// ============================================
Future<void> retoPokemon() async {
  print('\n🧠 === POKÉMON EXPLORER ===');
  // Escribe tu código aquí:
}


// 🚀 FUNCIÓN MAIN
void main() async {
  print('=== DÍA 36: APIs desde Dart ===\n');

  // await ejercicio1();
  // await ejercicio2();
  // await ejercicio3();
  // await ejercicio4();
  // await retoPokemon();
}
