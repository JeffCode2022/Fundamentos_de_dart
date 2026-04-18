# 🟢 FASE 0: Fundamentos de Programación
## Plan Docente Completo — 6 Semanas
**Inicio:** Martes 1 de Abril, 2026  
**Fin:** Domingo 10 de Mayo, 2026  
**Dedicación:** 4-5 horas diarias (Lunes a Sábado) | Domingo: repaso libre  
**Lenguaje principal:** Dart (el que usarás en Flutter)

---

## 🕐 Estructura Diaria (Modelo de Clase)

```
┌─────────────────────────────────────────────────────────────┐
│  BLOQUE 1 — Teoría Guiada (1.5 horas)                      │
│  📖 Leer concepto + ejemplos + tomar notas a mano           │
│                                                             │
│  ☕ Descanso (15 min)                                       │
│                                                             │
│  BLOQUE 2 — Práctica Dirigida (1.5 horas)                   │
│  💻 Ejercicios guiados paso a paso                          │
│                                                             │
│  ☕ Descanso (15 min)                                       │
│                                                             │
│  BLOQUE 3 — Reto del Día (1 hora)                           │
│  🧠 Problema sin ayuda + journaling de lo aprendido         │
└─────────────────────────────────────────────────────────────┘
                  Total efectivo: ~4.5 horas/día
```

> **Regla de oro:** Si un tema no se entiende, NO avanzar. Repetir hasta que se domine.

---

# 📆 SEMANA 1: Lógica de Programación Básica
**Fechas:** Martes 1 - Domingo 6 de Abril  
**Meta:** Pensar como programador. Entender cómo una computadora ejecuta instrucciones.

### Día 1 — Martes 1 Abril
**Tema:** ¿Qué es programar? + Instalación del entorno

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Qué es un programa, cómo ejecuta instrucciones la CPU, lenguajes compilados vs interpretados | 1.5h |
| Práctica | Instalar Dart SDK, VS Code, extensiones. Escribir `main()` + `print('Hola Mundo')` | 1.5h |
| Reto | Crear 5 programas distintos que impriman mensajes diferentes. Experimentar con `\n`, `\t`, string interpolation `$variable` | 1h |

**Entregable:** Carpeta `semana1/dia1/` con 5 archivos `.dart` funcionando.

---

### Día 2 — Miércoles 2 Abril
**Tema:** Variables, Tipos de Datos y Operadores

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `int`, `double`, `String`, `bool`, `var`, `final`, `const`. Operadores aritméticos (+, -, *, /, ~/,  %) | 1.5h |
| Práctica | 10 ejercicios: calcular área de figuras, convertir temperaturas, calcular promedio de notas | 1.5h |
| Reto | Programa "Calculadora de IMC": pide peso y altura, calcula IMC y muestra categoría | 1h |

**Entregable:** `semana1/dia2/` con 10 ejercicios + calculadora IMC.

---

### Día 3 — Jueves 3 Abril
**Tema:** Entrada de datos + Condicionales (if/else)

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `stdin.readLineSync()`, parsing (`int.parse`, `double.parse`). `if`, `else if`, `else`, operadores lógicos (`&&`, `||`, `!`) | 1.5h |
| Práctica | 8 ejercicios: verificar par/impar, mayor de edad, clasificar triángulo, semáforo | 1.5h |
| Reto | "Cajero automático": ingresa monto, verifica si alcanza el saldo, muestra billetes a entregar (200, 100, 50, 20, 10) | 1h |

**Entregable:** `semana1/dia3/` con 8 ejercicios + cajero automático.

---

### Día 4 — Viernes 4 Abril
**Tema:** Switch/Case + Condicionales Anidados

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `switch` statement, `when` guards (Dart 3), ternary operator `? :`, null safety `?`, `!`, `??` | 1.5h |
| Práctica | 8 ejercicios: menú de restaurante, calculadora con operaciones, día de la semana, horóscopo | 1.5h |
| Reto | "Sistema de calificaciones": ingresa nota (0-100), muestra letra (A-F), mensaje motivacional, y si aprueba o no | 1h |

**Entregable:** `semana1/dia4/` con 8 ejercicios + sistema de calificaciones.

---

### Día 5 — Sábado 5 Abril
**Tema:** Bucles — `for`, `while`, `do-while`

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `for` (clásico, for-in), `while`, `do-while`, `break`, `continue`. Cuándo usar cada uno | 1.5h |
| Práctica | 10 ejercicios: tabla de multiplicar, sumatoria, factorial, Fibonacci (primeros 20), contar vocales de un string | 1.5h |
| Reto | "Adivina el número": el programa genera un número random (1-100), el usuario tiene 7 intentos, se dice "más alto" o "más bajo" | 1h |

**Entregable:** `semana1/dia5/` con 10 ejercicios + juego adivina el número.

---

### Día 6 — Domingo 6 Abril
**Tema:** 🔄 Repaso + Mini Proyecto Semanal

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Repaso | Repasar notas. Re-hacer los ejercicios que costaron más sin ver la solución | 2h |
| Mini Proyecto | **"Tienda Virtual CLI"**: Mostrar menú de 5 productos con precios. El usuario agrega al carrito (bucle). Al finalizar: mostrar resumen, subtotal, IGV (18%), total. Pedir pago y dar vuelto | 2.5h |

**Entregable:** `semana1/proyecto_tienda_cli/` — proyecto completo y funcional.

---

# 📆 SEMANA 2: Funciones y Modularidad
**Fechas:** Lunes 7 - Domingo 13 de Abril  
**Meta:** Escribir código reutilizable y organizado. Pensar en "cajas negras".

### Día 7 — Lunes 7 Abril
**Tema:** Funciones — Declaración, Parámetros, Retorno

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Declarar funciones, parámetros posicionales, return types, void vs return. ¿Por qué funciones? (DRY) | 1.5h |
| Práctica | 8 ejercicios: función `esPrimo()`, `factorial()`, `celsiusAFahrenheit()`, `calcularArea()` para diferentes figuras | 1.5h |
| Reto | Refactorizar el proyecto "Tienda CLI" de la semana 1 usando funciones (mínimo 5 funciones separadas) | 1h |

---

### Día 8 — Martes 8 Abril
**Tema:** Parámetros Nombrados, Opcionales, Valores por Defecto

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `{required String name}`, parámetros opcionales `[int? age]`, valores default, arrow functions `=>` | 1.5h |
| Práctica | 8 ejercicios: funciones con parámetros nombrados, función `crearSaludo()` con opciones de idioma, formato | 1.5h |
| Reto | "Generador de contraseñas": función que recibe `longitud`, `incluirMayusculas`, `incluirNumeros`, `incluirSimbolos` como parámetros nombrados | 1h |

---

### Día 9 — Miércoles 9 Abril
**Tema:** Scope, Closures y Funciones de Orden Superior

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Scope léxico, variables locales vs globales, closures, funciones como parámetros, `Function` type | 1.5h |
| Práctica | 6 ejercicios: función que retorna función, callbacks, `.map()`, `.where()`, `.reduce()` en listas | 1.5h |
| Reto | Crear una función `aplicarOperacion(lista, operacion)` que aplique cualquier operación a cada elemento de una lista | 1h |

---

### Día 10 — Jueves 10 Abril
**Tema:** Recursión

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Qué es recursión, caso base vs caso recursivo, stack de llamadas, cuándo usar recursión vs iteración | 1.5h |
| Práctica | 8 ejercicios: factorial recursivo, Fibonacci recursivo, suma de dígitos, potencia, invertir string | 1.5h |
| Reto | "Torres de Hanoi" para 4 discos con impresión de cada movimiento | 1h |

---

### Día 11 — Viernes 11 Abril
**Tema:** Manejo de Errores + Buenas Prácticas

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `try`, `catch`, `finally`, `throw`, excepciones custom, assertions. Naming conventions, comentarios útiles | 1.5h |
| Práctica | 6 ejercicios: validar inputs con try/catch, crear excepciones custom `SaldoInsuficienteException` | 1.5h |
| Reto | Mejorar la "Tienda CLI": agregar validación de inputs y manejo de errores en todo el programa | 1h |

---

### Día 12 — Sábado 12 Abril & Día 13 — Domingo 13 Abril
**Tema:** 🔄 Repaso + Mini Proyecto Semanal (2 días)

| Día | Actividad | Duración |
|-----|-----------|----------|
| Sábado | Repasar funciones. Resolver 5 problemas de funciones en DartPad sin ver notas | 3h |
| Domingo | **Mini Proyecto: "Banco CLI"**: Crear cuenta (con función), depositar, retirar (con validación), ver saldo, historial de movimientos. Todo modular con funciones. Manejo de errores en cada operación | 4h |

**Entregable:** `semana2/proyecto_banco_cli/` — código modular con mínimo 8 funciones.

---

# 📆 SEMANA 3: Estructuras de Datos
**Fechas:** Lunes 14 - Domingo 20 de Abril  
**Meta:** Organizar datos eficientemente. Entender CUÁNDO usar cada estructura.

### Día 14 — Lunes 14 Abril
**Tema:** List (Arrays) — CRUD, métodos, iteración

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `List<T>`, add, remove, insert, indexOf, contains, sort, sublist, spread operator `...` | 1.5h |
| Práctica | 10 ejercicios: invertir lista, eliminar duplicados, encontrar máximo/mínimo sin funciones built-in, merge de 2 listas ordenadas | 1.5h |
| Reto | "Gestor de tareas CLI": agregar, eliminar, marcar completada, listar pendientes/completadas | 1h |

---

### Día 15 — Martes 15 Abril
**Tema:** Map (Diccionarios) y Set

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `Map<K,V>`, acceso, iteración (keys, values, entries). `Set<T>`, unión, intersección, diferencia | 1.5h |
| Práctica | 8 ejercicios: contar frecuencia de palabras, agenda telefónica, inventario con Map, encontrar elementos únicos con Set | 1.5h |
| Reto | "Mini diccionario español-inglés": buscar palabra, agregar traducción, listar todas. Usar Map | 1h |

---

### Día 16 — Miércoles 16 Abril
**Tema:** Implementar Stack y Queue desde cero

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Qué es un Stack (LIFO), qué es un Queue (FIFO), operaciones (push, pop, enqueue, dequeue, peek), casos de uso reales | 1.5h |
| Práctica | Implementar clase `Stack<T>` y `Queue<T>` con todos sus métodos usando List internamente | 1.5h |
| Reto | Usar tu Stack para: verificar si paréntesis están balanceados `"((()))"` → true, `"(()"` → false | 1h |

---

### Día 17 — Jueves 17 Abril
**Tema:** Implementar LinkedList desde cero

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Nodos, punteros, Singly vs Doubly Linked List, ventajas vs List/Array, complejidad O(1) insert vs O(n) | 1.5h |
| Práctica | Implementar `LinkedList<T>` con: addFirst, addLast, removeFirst, removeLast, contains, print, length | 1.5h |
| Reto | Agregar método `reverse()` a tu LinkedList que invierta los nodos in-place | 1h |

---

### Día 18 — Viernes 18 Abril
**Tema:** Introducción a Clases y OOP (para las estructuras)

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Clases, constructores, propiedades, métodos, encapsulación. `this`, getters/setters, `toString()` | 1.5h |
| Práctica | Crear clases: `Producto(nombre, precio, stock)`, `Estudiante(nombre, notas)` con métodos para calcular promedio | 1.5h |
| Reto | Refactorizar las estructuras Stack, Queue, LinkedList como clases con encapsulación adecuada | 1h |

---

### Día 19-20 — Sábado 19 y Domingo 20 Abril
**Tema:** 🔄 Repaso + Mini Proyecto Semanal

| Día | Actividad | Duración |
|-----|-----------|----------|
| Sábado | Repasar todas las estructuras. Dibujar diagramas de cómo funciona cada una | 3h |
| Domingo | **Mini Proyecto: "Sistema de Inventario CLI"**: Usar Map para productos, List para historial de ventas, Stack para "deshacer última venta", Queue para "pedidos pendientes". Menú interactivo completo | 4h |

**Entregable:** `semana3/proyecto_inventario/` — usando las 4 estructuras de datos.

---

# 📆 SEMANA 4: Algoritmos Fundamentales
**Fechas:** Lunes 21 - Domingo 27 de Abril  
**Meta:** Resolver problemas con eficiencia. Entender Big O.

### Día 21 — Lunes 21 Abril
**Tema:** Big O Notation — Complejidad Temporal y Espacial

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | O(1), O(n), O(n²), O(log n), O(n log n). Cómo analizar loops, loops anidados, recursión | 1.5h |
| Práctica | Analizar la complejidad de 10 funciones que ya escribiste en semanas anteriores | 1.5h |
| Reto | Dado un problema con solución O(n²), encontrar la solución O(n) usando Map/Set | 1h |

---

### Día 22 — Martes 22 Abril
**Tema:** Algoritmos de Búsqueda

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Búsqueda lineal O(n), búsqueda binaria O(log n), pre-requisitos (lista ordenada) | 1.5h |
| Práctica | Implementar ambas desde cero. Comparar tiempos con listas de 10, 1000, 100000 elementos | 1.5h |
| Reto | LeetCode #704 Binary Search + LeetCode #35 Search Insert Position | 1h |

---

### Día 23 — Miércoles 23 Abril
**Tema:** Algoritmos de Ordenamiento (Parte 1)

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Bubble Sort O(n²), Selection Sort O(n²), Insertion Sort O(n²). Visualizar paso a paso | 1.5h |
| Práctica | Implementar los 3 desde cero con prints en cada paso para ver cómo se ordenan | 1.5h |
| Reto | Crear función `compararAlgoritmos()` que mida el tiempo de cada algoritmo con listas de 1000 y 10000 elementos | 1h |

---

### Día 24 — Jueves 24 Abril
**Tema:** Algoritmos de Ordenamiento (Parte 2)

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Merge Sort O(n log n), Quick Sort O(n log n). Divide & Conquer. Cuándo usar cuál | 1.5h |
| Práctica | Implementar ambos desde cero. Agregar al comparador de ayer | 1.5h |
| Reto | LeetCode #912 Sort an Array (usar tu Merge Sort) + comparar rendimiento con los de ayer | 1h |

---

### Día 25 — Viernes 25 Abril
**Tema:** LeetCode — Problemas Clásicos (Two Pointers, Sliding Window)

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Patrones: Two Pointers, Sliding Window, Frequency Counter. Cuándo aplicar cada uno | 1.5h |
| Práctica | LeetCode #1 Two Sum, #217 Contains Duplicate, #242 Valid Anagram, #125 Valid Palindrome | 1.5h |
| Reto | LeetCode #121 Best Time to Buy and Sell Stock + #53 Maximum Subarray | 1h |

---

### Día 26-27 — Sábado 26 y Domingo 27 Abril
**Tema:** 🔄 Repaso + Maratón LeetCode

| Día | Actividad | Duración |
|-----|-----------|----------|
| Sábado | Repasar todos los algoritmos. Escribir cada uno de memoria (sin ver notas) | 3h |
| Domingo | **Maratón LeetCode**: Resolver 6 problemas Easy sin ayuda en máximo 4 horas. Documentar enfoque, complejidad y solución de cada uno | 4h |

**Entregable:** `semana4/leetcode/` con 10+ problemas resueltos y documentados.

---

# 📆 SEMANA 5: Git, GitHub y Terminal
**Fechas:** Lunes 28 Abril - Domingo 4 de Mayo  
**Meta:** Trabajar como un profesional. Control de versiones y línea de comandos.

### Día 28 — Lunes 28 Abril
**Tema:** Terminal / CLI — Comandos Esenciales

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Navegación (cd, ls/dir, pwd), Archivos (mkdir, touch, cp, mv, rm), Pipes (|), grep, echo | 1.5h |
| Práctica | 15 ejercicios: crear estructura de carpetas de un proyecto, buscar archivos, redirigir output | 1.5h |
| Reto | Crear toda la estructura de carpetas del proyecto MercadoSync usando SOLO la terminal | 1h |

---

### Día 29 — Martes 29 Abril
**Tema:** Git Básico — init, add, commit, log, diff

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Qué es control de versiones, init, staging area, commit, log, diff, .gitignore | 1.5h |
| Práctica | Crear un repo, hacer 10 commits progresivos con un mini proyecto, ver el log, hacer diff | 1.5h |
| Reto | [Learn Git Branching](https://learngitbranching.js.org/) — completar nivel "Introduction Sequence" | 1h |

---

### Día 30 — Miércoles 30 Abril
**Tema:** Git Avanzado — Branches, Merge, Rebase

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Branches (crear, cambiar, eliminar), merge (fast-forward vs 3-way), merge conflicts, rebase | 1.5h |
| Práctica | Crear branches feature/login y feature/register, hacer merge, resolver un conflicto intencionalmente | 1.5h |
| Reto | Learn Git Branching — completar "Ramping Up" y "Moving Work Around" | 1h |

---

### Día 31 — Jueves 1 Mayo
**Tema:** GitHub — Remote, Push, Pull, PRs

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Remotes (origin), push, pull, fetch, clone, fork. Pull Requests, code review, issues | 1.5h |
| Práctica | Subir TODOS los proyectos anteriores a GitHub con READMEs. Crear un PR desde una branch | 1.5h |
| Reto | Fork un repo público, hacer una mejora/fix, crear un PR real (buscar repos con label "good first issue") | 1h |

---

### Día 32 — Viernes 2 Mayo
**Tema:** Git Workflow Profesional + GitHub Profile

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Git Flow vs Trunk-Based, conventional commits (`feat:`, `fix:`, `docs:`), semantic versioning, README profesional (badges, screenshots, setup) | 1.5h |
| Práctica | Configurar perfil de GitHub: README de perfil, organizar repos, agregar descriptions y topics | 1.5h |
| Reto | Re-hacer los commits de todos tus proyectos con conventional commits. Crear READMEs profesionales | 1h |

---

### Día 33-34 — Sábado 3 y Domingo 4 de Mayo
**Tema:** 🔄 Repaso + Organización del portafolio

| Día | Actividad | Duración |
|-----|-----------|----------|
| Sábado | Repasar Git. Practicar resolución de conflictos. Configurar aliases de Git | 3h |
| Domingo | **Organizar TODO en GitHub**: Todos los proyectos con READMEs, estructura limpia, conventional commits. Crear repo "roadmap-progress" con tu progreso documentado | 4h |

**Entregable:** Perfil de GitHub profesional con 5+ repos organizados.

---

# 📆 SEMANA 6: HTTP, APIs y Proyecto Final
**Fechas:** Lunes 5 - Domingo 10 de Mayo  
**Meta:** Entender cómo se comunican las aplicaciones. Construir algo real que use todo.

### Día 35 — Lunes 5 Mayo
**Tema:** HTTP — El lenguaje de la web

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | HTTP methods (GET, POST, PUT, DELETE), status codes (200, 201, 400, 401, 404, 500), headers, body, JSON | 1.5h |
| Práctica | Usar Postman/Insomnia para hacer requests a APIs públicas: JSONPlaceholder, PokéAPI, OpenWeatherMap | 1.5h |
| Reto | Documentar en una tabla: 10 status codes con su significado y cuándo se usan | 1h |

---

### Día 36 — Martes 6 Mayo
**Tema:** Consumir APIs desde Dart (package `http`)

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | `async`, `await`, `Future<T>`, package `http`, `dart:convert` (jsonDecode/jsonEncode), manejo de errores en requests | 1.5h |
| Práctica | Crear script que consuma 3 APIs diferentes y muestre los datos formateados en consola | 1.5h |
| Reto | Consumir PokéAPI: buscar pokémon por nombre, mostrar stats, tipo, habilidades. Con manejo de errores | 1h |

---

### Día 37 — Miércoles 7 Mayo
**Tema:** Modelos de Datos + JSON Serialization

| Bloque | Actividad | Duración |
|---------|-----------|----------|
| Teoría | Crear clases modelo, `fromJson()`, `toJson()`, `factory` constructors, mapear JSON a objetos Dart | 1.5h |
| Práctica | Crear modelos para: Pokemon, Weather, User. Parsear JSON de API a objetos tipados | 1.5h |
| Reto | Crear un "mini repositorio" que abstraiga las llamadas HTTP y retorne objetos tipados (no Maps) | 1h |

---

### Día 38 — Jueves 8 Mayo
**Tema:** 🏗️ Proyecto Final — Día 1 de 3

**Proyecto: "CLI Dashboard" — App de línea de comandos que integra TODO**

| Feature | Detalle Técnico |
|---------|-----------------|
| 🌤️ Clima | Consumir API de OpenWeatherMap. Mostrar clima actual de tu ciudad |
| 📰 Noticias | Consumir NewsAPI. Mostrar 5 noticias top del día |
| 💰 Crypto | Consumir CoinGecko API. Mostrar precios de BTC, ETH, SOL |
| 📝 Tareas | CRUD local de tareas (guardado en archivo JSON con `dart:io`) |
| 📊 Stats | Mostrar resumen: tareas completadas hoy, clima, cripto favorita |

| Bloque | Actividad |
|---------|-----------|
| Diseño | Planificar arquitectura: qué clases, qué funciones, qué archivos. Dibujar diagrama | 2h |
| Implementación | Crear estructura de carpetas, modelos, funciones de API | 2.5h |

---

### Día 39 — Viernes 9 Mayo
**Tema:** 🏗️ Proyecto Final — Día 2 de 3

| Bloque | Actividad |
|---------|-----------|
| Implementación | Completar todas las features. Conectar APIs. Menú interactivo | 3h |
| Testing | Probar cada feature, manejar errores de red, inputs inválidos | 1.5h |

---

### Día 40 — Sábado 10 Mayo
**Tema:** 🏗️ Proyecto Final — Día 3: Polish + Publicar

| Bloque | Actividad |
|---------|-----------|
| Polish | Refactorizar código, mejorar la presentación en consola (colores con ANSI codes), agregar loading indicators | 2h |
| Documentación | README profesional con: descripción, screenshots, setup, arquitectura, APIs usadas | 1.5h |
| Publicar | Push a GitHub con conventional commits, tags, y release | 1h |

---

### Domingo 11 Mayo
**🎓 Día de Evaluación Final de Fase 0**

| Evaluación | Qué se evalúa | Criterio de aprobación |
|------------|---------------|----------------------|
| **Quiz teórico** | Variables, condicionales, bucles, funciones, scope, recursión, Big O | ≥ 80% correcto |
| **Code Review** | Leer código del Proyecto Final. Evaluar: nombres, funciones, DRY, manejo de errores | 0 code smells críticos |
| **LeetCode Sprint** | Resolver 3 problemas Easy en 45 minutos sin ayuda | ≥ 2 de 3 resueltos |
| **Git Challenge** | Crear branch, hacer cambios, resolver conflicto, crear PR | Completado sin errores |

---

## ✅ Checklist Final Fase 0 — ¿Estás listo para la Fase 1?

- [ ] Domino variables, tipos, condicionales y bucles en Dart
- [ ] Puedo escribir funciones con parámetros nombrados, opcionales y default
- [ ] Entiendo closures y funciones de orden superior
- [ ] Puedo resolver problemas con recursión
- [ ] Implementé Stack, Queue y LinkedList desde cero
- [ ] Resolví 10+ problemas en LeetCode (Easy)
- [ ] Entiendo Big O y puedo analizar complejidad
- [ ] Domino Git: branches, merge, conflictos, PRs, conventional commits
- [ ] Puedo navegar la terminal con confianza
- [ ] Entiendo HTTP, status codes y puedo consumir APIs
- [ ] Completé el proyecto final "CLI Dashboard"
- [ ] Todos mis proyectos están en GitHub con READMEs profesionales

> **Si marcaste TODO ✅ → Estás listo para la Fase 1: Flutter & Desarrollo Móvil. ¡Vamos! 🚀**

---

## 📂 Estructura de Carpetas Sugerida

```
Fase_0_Fundamentos/
├── PLAN_FASE_0.md          ← Este archivo
├── semana1/
│   ├── dia1/               ← 5 archivos .dart
│   ├── dia2/               ← 10 ejercicios + calculadora IMC
│   ├── dia3/               ← 8 ejercicios + cajero
│   ├── dia4/               ← 8 ejercicios + calificaciones
│   ├── dia5/               ← 10 ejercicios + adivina el número
│   └── proyecto_tienda_cli/ ← Mini proyecto semanal
├── semana2/
│   ├── dia7/  a  dia11/
│   └── proyecto_banco_cli/
├── semana3/
│   ├── dia14/ a dia18/
│   └── proyecto_inventario/
├── semana4/
│   ├── dia21/ a dia25/
│   └── leetcode/            ← 10+ problemas resueltos
├── semana5/
│   ├── dia28/ a dia32/
│   └── github_portfolio/
└── semana6/
    ├── dia35/ a dia37/
    └── proyecto_cli_dashboard/  ← Proyecto final
```
