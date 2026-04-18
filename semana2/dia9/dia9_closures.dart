import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 2 — DÍA 9
// Tema: Scope, Closures y Funciones de Orden Superior
// Fecha: Miércoles 9 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// 1. SCOPE LÉXICO (Alcance de variables):
//    Las variables creadas DENTRO de una función no existen fuera de ella.
//
// 2. FUNCIONES DE ORDEN SUPERIOR (Higher-Order Functions):
//    Son funciones que reciben a OTRAS FUNCIONES como parámetros.
//    void procesarClick(void Function() accion) { // <--- Recibe una función
//      print('Procesando...');
//      accion(); // Ejecuta la función recibida
//    }
//
// 3. FUNCIONES ANÓNIMAS (Callbacks):
//    Funciones sin nombre, usualmente pasadas en el momento:
//    procesarClick( () { print('Botón presionado'); } );
//
// 4. CLOSURES:
//    Una función que retorna otra función y "recuerda" el scope donde fue creada.
//    Function crearMultiplicador(int factor) {
//      return (int valor) => valor * factor; 
//    }
//
// 5. COLECCIONES BÁSICAS (Listas) y sus métodos avanzados:
//    List<int> numeros = [1, 2, 3, 4, 5];
//    - .map()   : Transforma cada elemento. Eg: `numeros.map((n) => n * 2)`
//    - .where() : Filtra los elementos. Eg: `numeros.where((n) => n > 2)`
//    - .reduce(): Acumula valores. Eg: `numeros.reduce((a, b) => a + b)`
//
// ============================================

// ✅ Ejercicio 1: Variables Globales vs Locales (Scope)
// Aquí declaramos una variable global.
String baseGlobal = 'Yo vivo en todo el archivo';

void ejercicio1() {
  print('\n--- Ejercicio 1: Scope ---');
  // 1. Declara una variable LOCAL llamada `baseLocal` aquí adentro.
    String baseLocal = 'Hola mundo';
  // 2. Imprime ambas variables.
    print(baseLocal);
    print(baseGlobal);

  // (Nota que si intentas usar baseLocal fuera de esta función, te daría error).
  
}

//print(baseLocal);


// ✅ Ejercicio 2: Creando un "Closure" (Retornando una función)
// Crea una función fuera del main llamada `crearSumador(int a)`
// Que RETORNE una función que reciba un `int b` y retorne `a + b`.
// (Ejemplo: var sumar5 = crearSumador(5); print(sumar5(10)); // 15)
Function crearSumador(int a) {
  // Escribe tu código aquí:
  return (int b) {
    return a + b;
  }; // Reemplaza esto
}

void ejercicio2() {
  print('\n--- Ejercicio 2: Closures ---');
  // Crea una variable 'sumar10' usando crearSumador(10).
  // Luego imprime sumar10(5).
  var sumar10 = crearSumador(10);
  print(sumar10(5));
}


// ✅ Ejercicio 3: Funciones como Parámetros (Callbacks)
// Crea una función `ejecutarDosVeces(void Function() accion)`.
// Su única labor es ejecutar la variable `accion` dos veces seguidas.
// Escribe tu código aquí:
void ejecutarDosVeces( void Function() accion){
  accion();
  accion();
}



void ejercicio3() {
  print('\n--- Ejercicio 3: Callbacks ---');
  // Llama a ejecutarDosVeces() pasándole una función anónima que imprima "¡Hola Dart!" usando () { ... }
  ejecutarDosVeces((){
    print('¡Hola Dart!');
  });

}


// ✅ Ejercicio 4: Uso de `map` (Transformando Listas)
// Tienes esta lista de precios: [100.0, 50.0, 20.0, 200.0]
// Usa `.map()` en la lista para aplicar un 10% de descuento a todos.
// (El .map te devuelve un "Iterable", para imprimirlo lindo ponle .toList() al final)
void ejercicio4() {
  print('\n--- Ejercicio 4: Map ---');
  List<double> preciosOriginales = [100.0, 50.0, 20.0, 200.0];
  // Escribe tu código aquí:
  List <double> precioConDescuento = preciosOriginales.map((n)=>n-(n * 0.10)).toList();
  
  print('Precio Originales $preciosOriginales');
  print('Precio Originales $precioConDescuento');

}


// ✅ Ejercicio 5: Uso de `where` (Filtrando Listas)
// Tienes una lista de edades: [12, 18, 25, 10, 8, 30]
// Usa `.where()` para crear una nueva lista (o iterable) que contenga solo
// las edades mayores o iguales a 18.
void ejercicio5() {
  print('\n--- Ejercicio 5: Where ---');
  List<int> edades = [12, 18, 25, 10, 8, 30];
  // Escribe tu código aquí:
  List<int> edadesMayores = edades.where((n)=> n >= 18).toList();

  print('Todas las edades: $edades');
  print('Solo mayores de edad: $edadesMayores');
}


// ✅ Ejercicio 6: Uso de `reduce` (Acumulando valores)
// Tienes una lista de ingresos en el mes: [500, 300, 200, 400]
// Usa `.reduce((a, b) => a + b)` para sumar todo.
void ejercicio6() {
  print('\n--- Ejercicio 6: Reduce ---');
  List<int> ingresos = [500, 300, 200, 400];
  // Escribe tu código aquí:
  int sumaTotal = ingresos.reduce((a,b) => a+b);

  print('La suma de todo los ingresos es de : $sumaTotal');
}


// ============================================
// 🧠 RETO DEL DÍA: La Máquina Operadora (Aplicador Personalizado)
// ============================================
// Escribe una función principal llamada `aplicarOperacion`.
// 
// Debe recibir DOS piezas:
// 1. Una Lista de enteros: `List<int> numeros`
// 2. Una Función (el motor): `int Function(int) operacion`
//
// Tu función debe retornar una NUEVA Lista de enteros donde a cada
// número se le aplicó la función matemática enviada en el parámetro.
//
// Básicamente, vas a recrear cómo funciona un `.map()` por dentro usando un bucle FOR.
//
// Prueba final:
// List<int> misNumeros = [1, 2, 3];
// var cuadrados = aplicarOperacion(misNumeros, (n) => n * n);
// var triples = aplicarOperacion(misNumeros, (n) => n * 3);
// ============================================

List<int> aplicarOperacion(List<int> numeros, int Function(int) operacion) {
  // 1. Crear nueva lista vacía: List<int> resultado = [];
  // 2. Recorrer la lista original
  // 3. Aplicar operacion() a cada número y agregarlo (.add)
  // 4. Retornar
  return []; // Modifica esto
}

void retoMaquina() {
  print('\n🧠 === RETO MÁQUINA OPERADORA ===');
  List<int> datos = [5, 10, 15];
  
  // Imprimir los datos originales
  
  // Imprimir procesado: Mitad de los números (n / 2). "Tienes que convertirlo usando ~/ para division entera o cambiar los tipos a double)
  // Nota: Dart no permite double adentro de List<int> si divides, asume n * 10
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== SEMANA 2: DÍA 9 - Closures y Scope ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
  retoMaquina();
}
