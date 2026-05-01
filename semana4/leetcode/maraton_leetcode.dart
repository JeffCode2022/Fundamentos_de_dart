// ============================================
// 🟢 FASE 0 — SEMANA 4 — DÍAS 26-27
// Tema: Maratón LeetCode (6 problemas Easy)
// ============================================
//
// 🎯 INSTRUCCIONES:
// Resuelve estos 6 problemas SIN ayuda en máximo 4 horas.
// Para cada uno, documenta:
//   1. Tu enfoque / estrategia
//   2. La complejidad Big O (tiempo y espacio)
//   3. La solución
//
// ============================================

// ✅ Problema 1: Reverse Integer (#7)
// Dado un int, retorna el número con los dígitos invertidos.
// Ejemplo: 123 → 321, -123 → -321, 120 → 21
// Enfoque:
// Big O:
int reverseInteger(int x) {
  return 0;
}

// ✅ Problema 2: Roman to Integer (#13)
// Convierte un número romano a entero.
// I=1, V=5, X=10, L=50, C=100, D=500, M=1000
// "IX" = 9, "LVIII" = 58, "MCMXCIV" = 1994
// Enfoque:
// Big O:
int romanToInt(String s) {
  return 0;
}

// ✅ Problema 3: Longest Common Prefix (#14)
// Encuentra el prefijo común más largo entre un array de strings.
// ["flower","flow","flight"] → "fl"
// Enfoque:
// Big O:
String longestCommonPrefix(List<String> strs) {
  return '';
}

// ✅ Problema 4: Remove Duplicates from Sorted Array (#26)
// Modifica el array IN-PLACE eliminando duplicados. Retorna la nueva longitud.
// [1,1,2] → [1,2,...] retorna 2
// Enfoque:
// Big O:
int removeDuplicates(List<int> nums) {
  return 0;
}

// ✅ Problema 5: Plus One (#66)
// Dado un array que representa un número, suma 1.
// [1,2,3] → [1,2,4], [9,9,9] → [1,0,0,0]
// Enfoque:
// Big O:
List<int> plusOne(List<int> digits) {
  return [];
}

// ✅ Problema 6: Climbing Stairs (#70)
// Estás subiendo escaleras. En cada paso puedes subir 1 o 2 escalones.
// ¿De cuántas formas distintas puedes llegar al escalón N?
// n=2 → 2 formas, n=3 → 3 formas
// Enfoque:
// Big O:
int climbStairs(int n) {
  return 0;
}


// 🚀 FUNCIÓN MAIN — Pruebas
void main() {
  print('=== DÍAS 26-27: Maratón LeetCode ===\n');

  print('Reverse 123: ${reverseInteger(123)}');
  print('Reverse -456: ${reverseInteger(-456)}');
  print('Roman IX: ${romanToInt("IX")}');
  print('Roman MCMXCIV: ${romanToInt("MCMXCIV")}');
  print('Prefix: ${longestCommonPrefix(["flower", "flow", "flight"])}');
  print('Remove Dup [1,1,2]: ${removeDuplicates([1, 1, 2])}');
  print('Plus One [9,9,9]: ${plusOne([9, 9, 9])}');
  print('Climb 5: ${climbStairs(5)}');
}
