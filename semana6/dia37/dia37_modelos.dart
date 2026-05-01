import 'dart:convert';

// ============================================
// 🟢 FASE 0 — SEMANA 6 — DÍA 37
// Tema: Modelos de Datos + JSON Serialization
// ============================================
//
// 📖 TEORÍA:
// En vez de manejar Maps crudos del JSON, creamos CLASES MODELO
// que representan los datos de forma tipada y segura.
//
// FACTORY CONSTRUCTOR:
//   Un constructor especial que puede retornar una instancia existente
//   o crear una nueva. Perfecto para parsear JSON.
//
//   class User {
//     final int id;
//     final String name;
//     User({required this.id, required this.name});
//
//     factory User.fromJson(Map<String, dynamic> json) {
//       return User(id: json['id'], name: json['name']);
//     }
//
//     Map<String, dynamic> toJson() => {'id': id, 'name': name};
//   }
//
// ============================================

// ✅ Ejercicio 1: Modelo Post
// Crea una clase Post con: id, title, body, userId
// Incluye: constructor, fromJson, toJson, toString
class Post {
  // Escribe tu código aquí:

  // factory Post.fromJson(Map<String, dynamic> json) { ... }
  // Map<String, dynamic> toJson() { ... }
}


// ✅ Ejercicio 2: Modelo Pokemon
// Crea una clase Pokemon con: id, name, types (List<String>), 
// hp, attack, defense, speed
class Pokemon {
  // Escribe tu código aquí:

  // factory Pokemon.fromJson(Map<String, dynamic> json) {
  //   // Los tipos están en: json['types'][0]['type']['name']
  //   // Los stats están en: json['stats'][0]['base_stat']
  // }
}


// ✅ Ejercicio 3: Modelo Weather
// Crea una clase Weather con: city, temp, description, humidity
class Weather {
  // Escribe tu código aquí:

  // factory Weather.fromJson(Map<String, dynamic> json) {
  //   // La ciudad está en: json['name']
  //   // La temp en: json['main']['temp']
  //   // Descripción en: json['weather'][0]['description']
  // }
}


// ✅ Ejercicio 4: Parsear Lista de JSON a Lista de objetos
// Dado un JSON string con un array de posts, conviértelo a List<Post>.
List<Post> parsearPosts(String jsonString) {
  // List datos = jsonDecode(jsonString);
  // return datos.map((json) => Post.fromJson(json)).toList();
  return [];
}


// ✅ Ejercicio 5: Mini Repositorio (Patrón Repository)
// Crea una clase abstracta que define las operaciones:
// abstract class PostRepository {
//   Future<List<Post>> obtenerTodos();
//   Future<Post> obtenerPorId(int id);
//   Future<Post> crear(Post post);
// }
// Luego crea ApiPostRepository que implemente esa interfaz
// usando el paquete http.


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 37: Modelos y JSON ===\n');

  // Prueba parseando JSON manualmente:
  String jsonEjemplo = '{"id": 1, "title": "Hola", "body": "Mundo", "userId": 1}';
  // var post = Post.fromJson(jsonDecode(jsonEjemplo));
  // print(post);
  // print(post.toJson());
}
