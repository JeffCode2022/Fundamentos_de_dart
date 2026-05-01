# 🟢 FASE 0 — SEMANA 5 — DÍA 29
## Tema: Git Básico — init, add, commit, log, diff

### 📖 Teoría
Git es un sistema de control de versiones. Guarda "fotos" (commits) de tu código
en cada momento, permitiéndote volver atrás si algo sale mal.

### 📋 Ejercicios Prácticos

#### Setup inicial (una sola vez)
```bash
git config --global user.name "Jefferson Chunga"
git config --global user.email "jchungazap@gmail.com"
```

#### Ejercicio 1: Tu primer repositorio
```bash
# 1. Crea una carpeta "practica_git" y entra
mkdir practica_git
cd practica_git

# 2. Inicializa un repositorio
git init

# 3. Verifica el estado
git status
```

#### Ejercicio 2: Staging Area y Commits
```bash
# 4. Crea un archivo
echo "# Mi Proyecto de Práctica" > README.md

# 5. Agrega al staging area
git add README.md

# 6. Haz tu primer commit
git commit -m "feat: agregar README inicial"

# 7. Verifica el log
git log --oneline
```

#### Ejercicio 3: Hacer 10 commits progresivos
Crea un archivo `calculadora.dart` y haz un commit por cada función:
```
Commit 1: "feat: crear archivo con main vacío"
Commit 2: "feat: agregar función sumar"
Commit 3: "feat: agregar función restar"
Commit 4: "feat: agregar función multiplicar"
Commit 5: "feat: agregar función dividir"
Commit 6: "feat: agregar validación división por cero"
Commit 7: "feat: agregar función potencia"
Commit 8: "feat: agregar menú interactivo"
Commit 9: "fix: corregir error en validación"
Commit 10: "docs: agregar comentarios de documentación"
```

#### Ejercicio 4: git diff
```bash
# Modifica un archivo y ANTES de hacer add, ejecuta:
git diff

# Después de hacer add:
git diff --staged
```

#### Ejercicio 5: .gitignore
Crea un archivo `.gitignore`:
```
# Archivos a ignorar
*.log
.dart_tool/
.packages
build/
.idea/
.vscode/
```

### 🧠 Reto
Completa el nivel "Introduction Sequence" en:
https://learngitbranching.js.org/
Toma un screenshot cuando termines.
