// ============================================
// 🟢 FASE 0 — SEMANA 4 — DÍA 25
// Tema: LeetCode — Patrones Clásicos
// ============================================
//
// PATRONES:
// 1. TWO POINTERS: Dos índices recorren la lista desde extremos opuestos
// 2. FREQUENCY COUNTER: Usa Map/Set para contar ocurrencias
// 3. SLIDING WINDOW: Una "ventana" que se desliza por el array
//
// ============================================

// ✅ LeetCode #1: Two Sum
// Dado un array y un target, retorna los índices de los dos números que suman target.
List<int> twoSum(List<int> nums, int target) {
  // Usa Map para O(n)
  return [];
}

// ✅ LeetCode #217: Contains Duplicate
// Retorna true si algún valor aparece al menos 2 veces.
bool containsDuplicate(List<int> nums) {
  // Usa Set para O(n)
  return false;
}

// ✅ LeetCode #242: Valid Anagram
// Retorna true si s y t son anagramas (mismas letras, misma frecuencia).
bool isAnagram(String s, String t) {
  // Usa Map<String, int> para contar letras
  return false;
}

// ✅ LeetCode #125: Valid Palindrome
// Retorna true si la frase es un palíndromo (ignorando mayúsculas y no-alfanuméricos).
// Ejemplo: "A man, a plan, a canal: Panama" → true
bool isPalindrome(String s) {
  // Tip: Limpia el string, luego usa two pointers
  return false;
}

// ✅ LeetCode #121: Best Time to Buy and Sell Stock
// Dado un array de precios por día, retorna la máxima ganancia.
// Compras un día y vendes otro día POSTERIOR.
// Ejemplo: [7,1,5,3,6,4] → 5 (compras en 1, vendes en 6)
int maxProfit(List<int> prices) {
  // Sliding window / greedy
  return 0;
}

// ✅ LeetCode #53: Maximum Subarray
// Encuentra el sub-array contiguo con la suma más grande.
// Ejemplo: [-2,1,-3,4,-1,2,1,-5,4] → 6 (sub-array [4,-1,2,1])
int maxSubArray(List<int> nums) {
  // Kadane's Algorithm
  return 0;
}


// 🚀 FUNCIÓN MAIN
void main() {
  print('=== DÍA 25: LeetCode Patterns ===\n');

  print('Two Sum [2,7,11,15] target=9: ${twoSum([2, 7, 11, 15], 9)}');
  print('Contains Dup [1,2,3,1]: ${containsDuplicate([1, 2, 3, 1])}');
  print('Anagram "anagram" "nagaram": ${isAnagram("anagram", "nagaram")}');
  print('Palindrome "A man, a plan, a canal: Panama": ${isPalindrome("A man, a plan, a canal: Panama")}');
  print('Max Profit [7,1,5,3,6,4]: ${maxProfit([7, 1, 5, 3, 6, 4])}');
  print('Max SubArray [-2,1,-3,4,-1,2,1,-5,4]: ${maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])}');
}
