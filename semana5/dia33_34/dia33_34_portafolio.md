# 🟢 FASE 0 — SEMANA 5 — DÍAS 33-34
## Tema: Repaso + Organización del Portafolio

### 📋 Checklist del Sábado (Repaso Git)

- [ ] Puedo hacer `init`, `add`, `commit`, `push` sin pensar
- [ ] Puedo crear branches y hacer merge sin conflictos
- [ ] Puedo resolver conflictos de merge manualmente
- [ ] Conozco la diferencia entre merge y rebase
- [ ] Uso conventional commits (`feat:`, `fix:`, `docs:`)

### Práctica de Conflictos
Repite el ejercicio de conflictos del Día 30 hasta que lo hagas sin miedo.

### Configurar Aliases de Git
```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm "commit -m"
git config --global alias.lg "log --oneline --graph --decorate"
```
Ahora puedes escribir `git st` en vez de `git status`.

---

### 📋 Checklist del Domingo (Portafolio)

#### Repos que deberías tener en GitHub:
- [ ] `Fundamentos_de_dart` — Semanas 1-4 con READMEs
- [ ] Perfil README (`JeffCode2022/JeffCode2022`)

#### Para cada repo, verifica:
- [ ] Tiene un README.md profesional
- [ ] Commits usan conventional commits
- [ ] Tiene description y topics en GitHub
- [ ] Código está limpio y comentado
- [ ] `.gitignore` apropiado

#### Crear repo de progreso:
```bash
# Repo "roadmap-progress" documentando tu avance
mkdir roadmap-progress
cd roadmap-progress
git init
```

Crea un `README.md` con:
```markdown
# 🗺️ Roadmap de Progreso — Jefferson Chunga

## Fase 0: Fundamentos de Programación
- [x] Semana 1: Lógica Básica
- [x] Semana 2: Funciones y Modularidad
- [x] Semana 3: Estructuras de Datos
- [x] Semana 4: Algoritmos
- [x] Semana 5: Git y GitHub
- [ ] Semana 6: HTTP, APIs y Proyecto Final

## Fase 1: Flutter & Desarrollo Móvil
(Próximamente)
```
