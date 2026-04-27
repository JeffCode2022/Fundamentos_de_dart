import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 2 — DÍA 11
// Tema: Manejo de Errores + Buenas Prácticas
// Fecha: Viernes 11 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// ¿Por qué manejar errores?
// En el mundo real, TODO puede fallar: el usuario escribe letras donde van números,
// se cae el internet, un archivo no existe, divides entre cero...
// Un software SENIOR no se rompe, se recupera con gracia.
//
// 1. TRY / CATCH / FINALLY:
//    try {
//      // Código que PUEDE fallar
//      int resultado = 10 ~/ 0; // ¡Boom! División por cero
//    } catch (e) {
//      // Código que se ejecuta SI falla
//      print('Error: $e');
//    } finally {
//      // Código que se ejecuta SIEMPRE (falle o no)
//      print('Esto siempre se ejecuta');
//    }
//
// 2. ON (Capturar errores ESPECÍFICOS):
//    try {
//      int.parse('abc');
//    } on FormatException {
//      print('No es un número válido');
//    } catch (e) {
//      print('Otro error: $e');
//    }
//
// 3. THROW (Lanzar tus PROPIOS errores):
//    void retirar(double monto, double saldo) {
//      if (monto > saldo) {
//        throw Exception('Saldo insuficiente');
//      }
//    }
//
// 4. EXCEPCIONES CUSTOM (Crear tus propios tipos de error):
//    class SaldoInsuficienteException implements Exception {
//      final String mensaje;
//      SaldoInsuficienteException(this.mensaje);
//      @override
//      String toString() => 'SaldoInsuficienteException: $mensaje';
//    }
//
// 5. ASSERT (Solo en modo debug, desaparece en producción):
//    assert(edad > 0, 'La edad no puede ser negativa');
//
// 6. BUENAS PRÁCTICAS DE CÓDIGO:
//    - Nombres descriptivos: `calcularImpuesto()` NO `calc()` 
//    - camelCase para variables y funciones: `miVariable`, `calcularTotal()`
//    - PascalCase para clases: `CuentaBancaria`, `ProductoInventario`
//    - SCREAMING_SNAKE para constantes: `MAX_INTENTOS`, `TASA_IGV`
//    - Comentarios que expliquen el POR QUÉ, no el QUÉ
//
// ============================================

// ✅ Ejercicio 1: Tu primer try/catch
// Pide al usuario un número por consola.
// Intenta convertirlo a int con int.parse().
// Si el usuario escribe letras (ej: "abc"), captura el FormatException
// e imprime un mensaje amigable en vez de que el programa explote.
void ejercicio1() {
  print('\n--- Ejercicio 1: try/catch básico ---');
  stdout.write('Ingresa un número entero: ');
  String? input = stdin.readLineSync();

  try {
    int resultado = int.parse(input ?? '');
    
    // 2. Si la línea anterior falla, el código salta inmediatamente al 'on' o 'catch'.
    // Si NO falla, continúa normalmente e imprime el resultado.
    print('El número ingresado es: $resultado');

  } on FormatException {
    // Captura específicamente cuando el texto no se puede volver número
    print('Error amigable: Por favor, ingresa solo números, no letras.');
  } catch (e) {
    // Captura cualquier otro error extraño que no hayamos previsto
    print('Otro error: $e');
  }
}


// ✅ Ejercicio 2: Captura específica con ON
// Pide al usuario DOS números. Intenta dividir el primero entre el segundo.
// Captura estos errores ESPECÍFICOS con 'on':
//   - on FormatException → "Error: Ingresaste texto, no un número"
//   - on IntegerDivisionByZeroException → "Error: No se puede dividir entre cero"
//   - catch (e) → "Error inesperado: $e" (para cualquier otro error)
// Agrega un bloque finally que imprima "Operación finalizada."
void ejercicio2() {
  print('\n--- Ejercicio 2: Captura específica ---');
      // Escribe tu código aquí:

  try{
    stdout.write('Ingresa el primer número entero: ');
    int? a = int.parse(stdin.readLineSync()??'');
    stdout.write('Ingresa el segundo número entero: ');
    int? b = int.parse(stdin.readLineSync()??'');
    //la division entre los 2 numero. 
    print('La division entre $a / $b es: ${a~/b}');

  }on FormatException{
    // error de ingresar un string.
    print("Error: Ingresaste texto, no un número");
  }on IntegerDivisionByZeroException{
    // erorr cuando la division es entre 0.
    print("Error: No se puede dividir entre cero");
  
  }catch(e){
    // para errores inesperados. 
    print('Error inesperado: $e');

  }


}


// ✅ Ejercicio 3: THROW — Lanzar errores propios
// Crea una función `double calcularRaizCuadrada(double numero)`.
// Si el número es NEGATIVO, lanza un error con:
//   throw ArgumentError('No se puede calcular la raíz de un número negativo');
// Si es válido, retorna la raíz (puedes usar: import 'dart:math' → sqrt(numero))
// En el main, llama a la función dentro de un try/catch.
// Prueba con: 25 (debe dar 5.0) y -4 (debe mostrar el error).

// Escribe tu función aquí:
  double calculaRaizCuadrada(double numero){
    if(numero < 0){
      throw ArgumentError('No se puede calcular la raíz de un número negativo');
    }
    return sqrt(numero);
  }

void ejercicio3() {
  print('\n--- Ejercicio 3: Throw ---');
  // Llama a tu función con try/catch:
  //Prueba A: El Camino Feliz (Número positivo)
  try{
    print('Intentando calcular la raíz de 25...');
    double resultado1 = calculaRaizCuadrada(25);
    print('✅ Éxito: La raíz de 25 es $resultado1');
  }catch(e){
    print('❌ Error: $e');
  }

  // Prueba B: El Camino de los Errores (Número negativo)
  try{
    print('Intentando calcular la raíz de -4...');
    double resultado2 = calculaRaizCuadrada(-4);
    print('✅ Éxito: La raíz de -4 es $resultado2');
  }
  catch(e){
    // La red de seguridad atrapa la bomba que lanzamos con "throw"
    print('🛡️ Error atrapado por el sistema: $e');
  }
}


// ✅ Ejercicio 4: Excepción Personalizada (Custom Exception)
// Crea una clase `EdadInvalidaException` que implemente Exception.
// Debe tener:
//   - Una propiedad `String mensaje`
//   - Un constructor que reciba el mensaje
//   - Un override de toString() que retorne: 'EdadInvalidaException: $mensaje'
//
// Luego crea una función `void verificarEdad(int edad)` que:
//   - Si edad < 0: throw EdadInvalidaException('La edad no puede ser negativa')
//   - Si edad > 150: throw EdadInvalidaException('Edad no realista: $edad')
//   - Si es válida: print('Edad válida: $edad años')

// Escribe tu clase aquí:
class EdadInvalidaException implements Exception{
  final String mensaje;
  EdadInvalidaException(this.mensaje);
  @override
  String toString() => 'EdadInvalidaException : $mensaje';
}



// Escribe tu función verificarEdad aquí:
void verificarEdad(int edad){
  if(edad < 0){
    throw EdadInvalidaException('La edad no puede ser negativa');
  }
  if(edad > 150){
    throw EdadInvalidaException('Edad no realista: $edad');
  }
  print('Edad Valida: $edad años');
}


void ejercicio4() {
  print('\n--- Ejercicio 4: Excepción Custom ---');
  // Prueba con try/catch usando:
  // verificarEdad(25);   → Debe imprimir "Edad válida: 25 años"
  try{
    verificarEdad(25);
  }
  catch (e){
    print('Error: $e');
  }
  // verificarEdad(-5);   → Debe capturar EdadInvalidaException
  try{
    verificarEdad(-5);
  }
  catch (e){
    print('Error: $e');
  }
  // verificarEdad(200);  → Debe capturar EdadInvalidaException
  try{
    verificarEdad(200);
  }
  catch (e){
    print('Error: $e');
  }
  
}


// ✅ Ejercicio 5: Validación robusta de input
// Crea una función `int pedirNumeroSeguro(String mensaje)` que:
//   1. Muestre el mensaje recibido
//   2. Lea la respuesta del usuario
//   3. Intente convertirla a int
//   4. Si falla, muestre "⚠️ Eso no es un número. Intenta de nuevo." y REPITA (bucle)
//   5. Solo retorne cuando el usuario ingrese un número válido
//
// Tip: Usa un while(true) con try/catch adentro. Haz return cuando funcione.

// Escribe tu función aquí:
int pedirNumeroSeguro(String mensaje){
  while(true){
    try{
      stdout.write(mensaje);
      String? input =stdin.readLineSync();
      int numero = int.parse(input ?? '');
      return numero;
    }catch(e){
      print('⚠️ Eso no es un número. Intenta de nuevo.');
    }
  } 

}


void ejercicio5() {
  print('\n--- Ejercicio 5: Input a prueba de tontos ---');
  // Usa tu función:
  // int edad = pedirNumeroSeguro('¿Cuántos años tienes? ');
  int edad = pedirNumeroSeguro('¿Cuántos años tienes?');
  print('Tienes $edad años');

}


// ✅ Ejercicio 6: Assert (Solo debug)
// Crea una función `double calcularDescuento(double precio, double porcentaje)`.
// Agrega asserts para validar:
//   assert(precio > 0, 'El precio debe ser positivo');
//   assert(porcentaje >= 0 && porcentaje <= 100, 'Porcentaje debe estar entre 0 y 100');
// Luego calcula y retorna el descuento: precio - (precio * porcentaje / 100)
//
// NOTA: Los assert SOLO funcionan en modo debug.
// Para probarlos, ejecuta con: dart run --enable-asserts archivo.dart

// Escribe tu función aquí:
double calcularDescuento(double precio, double porcentaje){
  assert(precio > 0,'El precio debe ser positivo');
  assert(porcentaje >= 0 && porcentaje <= 100, 'Porcentaje debe estar entre 0 y 100');
  double descuento = precio - (precio * porcentaje/ 100);
  return descuento;
}


void ejercicio6() {
  print('\n--- Ejercicio 6: Assert ---');
  print(calcularDescuento(100, 15));   // Debe dar 85.0
  print(calcularDescuento(-50, 10));   // Debe fallar el assert
  print(calcularDescuento(100, 150));  // Debe fallar el assert

}


// ============================================
// 🧠 RETO DEL DÍA: Mejorar la Tienda CLI con manejo de errores
// ============================================
// Vas a tomar las funciones de tu Tienda CLI (Día 7) y mejorarlas.
//
// Crea estas piezas:
//
// 1. class StockInsuficienteException implements Exception { ... }
//    → Se lanza cuando el usuario pide más unidades de las disponibles.
//
// 2. class ProductoNoEncontradoException implements Exception { ... }
//    → Se lanza cuando se selecciona una opción inválida del menú.
//
// 3. Función `int pedirCantidadSegura()`:
//    → Usa tu función del ejercicio 5 para pedir cantidad sin que crashee.
//
// 4. Función `void procesarCompra(int opcion, int stockDisponible)`:
//    → Si opción es inválida: throw ProductoNoEncontradoException
//    → Si cantidad > stockDisponible: throw StockInsuficienteException
//    → Si todo ok: imprimir resumen de la compra
//
// 5. En el flujo principal, envolver procesarCompra en try/catch
//    capturando cada excepción con 'on' y mostrando mensajes amigables.
//
// BONUS: Agregar un Map<String, int> para el stock de cada producto.
// ============================================

// Escribe tus clases de excepción aquí:
class StockInsuficienteException implements Exception{
  final String mensaje;
  StockInsuficienteException(this.mensaje);
  @override
  String toString()  => 'StockInsuficienteException: $mensaje';
}

class ProductoNoEncontradoException implements Exception{
  final String mensaje;
  ProductoNoEncontradoException(this.mensaje);
  @override
  String toString()  => 'ProductoNoEncontradoException: $mensaje';
}

// Escribe tus funciones aquí:
int pedirCantidadSegura(String mensaje){
  while(true){
    try{
      stdout.write(mensaje);
      String ? input  = stdin.readLineSync();
      return int.parse(input ?? '');

    }catch(e){
      print('⚠️ Eso no es un número. Intenta de nuevo.');
    }
  }

}

void procesarCompra(String producto,int cantidad ,int stockDisponible){
  if(cantidad > stockDisponible){
    throw StockInsuficienteException('Solo quedan $stockDisponible unidades de $producto.');
  }
  print('\n✅ ¡Compra exitosa!');
  print('Resumen: $cantidad x $producto');

}


void retoTiendaMejorada() {
  print('\n🧠 === RETO: TIENDA CON MANEJO DE ERRORES ===');

  // BONUS: Map de Stock
  Map<String, int> inventario = {
    'Laptop Gamer': 3,
    'Mouse Pro': 10,
    'Monitor 175Hz': 5,
  };

  // Mostrar Menú
  var productos = inventario.keys.toList();
  print('\nProductos disponibles:');
  for (var i = 0; i < productos.length; i++) {
    print('${i + 1}. ${productos[i]} (Stock: ${inventario[productos[i]]})');
  }

  try {
    int opcion = pedirCantidadSegura('\nSelecciona el número del producto: ');
    
    // Validación de opción inexistente
    if (opcion < 1 || opcion > productos.length) {
      throw ProductoNoEncontradoException('La opción $opcion no existe en el menú.');
    }

    String productoSeleccionado = productos[opcion - 1];
    int cantidad = pedirCantidadSegura('¿Cuántas unidades deseas comprar?: ');

    // Procesar
    procesarCompra(
      productoSeleccionado, 
      cantidad, 
      inventario[productoSeleccionado]!
    );

    // Actualizar stock si todo salió bien
    inventario[productoSeleccionado] = inventario[productoSeleccionado]! - cantidad;

  } on ProductoNoEncontradoException catch (e) {
    print('❌ Error de Selección: ${e.mensaje}');
  } on StockInsuficienteException catch (e) {
    print('❌ Error de Inventario: ${e.mensaje}');
  } catch (e) {
    print('❌ Ocurrió un error inesperado: $e');
  } finally {
    print('--- Gracias por visitar la tienda de Jefferson ---');
  }
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== 🛡️ DÍA 11: MANEJO DE ERRORES Y BUENAS PRÁCTICAS ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
  retoTiendaMejorada();
}
