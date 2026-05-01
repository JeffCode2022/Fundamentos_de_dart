import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 3 — DÍAS 19-20
// 🏗️ MINI PROYECTO: "Inventario Pro CLI"
// ============================================
//
// 🎯 OBJETIVO:
// Construir un sistema de inventario completo que integre TODO
// lo aprendido en la Semana 3:
//   ✅ List — para almacenar productos (Día 14)
//   ✅ Map — para categorías y búsquedas rápidas (Día 15)
//   ✅ Stack — para historial de acciones / deshacer (Día 16)
//   ✅ LinkedList — (Opcional) como estructura alternativa (Día 17)
//   ✅ Clases/OOP — Producto, Inventario como clases (Día 18)
//
// 📋 REQUISITOS MÍNIMOS:
//   - Clase `Producto` con: nombre, categoría, precio, stock
//   - Clase `Inventario` que gestione la lista de productos
//   - Mínimo 10 funciones/métodos
//   - Manejo de errores con try/catch
//   - Historial de operaciones (Stack o List)
//
// 🏗️ FUNCIONALIDADES:
//   1. Agregar producto (nombre, categoría, precio, stock)
//   2. Buscar producto por nombre
//   3. Listar todos los productos
//   4. Listar productos por categoría
//   5. Actualizar stock de un producto
//   6. Eliminar producto
//   7. Calcular valor total del inventario
//   8. Producto más caro / más barato
//   9. Productos con stock bajo (< 5 unidades)
//  10. Ver historial de operaciones
//  11. Salir
//
// ============================================

// ════════════════════════════════════════════
// 1. CLASE PRODUCTO
// ════════════════════════════════════════════
// Propiedades: nombre, categoria, precio, stock
// Constructor, toString(), y getters necesarios.

// Escribe tu clase Producto aquí:


// ════════════════════════════════════════════
// 2. EXCEPCIONES CUSTOM
// ════════════════════════════════════════════
// class ProductoNoEncontradoException implements Exception { ... }
// class StockInsuficienteException implements Exception { ... }

// Escribe tus excepciones aquí:


// ════════════════════════════════════════════
// 3. CLASE INVENTARIO
// ════════════════════════════════════════════
// Propiedades:
//   List<Producto> _productos = [];
//   List<String> _historial = [];
//
// Métodos:
//   void agregarProducto(Producto p)
//   Producto buscarPorNombre(String nombre)
//   void listarTodos()
//   void listarPorCategoria(String categoria)
//   void actualizarStock(String nombre, int nuevoStock)
//   void eliminarProducto(String nombre)
//   double calcularValorTotal()
//   Producto obtenerMasCaro()
//   Producto obtenerMasBarato()
//   List<Producto> obtenerStockBajo({int limite = 5})
//   void verHistorial()

// Escribe tu clase Inventario aquí:


// ════════════════════════════════════════════
// 4. FUNCIÓN MAIN — Menú Interactivo
// ════════════════════════════════════════════
void main() {
  print('═══════════════════════════════════════════');
  print('   📦 INVENTARIO PRO — Sistema de Gestión  ');
  print('═══════════════════════════════════════════\n');

  // 1. Crea una instancia de Inventario
  // 2. Precarga 3-5 productos de ejemplo
  // 3. Bucle while(true) con menú y switch
  // 4. Cada case envuelto en try/catch

}
