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


// ════════════════════════════════════════════
// 3. FUNCIONES DEL BANCO (Mínimo 8)
// ════════════════════════════════════════════

// ── Función 1: Crear Cuenta ──
// `void crearCuenta(String nombre)`
// - Si ya existe una cuenta, imprime aviso y retorna.
// - Si no, asigna el nombre, marca cuentaCreada = true, saldo = 0.
// - Agrega al historial: "Cuenta creada para [nombre]"


// ── Función 2: Validar Cuenta Activa ──
// `void verificarCuenta()`
// - Si cuentaCreada es false, lanza CuentaNoExisteException.
// - Úsala al inicio de depositar, retirar, verSaldo, etc.


// ── Función 3: Validar Monto ──
// `void validarMonto(double monto)`
// - Si monto <= 0, lanza MontoInvalidoException.


// ── Función 4: Depositar ──
// `void depositar(double monto)`
// - Llama a verificarCuenta() y validarMonto(monto).
// - Suma al saldo.
// - Agrega al historial: "💰 Depósito: +$[monto]. Saldo: $[saldo]"


// ── Función 5: Retirar ──
// `void retirar(double monto)`
// - Llama a verificarCuenta() y validarMonto(monto).
// - Si monto > saldo, lanza SaldoInsuficienteException.
// - Resta del saldo.
// - Agrega al historial: "🏧 Retiro: -$[monto]. Saldo: $[saldo]"


// ── Función 6: Ver Saldo ──
// `void verSaldo()`
// - Llama a verificarCuenta().
// - Imprime el nombre del titular y el saldo actual formateado.


// ── Función 7: Ver Historial ──
// `void verHistorial()`
// - Llama a verificarCuenta().
// - Si el historial está vacío, imprime "No hay movimientos."
// - Si tiene datos, recorre la lista e imprime cada movimiento numerado.


// ── Función 8: Pedir Monto Seguro ──
// `double pedirMontoSeguro(String mensaje)`
// - Usa un while(true) con try/catch.
// - Pide un número al usuario.
// - Si no es válido, imprime error y repite.
// - Solo retorna cuando sea un double válido.


// ── Función 9 (BONUS): Mostrar Menú ──
// `void mostrarMenu()`
// - Imprime las opciones del banco de forma bonita.


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

}
