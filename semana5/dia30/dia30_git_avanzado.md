# 🟢 FASE 0 — SEMANA 5 — DÍA 30
## Tema: Git Avanzado — Branches, Merge, Rebase

### 📖 Teoría
Las **branches** (ramas) permiten trabajar en features sin afectar el código principal.

### 📋 Ejercicios

#### Ejercicio 1: Crear y cambiar de branch
```bash
# Crear una branch
git branch feature/login

# Cambiar a esa branch
git checkout feature/login
# O en una línea:
git checkout -b feature/register

# Ver todas las branches
git branch -a

# Volver a main
git checkout main
```

#### Ejercicio 2: Merge (Fast-Forward)
```bash
# 1. Crea branch feature/saludo
git checkout -b feature/saludo

# 2. Haz cambios y commits en esa branch
echo "void saludar() => print('Hola!');" >> calculadora.dart
git add .
git commit -m "feat: agregar función saludar"

# 3. Vuelve a main y haz merge
git checkout main
git merge feature/saludo

# 4. Elimina la branch (ya no la necesitas)
git branch -d feature/saludo
```

#### Ejercicio 3: Merge con Conflicto (Intencional)
```bash
# 1. Crea branch-A y modifica la línea 1 de README.md
git checkout -b branch-A
# Edita README.md línea 1: "# Proyecto A"
git add . && git commit -m "cambio en branch-A"

# 2. Vuelve a main y modifica la MISMA línea 1
git checkout main
# Edita README.md línea 1: "# Proyecto Main"
git add . && git commit -m "cambio en main"

# 3. Intenta merge → ¡CONFLICTO!
git merge branch-A

# 4. Abre el archivo, verás algo así:
# <<<<<<< HEAD
# # Proyecto Main
# =======
# # Proyecto A
# >>>>>>> branch-A

# 5. Resuelve el conflicto manualmente (elige qué texto conservar)
# 6. Elimina los marcadores <<<<, ====, >>>>
# 7. Haz add y commit
git add .
git commit -m "fix: resolver conflicto de merge"
```

#### Ejercicio 4: Rebase (Alternativa al merge)
```bash
# Rebase reescribe el historial poniendo tus commits "encima" de main.
git checkout feature/nueva
git rebase main
# Luego vuelves a main y haces merge (será fast-forward)
git checkout main
git merge feature/nueva
```

### 🧠 Reto
Completa los niveles "Ramping Up" y "Moving Work Around" en:
https://learngitbranching.js.org/
