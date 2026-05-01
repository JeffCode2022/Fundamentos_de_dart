# 🟢 FASE 0 — SEMANA 6 — DÍA 35
## Tema: HTTP — El lenguaje de la web

### 📖 Teoría

HTTP (HyperText Transfer Protocol) es cómo las apps se comunican con los servidores.

### Métodos HTTP
| Método | Acción | Ejemplo |
|--------|--------|---------|
| **GET** | Obtener datos | Listar productos |
| **POST** | Crear datos | Registrar usuario |
| **PUT** | Actualizar TODO | Editar perfil completo |
| **PATCH** | Actualizar PARCIAL | Cambiar solo el email |
| **DELETE** | Eliminar | Borrar cuenta |

### Status Codes
| Código | Significado | Cuándo se usa |
|--------|-------------|---------------|
| **200** | OK | Request exitoso |
| **201** | Created | Recurso creado (POST exitoso) |
| **204** | No Content | Eliminado exitosamente |
| **400** | Bad Request | Datos inválidos del cliente |
| **401** | Unauthorized | No autenticado (falta token) |
| **403** | Forbidden | Autenticado pero sin permisos |
| **404** | Not Found | Recurso no existe |
| **409** | Conflict | Dato duplicado |
| **500** | Internal Server Error | Error del servidor |

### Anatomía de un Request
```
GET /api/users/123 HTTP/1.1
Host: api.ejemplo.com
Authorization: Bearer eyJhbGciOiJI...
Content-Type: application/json
Accept: application/json
```

### Anatomía de un Response
```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": 123,
  "nombre": "Jefferson",
  "email": "jeff@ejemplo.com"
}
```

### 📋 Ejercicios con Postman/Insomnia
1. Instala [Postman](https://www.postman.com/downloads/) o [Insomnia](https://insomnia.rest/download)
2. Haz requests a estas APIs públicas:

```
# JSONPlaceholder (datos fake)
GET  https://jsonplaceholder.typicode.com/posts
GET  https://jsonplaceholder.typicode.com/posts/1
POST https://jsonplaceholder.typicode.com/posts
     Body: {"title": "Mi Post", "body": "Contenido", "userId": 1}

# PokéAPI
GET  https://pokeapi.co/api/v2/pokemon/pikachu
GET  https://pokeapi.co/api/v2/pokemon/25

# OpenWeatherMap (necesitas API key gratuita)
# Regístrate en: https://openweathermap.org/api
GET  https://api.openweathermap.org/data/2.5/weather?q=Lima&appid=TU_API_KEY
```

### 🧠 Reto
Documenta en una tabla los 10 status codes de arriba con:
- Código
- Nombre
- Cuándo se usa
- Ejemplo real de cuándo lo verías en una app
