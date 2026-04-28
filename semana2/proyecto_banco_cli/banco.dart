import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 2 — DÍAS 12-13
// 🏦 MINI PROYECTO: BANCO CLI "BancoVipe"
// ============================================
//
// 🎯 OBJETIVO:
// Construir un sistema bancario por consola que integre TODO
// lo aprendido en la Semana 2:
//   ✅ Funciones con retorno (Día 7)
//   ✅ Parámetros nombrados y por defecto (Día 8)
//   ✅ Closures y funciones de orden superior (Día 9)
//   ✅ Recursión (Día 10)
//   ✅ Manejo de errores y excepciones custom (Día 11)
//
// 📋 REQUISITOS MÍNIMOS:
//   - Mínimo 8 funciones separadas
//   - Excepciones personalizadas
//   - try/catch en cada operación del usuario
//   - Historial de movimientos
//
// 🏗️ FUNCIONALIDADES:
//   1. Crear cuenta (nombre del titular)
//   2. Depositar dinero
//   3. Retirar dinero (con validación de saldo)
//   4. Ver saldo actual
//   5. Ver historial de movimientos
//   6. Transferir entre cuentas (BONUS)
//   7. Salir
//
// ============================================

// ════════════════════════════════════════════
// 1. EXCEPCIONES PERSONALIZADAS
// ════════════════════════════════════════════
// Crea estas clases de excepción:
//
// class SaldoInsuficienteException implements Exception { ... }
//   → Se lanza al retirar más de lo que hay en la cuenta.
//
// class MontoInvalidoException implements Exception { ... }
//   → Se lanza cuando el monto es negativo o cero.
//
// class CuentaNoExisteException implements Exception { ... }
//   → Se lanza al buscar una cuenta que no fue creada.

// Escribe tus excepciones aquí:
class SaldoInsuficienteException implements Exception{
  final String mensaje;
  SaldoInsuficienteException(this.mensaje);
  @override
  String? toString()=>'SaldoInsuficienteException:$mensaje';
  
}

class MontoInvalidoException implements Exception{
  final String mensaje;
  MontoInvalidoException(this.mensaje);
  @override
  String? toString()=>'MontoInvalidoException:$mensaje';
  
}

class CuentaNoExisteException implements Exception{
  final String mensaje;
  CuentaNoExisteException(this.mensaje);
  @override
  String? toString()=>'CuentaNoExisteException:$mensaje';
  
}


// ════════════════════════════════════════════
// 2. VARIABLES GLOBALES DEL BANCO
// ════════════════════════════════════════════
// Necesitarás almacenar los datos de la cuenta.
// Como aún no hemos visto Clases a fondo, usa variables globales:
//
// String? titularCuenta;        → Nombre del dueño
// double saldo = 0.0;           → Saldo actual
// List<String> historial = [];  → Lista de movimientos
// bool cuentaCreada = false;    → ¿Ya se creó la cuenta?

// Declara tus variables aquí:
String? titularCuenta = '';
double saldo = 0;
List<String> historial = [];
bool cuentaCreada = false;


// ════════════════════════════════════════════
// 3. FUNCIONES DEL BANCO (Mínimo 8)
// ════════════════════════════════════════════

// ── Función 1: Crear Cuenta ──
// `void crearCuenta(String nombre)`
// - Si ya existe una cuenta, imprime aviso y retorna.
// - Si no, asigna el nombre, marca cuentaCreada = true, saldo = 0.
// - Agrega al historial: "Cuenta creada para [nombre]"
void crearCuenta(String nombre){
  if(cuentaCreada == true ){
    print('Ya existe una cuenta');
    return;
  }
  titularCuenta = nombre;
  cuentaCreada = true;
  saldo = 0;
  historial.add("Cuenta Creada para: $nombre");
  print('Cuenta Creada con Éxito para: $nombre');
}


// ── Función 2: Validar Cuenta Activa ──
// `void verificarCuenta()`
// - Si cuentaCreada es false, lanza CuentaNoExisteException.
// - Úsala al inicio de depositar, retirar, verSaldo, etc.
void verificarCuenta(){
  if(cuentaCreada == false){
    throw CuentaNoExisteException('No Existe Cuenta.');
  }
}


// ── Función 3: Validar Monto ──
// `void validarMonto(double monto)`
// - Si monto <= 0, lanza MontoInvalidoException.
void validarMonto(double monto){
  if(monto <= 0){
    throw MontoInvalidoException('El monto ingresado es invalido');
  }
}

// ── Función 4: Depositar ──
// `void depositar(double monto)`
// - Llama a verificarCuenta() y validarMonto(monto).
// - Suma al saldo.
// - Agrega al historial: "💰 Depósito: +$[monto]. Saldo: $[saldo]"
void depositar (double monto){
  verificarCuenta();
  validarMonto(monto);
  saldo += monto;
  historial.add("💰 Depósito: +$monto. Saldo: $saldo");
}


// ── Función 5: Retirar ──
// `void retirar(double monto)`
// - Llama a verificarCuenta() y validarMonto(monto).
// - Si monto > saldo, lanza SaldoInsuficienteException.
// - Resta del saldo.
// - Agrega al historial: "🏧 Retiro: -$[monto]. Saldo: $[saldo]"
void retirar(double monto){
  verificarCuenta();
  validarMonto(monto);
  if(monto > saldo){
    throw SaldoInsuficienteException('Saldo insuficiente. Tu saldo es: \$$saldo');
  }
  saldo -= monto;
  historial.add("Retiro : -$monto. Saldo:  $saldo");
}

// ── Función 6: Ver Saldo ──
// `void verSaldo()`
// - Llama a verificarCuenta().
// - Imprime el nombre del titular y el saldo actual formateado.
void verSaldo(){
  verificarCuenta();
  print("Hola: $titularCuenta, Su saldo actual es de: S/.$saldo");
}


// ── Función 7: Ver Historial ──
// `void verHistorial()`
// - Llama a verificarCuenta().
// - Si el historial está vacío, imprime "No hay movimientos."
// - Si tiene datos, recorre la lista e imprime cada movimiento numerado.
void verHistorial(){
  verificarCuenta();
  if(historial.isEmpty){
    print('No hay movimientos');
    return;
  }
  print('\n--- HISTORIAL DE MOVIMIENTOS ---');
  for(var i = 0; i < historial.length; i++){
  print('${i+1}.${historial[i]}');
  }
}


// ── Función 8: Pedir Monto Seguro ──
// `double pedirMontoSeguro(String mensaje)`
// - Usa un while(true) con try/catch.
// - Pide un número al usuario.
// - Si no es válido, imprime error y repite.
// - Solo retorna cuando sea un double válido.
double pedirMontoSeguro(String mensaje){
  while(true){
    try{
      stdout.write(mensaje);
      String? input =stdin.readLineSync();
      return  double.parse(input ?? '0');
    }
    catch(e){
      print('❌ Error: Debes ingresar un número válido.');
    }
  }
}


// ── Función 9 (BONUS): Mostrar Menú ──
// `void mostrarMenu()`
// - Imprime las opciones del banco de forma bonita.
void mostrarMenu() {
  print('\n' + '═' * 40);
  print('       💰 MENÚ DE OPERACIONES 💰');
  print('═' * 40);
  print('  1. ✨ Crear nueva cuenta');
  print('  2. 💵 Realizar un depósito');
  print('  3. 🏧 Realizar un retiro');
  print('  4. 🔍 Consultar saldo actual');
  print('  5. 📜 Ver historial de movimientos');
  print('  6. 🔄 Transferencia (Bonus)');
  print('  7. ❌ Salir del sistema');
  print('═' * 40);
  stdout.write('👉 Seleccione una opción (1-7): ');
}


// ════════════════════════════════════════════
// 4. FUNCIÓN MAIN — El Cerebro del Banco
// ════════════════════════════════════════════
// Estructura sugerida:
//
// 1. Imprimir bienvenida
// 2. while(true) {
//      mostrarMenu();
//      leer opción;
//      switch(opcion) {
//        case 1: // Crear cuenta (pedir nombre)
//        case 2: // Depositar (pedir monto con try/catch)
//        case 3: // Retirar (pedir monto con try/catch)
//        case 4: // Ver saldo (con try/catch)
//        case 5: // Ver historial (con try/catch)
//        case 6: // Salir (break del while)
//      }
//    }
//
// IMPORTANTE: Cada case debe estar envuelto en try/catch
// para que si el usuario no tiene cuenta creada, el programa
// NO explote sino que muestre un mensaje amigable.

void main() {
  print('════════════════════════════════════════');
  print('   🏦  BANCO VIPE — Sistema Bancario   ');
  print('════════════════════════════════════════\n');

  // Tu bucle principal aquí:
  while(true){
    mostrarMenu();
    String? opcion = stdin.readLineSync();
    try{
      switch(opcion){
        case '1': 
          stdout.write('Nombre del titular: ');
          String nombre = stdin.readLineSync()??'';
          crearCuenta(nombre);
          break;
        case '2':
          double m = pedirMontoSeguro('Monto a depositar')
          depositar(m)
          break;
        case '3':
          double m = pedirMontoSeguro('Monto a retirar')
          retirar(m);
          break;
        case '4':
          verSaldo(); 
          break;
        case '5':
          verHistorial();
          break;
        case '6':
          print('Gracias por usar BancoVipe. ¡Adiós!');
          return;
        default:
          print('Opción no válido')
      }

    }on CuentaNoExisteException catch (e) {
      print('⚠️ Error: ${e.mensaje}');
    } on SaldoInsuficienteException catch (e) {
      print('🚫 ${e.mensaje}');
    } on MontoInvalidoException catch (e) {
      print('❗ ${e.mensaje}');
    } catch (e) {
      print('💥 Ocurrió un error inesperado.');
    }
  }

}
