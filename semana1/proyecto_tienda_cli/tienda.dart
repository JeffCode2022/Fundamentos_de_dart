import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 1 — DÍA 6
// Tema: 🚀 MINI PROYECTO SEMANAL: Tienda Virtual CLI
// Fecha: Domingo 6 de Abril, 2026
// ============================================
//
// 🎯 OBJETIVO:
// Integra TODAS las habilidades aprendidas esta semana:
// - Variables y tipos de datos
// - Lectura/Escritura en consola (`stdout.write`, `stdin.readLineSync`)
// - Condicionales (`if/else`, `switch/case`)
// - Operadores lógicos y matemáticos
// - Bucles (`while(true)`, `for`)
//
// 🛒 DESCRIPCIÓN DEL SISTEMA:
// Simularás una Tienda Virtual en la que los usuarios pueden agregar multiples
// productos a su carrito de compras usando un menú en consola.
//
// 📋 REQUISITOS:
//
// 1. Mostrar un Menú de Productos con precios:
//    1. Laptop Xtreme     - $1500.00
//    2. Smartphone Pro    - $800.00
//    3. Auriculares BT    - $120.00
//    4. Teclado Mecánico  - $90.00
//    5. Mouse Gamer       - $50.00
//    6. Finalizar compra e ir a Pagar
//    7. Cancelar y Salir
//
// 2. El usuario elige una opción. Si elige del 1 al 5:
//    - Preguntar "¿Cuántas unidades desea comprar?".
//    - Calcular el subtotal de ese pedido (precio * unidades).
//    - Acumular el precio en un "Subtotal Global".
//    - (Opcional bonus: ir guardando en una variable String un recibo con el nombre del producto)
//
// 3. El bucle se repetirá mostrando el menú, hasta que elija la opción 6 o 7.
//    - Si elige 7: "Compra cancelada. ¡Vuelva pronto!" y termina.
//    - Si elige 6: Pasa a la fase de cobro.
//
// 4. FASE DE COBRO (Solo si elige 6 y tiene algo en el carrito):
//    - Mostrar: Subtotal de la compra.
//    - Calcular el IGV/IVA (18% del subtotal).
//    - Mostrar el Total a pagar (Subtotal + IGV).
//    - Pedir al usuario que ingrese con cuánto efectivo va a pagar.
//    - Bucle de pago: Si el efectivo es menor al Todo a pagar, mostrar
//      "Saldo insuficiente, le falta $X. Ingrese monto nuevamente...".
//    - Cuando pague completo, mostrar:
//      "¡Compra exitosa! Su vuelto es: $X. ¡Gracias por comprar!"
//
// ============================================

void main() {
  print('=====================================');
  print('    🖥️  TIENDA TECH VIPECODE 🛒     ');
  print('=====================================\n');

  // 1. DECLARA AQUÍ TUS VARIABLES GLOBALES DEL CARRITO
  double subtotalCompra = 0;
  String recibo = '';

  // 2. CREA TU BUCLE PRINCIPAL (while(true) o do-while)
  while(true) {
    // a. Mostrar menú
    print('''
    ==========================================
    🍽️  MENÚ DE PRODUCTOS:
    ==========================================
    1. Laptop Xtreme     - \$1500.00
    2. Smartphone Pro    - \$800.00
    3. Auriculares BT    - \$120.00
    4. Teclado Mecánico  - \$90.00
    5. Mouse Gamer       - \$50.00
    ------------------------------------------
    6. Finalizar compra e ir a Pagar
    7. Cancelar y Salir
    ==========================================
    ''');
    
    stdout.write('Seleccione una opción: ');

    // b. Leer opción
    int opcion = int.tryParse(stdin.readLineSync()??'')??0;

    // c. Salir o Finalizar (break)
    if(opcion == 7){
      print('Compra cancelada. ¡Vuelva pronto!');
      return;
    }
    if(opcion == 6){
      if(subtotalCompra>0)break;
      print('⚠️ El carrito está vacío. Agregue productos antes de pagar.');
      continue;
    }
    
    double precio =0;
    String nombrePed = '';
    // d. Evaluar producto (switch / case recomendado)
    switch (opcion){
    case 1: nombrePed= 'Laptop Xtreme'; precio = 1500.00;break;
    case 2: nombrePed= 'Smartphone Pro'; precio = 800.00;break;
    case 3: nombrePed= 'Auriculares BT'; precio = 120.00;break;
    case 4: nombrePed= 'Teclado Mecánico'; precio = 90.00;break;
    case 5: nombrePed= 'Mouse Gamer'; precio = 50.00;break;
    default:
      print('Producto invalido');
      continue;
    };
    print('Producto selecionado: $nombrePed');
    // e. Preguntar cantidad y sumar al subtotalCompra
    stdout.write('¿Cuántas unidades de $nombrePed desea?');
    int cantidad = int.tryParse(stdin.readLineSync()??'')??0;
    if(cantidad>0){
      double subTotalItem = precio * cantidad;
      subtotalCompra += subTotalItem;
      recibo +="- $nombrePed x$cantidad: \$$subTotalItem\n";
      print('✅ Agregado: $nombrePed. Subtotal actual: \$$subtotalCompra');

   }else{
    print('cantidad invalida');
   } 
  }

  // 3. FASE DE COBRO (Fuera del bucle de menú)
  print('\n--- RESUMEN DE COMPRA ---');
  print(recibo);
  double igv = subtotalCompra * 0.18;
  double totalAPagar = subtotalCompra +igv;
  print('Subtotal: \$${subtotalCompra.toStringAsFixed(2)}');
  print('IGV (18%): \$${igv.toStringAsFixed(2)}');
  print('TOTAL A PAGAR: \$${totalAPagar.toStringAsFixed(2)}');
  // Verificar que el subtotalCompra sea mayor a 0
  double efectivo = 0;
  while(efectivo<totalAPagar){
    stdout.write('\nIngrese monto con el que va a pagar: \$');
    efectivo += double.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    if(efectivo<totalAPagar){
      double falta = totalAPagar - efectivo;
      print('❌ Saldo insuficiente. Falta: \$${falta.toStringAsFixed(2)}');
    }
    
  }
  
  print('\n✅ ¡Compra exitosa!');
  print('Su vuelto es: \$${(efectivo - totalAPagar).toStringAsFixed(2)}');
  print('¡Gracias por comprar en VIPECODE, Jefferson! 🚀');
   
  
  // Calcular IGV y Total
  
  // Bucle while() para asegurar dinero exacto o dar vuelto
  
}
