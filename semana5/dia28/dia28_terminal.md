# 🟢 FASE 0 — SEMANA 5 — DÍA 28
## Tema: Terminal / CLI — Comandos Esenciales

### 📖 Teoría

La terminal es donde los profesionales trabajan. Es más rápida que hacer clic.

### 📋 Ejercicios (15 ejercicios)

Ejecuta cada comando en tu terminal PowerShell y **escribe el resultado como comentario**.

#### Navegación
```powershell
# 1. Muestra tu directorio actual
pwd

# 2. Lista los archivos del directorio actual
ls

# 3. Navega a tu escritorio
cd ~/Desktop

# 4. Vuelve al directorio anterior
cd -
```

#### Archivos y Carpetas
```powershell
# 5. Crea una carpeta llamada "practica_terminal"
mkdir practica_terminal

# 6. Entra a la carpeta
cd practica_terminal

# 7. Crea 3 archivos vacíos
New-Item archivo1.txt, archivo2.txt, archivo3.txt

# 8. Escribe texto en un archivo
echo "Hola desde la terminal" > archivo1.txt

# 9. Lee el contenido del archivo
cat archivo1.txt

# 10. Copia un archivo
cp archivo1.txt archivo1_copia.txt

# 11. Renombra un archivo
mv archivo2.txt archivo_renombrado.txt

# 12. Elimina un archivo
rm archivo3.txt

# 13. Lista todo mostrando detalles
ls -la
```

#### Búsqueda
```powershell
# 14. Busca archivos .dart recursivamente en Fase_0_Fundamentos
Get-ChildItem -Path "C:\Users\CHUNGA\Desktop\100 proyectos de VipeCode_2026\Fase_0_Fundamentos" -Recurse -Filter "*.dart"

# 15. Busca texto dentro de archivos
Select-String -Path "*.txt" -Pattern "Hola"
```

### 🧠 Reto
Crea TODA la estructura de carpetas del proyecto `MercadoSync` usando SOLO la terminal:
```
MercadoSync/
├── lib/
│   ├── models/
│   ├── services/
│   ├── screens/
│   └── utils/
├── test/
├── assets/
│   ├── images/
│   └── fonts/
└── README.md
```

```powershell
# Tu solución aquí:
```
