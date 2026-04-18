import 'dart:io';

// ============================================
// 🟢 FASE 0 — SEMANA 1 — DÍA 4
// Tema: Switch/Case + Condicionales Anidados
// Fecha: Viernes 4 de Abril, 2026
// ============================================
//
// 📖 TEORÍA RÁPIDA:
//
// SWITCH STATEMENT:
//   switch (variable) {
//     case valor1:
//       // código
//       break;
//     case valor2:
//       // código
//       break;
//     default:
//       // si ningún case coincide
//   }
//
// SWITCH EXPRESSION (Dart 3):
//   var resultado = switch (variable) {
//     valor1 => 'algo',
//     valor2 => 'otro',
//     _ => 'default',
//   };
//
// WHEN GUARDS (Dart 3):
//   switch (numero) {
//     case int n when n > 0:
//       print('Positivo');
//     case int n when n < 0:
//       print('Negativo');
//     default:
//       print('Cero');
//   }
//
// OPERADOR TERNARIO:
//   condicion ? valorSiTrue : valorSiFalse
//   Ejemplo: edad >= 18 ? 'Mayor' : 'Menor'
//
// NULL SAFETY:
//   String?  → puede ser String o null
//   variable!  → "confío que NO es null" (peligroso)
//   variable ?? valorDefault  → si es null, usa valorDefault
//   variable?.metodo()  → solo ejecuta si NO es null
//
// ============================================

// ✅ Ejercicio 1: Día de la semana
// Pide un número del 1 al 7 y muestra el día correspondiente
// 1=Lunes, 2=Martes, ... 7=Domingo
// Usa SWITCH (no if/else)
void ejercicio1() {
  print('\n--- Ejercicio 1: Día de la semana ---');
  stdout.write('Ingresa un número del 1 al 7: ');
  // Escribe tu código aquí:
  int? dia = int.tryParse(stdin.readLineSync()??'');


  switch (dia){
    case 1:
      print('Lunes');
      break;
    case 2:
      print('Martes');
    case 3:
      print('Miércoles');
    case 4:
      print('Jueves');
    case 5:
      print('Viernes');
    case 6:
      print('Sábado');
    case 7:
      print('Domingo');
    default:
      print('El número ingresado no es el correcto, por favor eliga un número del 1-7');

  }


}

// ✅ Ejercicio 2: Menú de restaurante
// Muestra un menú con 5 opciones:
//   1. Lomo Saltado      - S/ 25.00
//   2. Ceviche            - S/ 30.00
//   3. Arroz con Pollo    - S/ 18.00
//   4. Ají de Gallina     - S/ 22.00
//   5. Causa Limeña       - S/ 15.00
// Pide al usuario qué plato quiere y cuántas unidades
// Muestra el total a pagar
// Usa SWITCH para seleccionar el plato
void ejercicio2() {
  print('\n--- Ejercicio 2: Menú de restaurante ---');
  print('🍽️  CARTA DEL DÍA:');
  print('  1. Lomo Saltado      - S/ 25.00');
  print('  2. Ceviche           - S/ 30.00');
  print('  3. Arroz con Pollo   - S/ 18.00');
  print('  4. Ají de Gallina    - S/ 22.00');
  print('  5. Causa Limeña      - S/ 15.00');
  // Escribe tu código aquí:
  stdout.write('Selecciona un plato (1-5): ');
  int? entrada = int.tryParse(stdin.readLineSync()??'');
  stdout.write('¿Cuántas porciones deseas?: ');
  int? cantidad = int.tryParse(stdin.readLineSync()??'')?? 0;
  switch (entrada){
    case 1:
        double? precioTotal = 25.00 * cantidad;
        print('Has pedido $cantidad Lomo(s) Saltados(s). Total: S/. ${precioTotal.toStringAsFixed(2)}');
    case 2:
        double? precioTotal = 30.00 * cantidad;
        print('Has pedido $cantidad Ceviche(s). Total: S/. ${precioTotal.toStringAsFixed(2)}');
    case 3:
        double? precioTotal = 18.00 * cantidad;
        print('Has pedido $cantidad Arroz(s) con Pollo(s). Total: S/. ${precioTotal.toStringAsFixed(2)}');
    case 4:
        double? precioTotal = 22.00 * cantidad;
        print('Has pedido $cantidad Ají(s) de Gallina(s). Total: S/. ${precioTotal.toStringAsFixed(2)}');
    case 5:
        double? precioTotal = 15.00 * cantidad;
        print('Has pedido $cantidad Causa(s) Limeña(s). Total: S/. ${precioTotal.toStringAsFixed(2)}');
    default:
      print('Opción de menú no válida.');


  }

}

// ✅ Ejercicio 3: Calculadora con switch
// Pide 2 números y un operador (+, -, *, /, %)
// Usa SWITCH en vez de if/else para el operador
// Incluye validación de división por cero
void ejercicio3() {
  print('\n--- Ejercicio 3: Calculadora con switch ---');
  // Escribe tu código aquí:
  double? a = double.tryParse(stdin.readLineSync()??'')?? 0;
  double? b = double.tryParse(stdin.readLineSync()??'')?? 0;
  String? operador = stdin.readLineSync()!;

  switch(operador){
    case '+':
      print('La Suma de $a + $b = ${a+b}');
      break;
    case '-':
      print('La Resta de $a - $b = ${a-b}');
      break;
    case '*':
      print('La Multiplicación de $a * $b = ${a*b}');
      break;
    case '/':
      if(b != 0){
      print('La Division de $a / $b = ${a/b}');
      }else{
        print('Error: No se puede dividir entre cero.');
      }
      break;
    case '%':
      if(b !=0){
      print('La Diferencia de $a % $b = ${a%b}');
      }else{
        print('Error: No se puede calcular el residuo con divisor cero.');
      }
      break;
    default:
      print('El operador ingresado no es valido');

    

  }

}

// ✅ Ejercicio 4: Estación del año
// Pide el número del mes (1-12) y muestra la estación:
//   Dic, Ene, Feb → Verano (Perú/hemisferio sur)
//   Mar, Abr, May → Otoño
//   Jun, Jul, Ago → Invierno
//   Sep, Oct, Nov → Primavera
// Usa SWITCH con múltiples cases compartidos
// Ejemplo: case 12: case 1: case 2: print('Verano');
void ejercicio4() {
  print('\n--- Ejercicio 4: Estación del año ---');
  stdout.write('Ingresa el número del mes (1-12): ');
  // Escribe tu código aquí:
  int? mes = int.tryParse(stdin.readLineSync()??'');

  switch (mes){
    case 12:
    case 1 :
    case 2 :
      print('Verano');
      break;
    case 3:
    case 4:
    case 5:
      print('Otoño');
      break;
    case 6:
    case 7:
    case 8:
      print('Invierno');
      break;
    case 9:
    case 10:
    case  11:
      print('Primavera');
    default:
    print('Error: El número $mes no corresponde a un mes válido (1-12).');

   
    
  }
}

// ✅ Ejercicio 5: Operador ternario
// Pide un número al usuario y muestra:
//   "X es par" o "X es impar"  → usando operador ternario (NO if/else)
//   "X es positivo" o "X es negativo o cero" → usando ternario
//   "X es mayor de edad" o "X es menor de edad" → usando ternario
// Deben ser 3 prints, cada uno con un ternario
void ejercicio5() {
  print('\n--- Ejercicio 5: Operador ternario ---');
  stdout.write('Ingresa un número: ');
  // Escribe tu código aquí:
  int? numero = int.tryParse(stdin.readLineSync()??'') ?? 0;

  // 1.par  o impar
  String  paridad = (numero % 2 == 0 )? 'Par':  'IMPAR';
  print('$numero $paridad');
  //2. Número positivo o negativo
  String signo = numero > 0 ? 'Positivo': 'Negativo o Cero'; 
  print('$numero $signo');

  //3.Mayor o Menor
  String edad = numero >= 18 ? 'es Mayor de edad': 'es Menor de edad';
  print('$numero $edad');
}

// ✅ Ejercicio 6: Horóscopo chino
// Pide el año de nacimiento y muestra el animal del horóscopo chino
// El horóscopo chino se repite cada 12 años basado en el residuo:
//   año % 12 == 0 → Mono
//   año % 12 == 1 → Gallo
//   año % 12 == 2 → Perro
//   año % 12 == 3 → Cerdo
//   año % 12 == 4 → Rata
//   año % 12 == 5 → Buey
//   año % 12 == 6 → Tigre
//   año % 12 == 7 → Conejo
//   año % 12 == 8 → Dragón
//   año % 12 == 9 → Serpiente
//   año % 12 == 10 → Caballo
//   año % 12 == 11 → Cabra
// Usa SWITCH
void ejercicio6() {
  print('\n--- Ejercicio 6: Horóscopo chino ---');
  stdout.write('Ingresa tu año de nacimiento: ');
  // Escribe tu código aquí:
  int? entrada  = int.tryParse(stdin.readLineSync()??'')??0;
  int? years = entrada % 12;

  var resultado = switch (years){
      0 => 'Mono',
      1 => 'Gallo',
      2 => 'Perro',
      3 => 'Cerdo',
      4 => 'Rata',
      5 => 'Buey',
      6 => 'Tigre',
      7 => 'Conejo',
      8 => 'Dragón',
      9 => 'Serpiente',
      10 => 'Caballo',
      11 => 'Cabra',
        _=>  'Dato invalido.'
  };
    print('Para el año $entrada, tu signo en el horóscopo chino es: $resultado'); 
}

// ✅ Ejercicio 7: Null safety en acción
// Crea las siguientes variables y experimenta:
//   String? nombre = null;
//   String saludo = nombre ?? 'Invitado';
//   int? longitud = nombre?.length;
//
// Luego:
//   - Imprime saludo (debería ser 'Invitado')
//   - Imprime longitud (debería ser null)
//   - Asigna nombre = 'Jefferson'
//   - Repite las operaciones y muestra los nuevos valores
//   - Usa el operador ternario: nombre != null ? 'Tiene nombre' : 'No tiene nombre'
void ejercicio7() {
  print('\n--- Ejercicio 7: Null safety ---');
  // Escribe tu código aquí:
  String? nombre = null;
  String  saludo = nombre ?? 'Invitado';
  int? longitud = nombre?.length;

  print('$saludo');
  print('$longitud');
  nombre = 'Jefferson';
  saludo = nombre ?? 'Invitado';
  longitud = nombre?.length;

  print('Nuevo saludo: $saludo');
  print('Nueva longitud: $longitud');

  String estado = (nombre != null) ? 'Tiene nombre ': 'No tiene nombre ';
  print('Estado: $estado');
  
}

// ✅ Ejercicio 8: Switch expression (Dart 3)
// Dado un código de estado HTTP (200, 201, 400, 401, 404, 500),
// usa SWITCH EXPRESSION (no statement) para asignar un mensaje:
//   200 → 'OK: Solicitud exitosa'
//   201 → 'Created: Recurso creado'
//   400 → 'Bad Request: Solicitud inválida'
//   401 → 'Unauthorized: No autorizado'
//   404 → 'Not Found: Recurso no encontrado'
//   500 → 'Internal Server Error: Error del servidor'
//   otro → 'Código desconocido'
// Sintaxis: var mensaje = switch (codigo) { 200 => '...', _ => '...' };
void ejercicio8() {
  print('\n--- Ejercicio 8: Switch expression ---');
  stdout.write('Ingresa un código HTTP (200, 404, 500...): ');
  // Escribe tu código aquí:
  int? code = int.tryParse(stdin.readLineSync()??'')??0;

  var mensaje = switch(code){
    200 =>'OK: Solicitud Exitosa',
    201 =>'Created: Recurso creado',
    400 =>'Bad Request: Solicitud Inválida',
    401 =>'Unauthorized: No autorizado',
    404 =>'Not Found: Recursos no encontrado',
    500 =>'Internet Server Error: Error del servidor',
       _=>'Codigo desconocido'


  };
  print('Status:$code: $mensaje');
}

// ============================================
// 🧠 RETO DEL DÍA: Sistema de Calificaciones
// ============================================
// El programa debe:
//
// 1. Pedir el nombre del estudiante
//
// 2. Pedir la nota (0 a 100)
//
// 3. Validar que la nota esté en rango válido (0-100)
//
// 4. Calcular la letra según la nota:
//    90-100 → A (Excelente)
//    80-89  → B (Muy Bueno)
//    70-79  → C (Bueno)
//    60-69  → D (Regular)
//    0-59   → F (Reprobado)
//
// 5. Mostrar:
//    - Nombre del estudiante
//    - Nota numérica
//    - Letra y descripción
//    - Si aprueba (>= 60) o reprueba (< 60)
//    - Mensaje motivacional según la letra:
//        A → "¡Extraordinario! Eres un crack 🏆"
//        B → "¡Muy bien! Sigue así 💪"
//        C → "¡Bien! Puedes dar más 📈"
//        D → "Aprobaste por poco, ¡a estudiar más! 📚"
//        F → "No te rindas, el éxito requiere esfuerzo 🔥"
//
// BONUS: Usar switch expression para la letra y el mensaje
// BONUS 2: Permitir evaluar múltiples estudiantes hasta escribir "salir"
// ============================================
void retoCalificaciones() {
  print('\n🧠 === SISTEMA DE CALIFICACIONES ===');
  // Escribe tu código aquí:
  stdout.write('Ingresa tu nombre completo:');
  String? nombreCompleto = stdin.readLineSync()??'';

  stdout.write('Ingresa tu nota (00 - 100):');
  int? nota = int.tryParse(stdin.readLineSync()??'')??0;

  var letra = switch(nota){
    >= 90  => 'A',
    >= 80  => 'B',
    >= 70  => 'C',
    >= 60 => 'D',
    _     => 'F',
                    
  };
   var descripcion = switch(letra){
      'A' => 'Excelente 🏆',
      'B' => 'Muy Bueno ⭐',
      'C' => 'Bueno 🆗',
      'D' => 'Regular 😐',
      _   => 'Reprobado ❌',
  };

  
  var mensaje = switch(letra){
    'A' =>'¡Extraordinario! Eres un crack 🏆',
    'B' => "¡Muy bien! Sigue así 💪",
    'C' => "¡Bien! Puedes dar más 📈",
    'D' => "Aprobaste por poco, ¡a estudiar más! 📚",
    _ => "No te rindas, el éxito requiere esfuerzo 🔥",
    

  };


print('\n---------------------------------------');
    print('Estudiante: $nombreCompleto');
    print('Nota: $nota/100');
    print('Calificación: $letra - $descripcion');
    print('Estado: ${nota >= 60 ? "APROBADO ✅" : "REPROBADO ❌"}');
    print('Mensaje: $mensaje');
    print('---------------------------------------');
  
}

// 🚀 FUNCIÓN MAIN — Descomenta el ejercicio que quieras probar
void main() {
  print('=== DÍA 4: Switch/Case + Condicionales Anidados ===\n');

  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
  ejercicio7();
  ejercicio8();
  retoCalificaciones();
}
