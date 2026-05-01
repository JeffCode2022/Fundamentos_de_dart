import 'dart:convert';
import 'dart:io';
// import 'package:http/http.dart' as http;

// ============================================
// 🟢 FASE 0 — SEMANA 6 — DÍAS 38-40
// 🏗️ PROYECTO FINAL: "CLI Dashboard"
// ============================================
//
// 🎯 OBJETIVO:
// Una app de línea de comandos que integra ABSOLUTAMENTE TODO lo que
// aprendiste en las 6 semanas: variables, funciones, clases, estructuras
// de datos, algoritmos, manejo de errores, Git, y consumo de APIs.
//
// 📋 FEATURES:
//   1. 🌤️ Clima: Consumir OpenWeatherMap API → clima de tu ciudad
//   2. 📰 Noticias: Consumir NewsAPI → 5 noticias top del día
//   3. 💰 Crypto: Consumir CoinGecko API → precios de BTC, ETH, SOL
//   4. 📝 Tareas: CRUD local guardado en archivo JSON (dart:io)
//   5. 📊 Stats: Resumen con tareas completadas, clima, cripto favorita
//
// 📂 ESTRUCTURA SUGERIDA:
//   proyecto_cli_dashboard/
//   ├── bin/
//   │   └── main.dart          ← Punto de entrada
//   ├── lib/
//   │   ├── models/            ← Post, Weather, Crypto, Task
//   │   ├── services/          ← WeatherService, NewsService, CryptoService
//   │   ├── repositories/      ← TaskRepository (archivo JSON local)
//   │   └── utils/             ← Helpers, colores ANSI, formateo
//   ├── data/
//   │   └── tareas.json        ← Persistencia local
//   ├── pubspec.yaml
//   └── README.md
//
// 🔑 APIs GRATUITAS:
//   Clima: https://openweathermap.org/api (registrarse para API key)
//   Noticias: https://newsapi.org/ (registrarse para API key)
//   Crypto: https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,solana&vs_currencies=usd
//     (¡No necesita API key!)
//
// 🎨 COLORES ANSI (Para hacer la consola bonita):
//   print('\x1B[32m Texto verde \x1B[0m');
//   print('\x1B[31m Texto rojo \x1B[0m');
//   print('\x1B[33m Texto amarillo \x1B[0m');
//   print('\x1B[36m Texto cyan \x1B[0m');
//   print('\x1B[1m Texto en negrita \x1B[0m');
//
// ============================================

// ════════════════════════════════════════════
// MODELOS
// ════════════════════════════════════════════

class Task {
  String titulo;
  bool completada;
  DateTime fechaCreacion;

  Task({
    required this.titulo,
    this.completada = false,
    DateTime? fechaCreacion,
  }) : fechaCreacion = fechaCreacion ?? DateTime.now();

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      titulo: json['titulo'],
      completada: json['completada'],
      fechaCreacion: DateTime.parse(json['fechaCreacion']),
    );
  }

  Map<String, dynamic> toJson() => {
    'titulo': titulo,
    'completada': completada,
    'fechaCreacion': fechaCreacion.toIso8601String(),
  };

  @override
  String toString() => '${completada ? "✅" : "⬜"} $titulo';
}

// Agrega aquí tus modelos Weather, CryptoPrice, NewsArticle...


// ════════════════════════════════════════════
// SERVICIOS (Lógica de APIs)
// ════════════════════════════════════════════

// class WeatherService {
//   final String apiKey;
//   WeatherService(this.apiKey);
//
//   Future<Weather> obtenerClima(String ciudad) async {
//     var url = Uri.parse(
//       'https://api.openweathermap.org/data/2.5/weather?q=$ciudad&appid=$apiKey&units=metric&lang=es'
//     );
//     var res = await http.get(url);
//     if (res.statusCode == 200) {
//       return Weather.fromJson(jsonDecode(res.body));
//     }
//     throw Exception('Error obteniendo clima: ${res.statusCode}');
//   }
// }

// class CryptoService {
//   Future<Map<String, double>> obtenerPrecios() async {
//     var url = Uri.parse(
//       'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,solana&vs_currencies=usd'
//     );
//     var res = await http.get(url);
//     if (res.statusCode == 200) {
//       var data = jsonDecode(res.body);
//       return {
//         'Bitcoin': data['bitcoin']['usd'].toDouble(),
//         'Ethereum': data['ethereum']['usd'].toDouble(),
//         'Solana': data['solana']['usd'].toDouble(),
//       };
//     }
//     throw Exception('Error obteniendo precios');
//   }
// }


// ════════════════════════════════════════════
// REPOSITORIO LOCAL (Tareas en archivo JSON)
// ════════════════════════════════════════════

class TaskRepository {
  final String _filePath;

  TaskRepository(this._filePath);

  List<Task> cargar() {
    var archivo = File(_filePath);
    if (!archivo.existsSync()) return [];
    String contenido = archivo.readAsStringSync();
    if (contenido.isEmpty) return [];
    List datos = jsonDecode(contenido);
    return datos.map((json) => Task.fromJson(json)).toList();
  }

  void guardar(List<Task> tareas) {
    var archivo = File(_filePath);
    archivo.writeAsStringSync(jsonEncode(tareas.map((t) => t.toJson()).toList()));
  }
}


// ════════════════════════════════════════════
// MENÚ Y MAIN
// ════════════════════════════════════════════

void mostrarMenuPrincipal() {
  print('\n\x1B[36m╔══════════════════════════════════════╗\x1B[0m');
  print('\x1B[36m║   📊 CLI DASHBOARD — Jefferson       ║\x1B[0m');
  print('\x1B[36m╠══════════════════════════════════════╣\x1B[0m');
  print('\x1B[36m║\x1B[0m  1. 🌤️  Ver Clima                  \x1B[36m║\x1B[0m');
  print('\x1B[36m║\x1B[0m  2. 💰 Ver Precios Crypto           \x1B[36m║\x1B[0m');
  print('\x1B[36m║\x1B[0m  3. 📝 Gestionar Tareas             \x1B[36m║\x1B[0m');
  print('\x1B[36m║\x1B[0m  4. 📊 Ver Resumen del Día          \x1B[36m║\x1B[0m');
  print('\x1B[36m║\x1B[0m  5. ❌ Salir                        \x1B[36m║\x1B[0m');
  print('\x1B[36m╚══════════════════════════════════════╝\x1B[0m');
  stdout.write('\n\x1B[33m👉 Selecciona una opción: \x1B[0m');
}


void main() async {
  print('\x1B[1m\x1B[36m');
  print('  ╔═══════════════════════════════════════════╗');
  print('  ║  🚀 CLI DASHBOARD v1.0                    ║');
  print('  ║  Proyecto Final — Fase 0 Fundamentos      ║');
  print('  ║  By: Jefferson Chunga                     ║');
  print('  ╚═══════════════════════════════════════════╝');
  print('\x1B[0m');

  // var taskRepo = TaskRepository('data/tareas.json');
  // var tareas = taskRepo.cargar();

  // while (true) {
  //   mostrarMenuPrincipal();
  //   String? opcion = stdin.readLineSync();
  //   switch (opcion) {
  //     case '1': // Clima
  //     case '2': // Crypto
  //     case '3': // Tareas (sub-menú: agregar, listar, completar, eliminar)
  //     case '4': // Resumen
  //     case '5':
  //       print('¡Hasta luego, Jefferson! 🚀');
  //       return;
  //   }
  // }
}
