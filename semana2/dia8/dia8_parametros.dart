import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 2 — DÍA 8
// Tema: Parámetros Nombrados, Opcionales y Por Defecto
// Fecha: Martes 8 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// 1. PARÁMETROS POSICIONALES (Los de siempre):
//    void saludar(String nombre, int edad) { ... }
//    saludar('Jefferson', 25); // El orden importa.
//
// 2. PARÁMETROS OPCIONALES POSICIONALES [ ]:
//    void despedir(String nombre, [String? apodo]) { ... }
//    despedir('Jefferson'); // Válido, apodo es null.
//
// 3. PARÁMETROS NOMBRADOS { }:
//    Sirven para que no importe el orden al llamar a la función e indican explícitamente qué dato mandas.
//    Se usa la palabra clave `required` si es obligatorio que te lo pasen.
//
//    void registrarUsuario({required String nombre, required int edad, String? correo}) { ... }
//    registrarUsuario(edad: 25, nombre: 'Jefferson'); // El orden da igual
//
// 4. VALORES POR DEFECTO:
//    Puedes darle un valor por defecto si el usuario no envía el parámetro nombrado o el opcional.
//
//    void configurarApp({String tema = 'Oscuro', bool notificaciones = true}) { ... }
//
// 5. FUNCIONES FLECHA (Arrow Functions) =>
//    Para funciones que tienen una sola línea de código o retorno. Retornan automáticamente.
//    int sumar(int a, int b) => a + b;
//
// ============================================

// ✅ Ejercicio 1: Arrow Function
// Convierte esta función normal a una Arrow Function '=>'.
// int multiplicar(int a, int b) { return a * b; }
// Escribe tu función aquí:
  int multiplica(int a, int b )=> a * b;


// ✅ Ejercicio 2: Parámetro Opcional Posicional
// Crea una función `mostrarPerfil(String nombre, [String? profesion])`
// Debe imprimir: "Nombre: [nombre]" y si tiene profesión, también: "Profesión: [profesion]".
// Escribe tu función aquí:
  void mostrarPerfil(String nombre, [String? profesion]){
    print('Nombre:  $nombre');

    if(profesion != null){
      print('Profesión: $profesion');
    }
  }


// ✅ Ejercicio 3: Parámetros Nombrados Requeridos
// Crea una función `crearVehiculo({required String marca, required String modelo})`
// Retorna un String: "Vehículo creado: [marca] [modelo]"
// Escribe tu función aquí:

String crearVehiculo({required String marca, required String modelo}){
  return 'Vehículo Creado: $marca $modelo';
}


// ✅ Ejercicio 4: Valores por Defecto
// Crea una función `saludarUsuario({required String nombre, String idioma = 'es'})`
// Si el idioma es 'es', imprime "Hola [nombre]".
// Si el idioma es 'en', imprime "Hello [nombre]".
// Escribe tu función aquí:
String saludarUsuario({required String nombre, String idioma ='es'}){
  String saludo = (idioma == 'es')? 'Hola, $nombre': 'Hello, $nombre';
  return saludo; 
}


// ✅ Ejercicio 5: Arrow Function + Parámetros Nombrados
// Crea una función flecha `calcularDescuento({required double precio, double porcentaje = 10.0})`
// Debe retornar el precio final luego del descuento.
// Escribe tu función aquí:
  double calcularDescuento({required double precio, double porcentaje=10.0})=> precio - (precio * (porcentaje/100)); 


// ✅ Ejercicio 6: Formateador Opcional
// Crea `imprimirMensaje(String mensaje, {bool mayusculas = false})`.
// Imprime el mensaje normal, pero si mayusculas es true, imprímelo todo en mayúsculas (.toUpperCase()).
// Escribe tu función aquí:
void imprimirMensaje(String mensaje, {bool mayusculas = false}){
  if(mayusculas){
    print(mensaje.toUpperCase());
  }else{

  print(mensaje);
  }
}


// ✅ Ejercicio 7: Buscador Simulado (Mezcla posicional y nombrado)
// Crea `buscarProducto(String termino, {int limiteResultados = 10, bool ordenarPorPrecio = false})`
// Imprime: "Buscando '[termino]'. Límite: [limiteResultados]. Ordenar por precio: [ordenarPorPrecio]."
// Escribe tu función aquí:

void buscarProducto(String termino,{int limiteResultados = 10, bool ordenarPorPrecio=false}){
  print("Buscar'$termino'. Limite: $limiteResultados. Ordenar por precio: $ordenarPorPrecio");
}


// ✅ Ejercicio 8: La Función Flexible
// Vas a crear la función `crearSaludo(String nombre, {String? titulo, String puntuacion = '.'})`
// Ejemplo de uso: crearSaludo('Jefferson', titulo: 'Ing.', puntuacion: '!');
// Debería imprimir: "Hola Ing. Jefferson!"
// Si no hay titulo, sería: "Hola Jefferson." (con la puntuación por defecto)
// Escribe tu función aquí:
void crearSaludo(String nombre,{String? titulo, String puntuacion ='.'}){
  if(titulo != null){
    print('Hola, $titulo $nombre$puntuacion');
  }else{
    print('Hola, $nombre$puntuacion');
  }
  
}


// ============================================
// 🧠 RETO DEL DÍA: Generador de Contraseñas
// ============================================
// Escribe una función `generarPassword({ ... })` que reciba:
// - longitud (int, parámetro opcional con defecto 8)
// - incluirMayusculas (bool, defecto true)
// - incluirNumeros (bool, defecto true)
// - incluirSimbolos (bool, defecto false)
//
// Retorna la contraseña (un String) generada aleatoriamente.
//
// Hint: Para hacerlo aleatorio importa 'dart:math' (ya está importado arriba) y usa `Random().nextInt(limite)`.
// Strings de base que puedes usar:
// "abcdefghijklmnopqrstuvwxyz"
// "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
// "0123456789"
// "!@#\$%^&*()_+"
// ============================================

String generarPassword({
  int longitud = 8, 
  bool incluirMayusculas = true, 
  bool incluirNumeros = true, 
  bool incluirSimbolos = false}) {
  // Borra este return vacío y escribe tu lógica aquí

  String minusculas ="abcdefghijklmnopqrstuvwxyz";
  String mayusculas ="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String numeros    ="0123456789";
  String simbolos ="!@#\$%^&*()_+";

  String caracterPermitidos = minusculas;

  if(incluirMayusculas){
    caracterPermitidos += mayusculas;
  }
  if(incluirNumeros){
    caracterPermitidos += numeros;
  }
  if(incluirSimbolos){
    caracterPermitidos += simbolos;
  }

  Random random = Random();
  String password = '';

  for(int i = 0; i<longitud; i++){
    int indiceAlateorio = random.nextInt(caracterPermitidos.length);
    password += caracterPermitidos[indiceAlateorio];
  }

  return password; 


  
}

// 🚀 FUNCIÓN MAIN
// Prueba todas tus funciones aquí.
void main() {
  print('=== SEMANA 2: DÍA 8 - Parámetros ===\n');

  mostrarPerfil('Jefferson Chunga', 'Ingeniero de Sistemas');
  String miCarro = crearVehiculo(modelo:'Honda' , marca: 'Civic');
  print(miCarro);

  // 1. Usando el valor por defecto (español)
  saludarUsuario(nombre: 'Jefferson'); 

  // 2. Cambiando el idioma a inglés
  saludarUsuario(nombre: 'Nicolle', idioma: 'en');

  // Caso 1: Usando el 10% por defecto
  double precioFinal1 = calcularDescuento(precio: 1000.0);
  print('Precio con 10% desc: \$${precioFinal1}'); // 900.0

  // 1. Caso por defecto (minúsculas/normal)
  imprimirMensaje("Bienvenido a Klyneo"); 

  // 2. Caso con parámetro nombrado activado
  imprimirMensaje("alerta de seguridad", mayusculas: true);

  // 1. Solo el término obligatorio (usa los valores por defecto)
  buscarProducto('Practicante de Sistemas');

  // 2. Modificando solo un parámetro nombrado (el orden no importa)
  buscarProducto('Desarrollador Flutter', ordenarPorPrecio: true);

  // 3. Modificando todos los parámetros
  buscarProducto('Diseñador UX/UI', limiteResultados: 5, ordenarPorPrecio: true);

  // 1. Solo nombre (Toma la puntuación por defecto '.')
  crearSaludo('Jefferson'); 
  // Salida: Hola Jefferson.

  // 2. Nombre y Título (Toma la puntuación por defecto)
  crearSaludo('Jefferson', titulo: 'Ing.'); 
  // Salida: Hola Ing. Jefferson.

  // 3. Todos los parámetros (Sobrescribe el valor por defecto)
  crearSaludo('Nicolle', titulo: 'Lic.', puntuacion: '!'); 
  // Salida: Hola Lic. Nicolle!


  print('--- 🔐 GENERADOR DE CONTRASEÑAS KLYNEO ---');

  // Prueba 1: Usando los valores por defecto (8 caracteres, con mayúsculas y números)
  print('Defecto: ${generarPassword()}');

  // Prueba 2: Contraseña corta solo de letras minúsculas
  print('Pin básico: ${generarPassword(longitud: 4, incluirMayusculas: false, incluirNumeros: false)}');

  // Prueba 3: Contraseña ultra segura para un servidor (16 caracteres, todo incluido)
  print('Ultra Segura: ${generarPassword(longitud: 16, incluirSimbolos: true)}');
  
  // Llama a tus funciones aquí abajo para probarlas
  // Ejemplo:
  // buscarProducto('Laptop gamer', ordenarPorPrecio: true);
  // print(generarPassword(longitud: 12, incluirSimbolos: true));
}
