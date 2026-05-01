# 🟢 FASE 0 — SEMANA 5 — DÍA 31
## Tema: GitHub — Remote, Push, Pull, Pull Requests

### 📋 Ejercicios

#### Ejercicio 1: Conectar repo local con GitHub
```bash
# 1. Crea un repo en GitHub (vacío, sin README)
# 2. Conecta tu repo local
git remote add origin https://github.com/JeffCode2022/NOMBRE-DEL-REPO.git
git branch -M main
git push -u origin main
```

#### Ejercicio 2: Clone
```bash
# Clona un repo existente
git clone https://github.com/JeffCode2022/Fundamentos_de_dart.git
```

#### Ejercicio 3: Push y Pull
```bash
# Push: Subir cambios locales al remoto
git push

# Pull: Bajar cambios del remoto al local
git pull
```

#### Ejercicio 4: Crear un Pull Request
```bash
# 1. Crea una branch
git checkout -b feature/nueva-funcionalidad

# 2. Haz cambios y commits
git add .
git commit -m "feat: agregar nueva funcionalidad"

# 3. Push de la branch al remoto
git push -u origin feature/nueva-funcionalidad

# 4. Ve a GitHub y crea el Pull Request desde la interfaz web
# 5. Revisa los cambios, escribe una descripción, y haz merge
```

#### Ejercicio 5: Subir TODOS tus proyectos
Sube todos los proyectos de las semanas 1-4 a GitHub con READMEs.

### 🧠 Reto
1. Busca un repo público con label "good first issue"
2. Haz Fork del repo
3. Clona tu fork
4. Crea una branch, haz una mejora
5. Push y crea un Pull Request REAL

---

# 🟢 DÍA 32 — Git Workflow Profesional

### Conventional Commits
```
feat:     Nueva funcionalidad
fix:      Corrección de bug
docs:     Cambios en documentación
style:    Formato (sin cambiar lógica)
refactor: Refactorización
test:     Agregar tests
chore:    Tareas de mantenimiento
```

### README Profesional (Template)
```markdown
# 📦 Nombre del Proyecto

Descripción breve del proyecto.

## 🚀 Instalación
\`\`\`bash
git clone https://github.com/JeffCode2022/proyecto.git
cd proyecto
dart run
\`\`\`

## 📋 Características
- ✅ Feature 1
- ✅ Feature 2

## 🛠️ Tecnologías
- Dart 3.x

## 📸 Screenshots
(Agrega capturas de pantalla)

## 👤 Autor
**Jefferson Chunga** — [@JeffCode2022](https://github.com/JeffCode2022)
```

### Ejercicio: Crear tu perfil de GitHub
1. Crea un repo con tu nombre de usuario: `JeffCode2022/JeffCode2022`
2. Agrega un `README.md` con tu presentación
3. Incluye: bio, tecnologías, proyectos destacados, contacto
