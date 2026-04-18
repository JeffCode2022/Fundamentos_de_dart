import 'dart:io';
import 'dart:math';

// ============================================
// 🟢 FASE 0 — SEMANA 2 — DÍA 7
// Tema: Funciones — Declaración, Parámetros y Retorno
// Fecha: Lunes 7 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// ¿Qué es una función? Una "caja negra" que atrapa código reutilizable. Entran cosas (parámetros) y sale una cosa (retorno).
// El Principio DRY (Don't Repeat Yourself) dicta que no deberías copiar y pegar código lógico mas de dos veces.
//
// 1. FUNCIÓN QUE NO RETORNA NADA (void):
//    void saludar(String nombre) {
//      print('Hola $nombre');
//    }
//
// 2. FUNCIÓN QUE RETORNA UN VALOR (Type):
//    int sumar(int a, int b) {
//      return a + b;
//    }
//
// 3. RETORNO TEMPRANO (Guard Clauses):
//    bool esPositivo(int numero) {
//      if(numero < 0) return false; // El return sale inmediatamente de la función
//      return true;
//    }
//
// ============================================

// ✅ Ejercicio 1: Función Básica (void)
// Crea una función llamada `mostrarSeparador()` que imprima 30 guiones ('-').
// Úsala dentro del main para separar visualmente los otros ejercicios.
// Escribe tu función aquí:
void mostrarSeparador(){
    for(int i=1;i<=30;i++){
      stdout.write('_');
    }
   print('');
  }

// ✅ Ejercicio 2: Conversión (Retorno)
// Crea una función `double celsiusAFahrenheit(double celsius)`
// Fórmula: (C * 9/5) + 32
// Retorna el resultado. 
// Escribe tu función aquí:
double celsiusAFahrenheit(double celsius){
  double resultado = (celsius*9/5)+32;
  return resultado;
}



// ✅ Ejercicio 3: Número Par (Retorno booleano)
// Crea una función `bool esPar(int numero)`
// Debe retornar true si es par y false si es impar.
// Escribe tu función aquí:
bool esPar(int numero){
  if(numero % 2 == 0){
    return true;
  }else{
    return false;
  }
}

// ✅ Ejercicio 4: Mayor de 3 números
// Crea una función `int obtenerMaximo(int a, int b, int c)`
// Retorna el número más grande de los tres.
// Escribe tu función aquí:
int obtenerMaximo(int a, int b, int c){
  if(a >= b && a >= c){
    return a;
  }else if(b >= a && b >= c ){
    return b;
  }else{
    return c;
  }
}


// ✅ Ejercicio 5: Número Primo
// Crea una función `bool esPrimo(int numero)`
// Un número es primo si solo es divisible por 1 y por sí mismo.
// Regla: Los menores o iguales a 1 NO son primos.
// Escribe tu función aquí:
bool esPrimo(int numero){
  if(numero <=1 ) return false;
  for (int i = 2; i < numero; i++){
    if(numero % i ==0 ) return false;
  } 
  return true;
}



// ✅ Ejercicio 6: Calculadora de Áreas (Múltiples casos)
// Crea una función `double calcularArea(String figura, double base, double altura)`
// - Si figura == 'triangulo': (base * altura) / 2
// - Si figura == 'rectangulo': base * altura
// - Si figura == 'cuadrado': base * base (ignoras altura)
// Retorna el área (o 0 si figura inválida). Usa switch de ser posible.
// Escribe tu función aquí:
double calcularArea(String figura, double base, double altura){

  String f = figura.toLowerCase();

  var resultado = switch (f){
    'triangulo'=>  (base * altura) / 2,
    'rectangulo'=> base * altura,
    'cuadrado'=> base * base,
      _       => 0.0
  };
  return resultado;

}


// ✅ Ejercicio 7: Contador de Letras
// Crea una función `int contarLetra(String texto, String letraBuscada)`
// Retorna cuántas veces aparece `letraBuscada` adentro de `texto`.
// Escribe tu función aquí:
int contarLetras(String texto, String letraBuscada){

  int contador= 0;
  String t = texto.toLowerCase();
  String l = letraBuscada.toLowerCase();

  for(int i =0; i < t.length; i ++ ){
    if(t[i] == l){
      contador ++;
    }
  }

  return contador;

}


// ✅ Ejercicio 8: Factorial Refactorizado
// Extrae la lógica del tu Día 5 en una verdadera función aislada.
// `int calcularFactorial(int numero)`
// Validar negativo (retornar 0 o 1). Devuelve el factorial válido final.
// Escribe tu función aquí:

int calcularFactorial(int numero){
  if(numero < 0) return 0;

  int resultado = 1;

  for(int i = 1; i <= numero; i++ ){
    resultado *= i;
  }

  return resultado;


}



// ============================================
// 🧠 RETO DE LA SEMANA: Refactorizando la Tienda
// ============================================
// Consiste en agarrar el Mini Proyecto "Tienda Virtual CLI" del Día 6
// e **implementarlo totalmente basado en funciones**.
//
// Ya no debe haber un main() gigante con while e ifs. Aquí el main solo llama cajas!
//
// Debes crear funciones para (ejemplo estructurado):
// 1. `void mostrarMenu()`
// 2. `double obtenerPrecio(int opcion)` o `String obtenerNombre(int opcion)`
// 3. `double calcularSubtotal(double precio, int cantidad)`
// 4. `double calcularCostoTotal(double subtotal)`
// 5. `void procesarPago(double totalAPagar)`
// 
// Trata de implementar la lógica limpia en las siguientes funciones.
// O si prefieres crear un archivo nuevo, también es válido.
// ============================================

void retoTiendaRefactor() {

    // --- 1. LAS CAJAS DE LÓGICA (FUNCIONES) ---

  void mostrarMenu() {
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
  }

  double obtenerPrecio(int opcion) {
  return switch (opcion) {
    1 => 1500.0,
    2 => 800.0,
    3 => 120.0,
    4 => 90.0,
    5 => 50.0,
    _ => 0.0,
  };
  }

  String obtenerNombre(int opcion) {
  return switch (opcion) {
    1 => 'Laptop Xtreme',
    2 => 'Smartphone Pro',
    3 => 'Auriculares BT',
    4 => 'Teclado Mecánico',
    5 => 'Mouse Gamer',
    _ => 'Desconocido',
  };
  }

  double calcularSubtotal(double precio, int cantidad) => precio * cantidad;

  double calcularCostoTotal(double subtotal) {
  double igv = subtotal * 0.18;
  return subtotal + igv;
}

  void procesarPago(double totalAPagar) {
  double efectivo = 0;
  print('\nTOTAL A PAGAR (inc. IGV): \$${totalAPagar.toStringAsFixed(2)}');

  while (efectivo < totalAPagar) {
    stdout.write('Ingrese el monto en efectivo: \$');
    efectivo += double.tryParse(stdin.readLineSync() ?? '') ?? 0;
    
    if (efectivo < totalAPagar) {
      print('❌ Saldo insuficiente. Faltan: \$${(totalAPagar - efectivo).toStringAsFixed(2)}');
    }
  }

  print('\n✅ Compra exitosa. Su vuelto es: \$${(efectivo - totalAPagar).toStringAsFixed(2)}');
  print('¡Gracias por comprar en VIPECODE, Jefferson! 🚀');
}
  // --- 2. LA CAJA MAESTRA (EL SISTEMA) ---

  void iniciarTienda() {
    double subtotalGlobal = 0;
    String recibo = '';

    while (true) {
      mostrarMenu();
      stdout.write('Seleccione una opción: ');
      int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

      if (opcion == 7) {
        print('Compra cancelada. ¡Vuelva pronto!');
        break;
      }

      if (opcion == 6) {
        if (subtotalGlobal > 0) {
          print('\n--- RESUMEN DE TU CARRITO ---\n$recibo');
          procesarPago(calcularCostoTotal(subtotalGlobal));
          break;
        }
        print('⚠️ El carrito está vacío.');
        continue;
      }

      double precio = obtenerPrecio(opcion);
      if (precio > 0) {
        stdout.write('¿Cuántas unidades de ${obtenerNombre(opcion)} desea?: ');
        int cant = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

        if (cant > 0) {
          double subItem = calcularSubtotal(precio, cant);
          subtotalGlobal += subItem;
          recibo += "- ${obtenerNombre(opcion)} x$cant: \$$subItem\n";
          print('✅ Agregado. Subtotal: \$$subtotalGlobal');
        } else {
          print('⚠️ Cantidad inválida.');
        }
      } else {
        print('🚫 Opción no válida.');
      }
    }
  }

  iniciarTienda(); // ¡No te olvides de llamar a la función maestra!
}

// 🚀 FUNCIÓN MAIN
// Para probar tu código, llama a tus funciones a continuación y haz prints de sus retornos.
void main() {
  print('=== SEMANA 2: DÍA 7: Funciones y Retornos ===\n');
  
  mostrarSeparador();
  double temperaturaF = celsiusAFahrenheit(30);
  print('30°C equivalen a $temperaturaF°F');
  print(esPrimo(7));
  double area = calcularArea('triangulo',10,5);
  if(area==0){
    print('❌ Error: Figura no reconocida.');

  }else{
    print('✅ El área es: $area');
  }
  int resultado = contarLetras('jefferson chunga','e');
  print('Total de coincidencias: $resultado');

  retoTiendaRefactor();

}
