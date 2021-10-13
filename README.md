# Loan API

API REST de prestamos, creado utilizando las tecnologías Spring Boot, PostgreSQL, JPA y Hibernate.

## 📋 Pre-requisitos 

_JDK 1.8 y Maven 3.5+_

## 🔧 Pasos para configurar el ambiente local

**1. Clonar la aplicación**

```bash
git clone https://github.com/progmise/loan-api.git
```

**2. Crear una base de datos en PostgreSQL**
```bash
CREATE DATABASE "LOAN_API"
```
- Ejecutar `src/main/resources/schema.sql`
- Ejecutar `src/main/resources/dummy_data.sql`

**3. Cambiar el usuario y contraseña de PostgreSQL de acuerdo a la instalación del mismo**

+ Abrir `src/main/resources/application.properties`
+ Cambiar `spring.datasource.url`, por defecto el valor puede ser `jdbc:postgresql://localhost:5432/LOAN_API` y puede variar el número de puerto,  de acuerdo a la instalación de PostgreSQL
+ Cambiar `spring.datasource.username` y `spring.datasource.password`

**4. Correr la app usando Maven**

```bash
mvn spring-boot:run
```
La app empezará a correr en <http://localhost:8080>

## ⚙️ Explorar la API REST

La app define los siguientes CRUD, que por ahora están incompletos.

### Users

| Método | Url | Descripción | Ejemplo de 'Request Body' válido |
| ------ | --- | ----------- | ------------------------- |
| GET    | /api/1.0/users/{id} | Obtiene un usuario por id | |
| POST   | /api/1.0/users/ | Crea un nuevo usuario | [JSON](#postcreate) |
| DELETE | /api/1.0/users/{id} | Borra un usuario | |

### Loans

| Método | Url | Descripción | Ejemplo de 'Request Body' válido |
| ------ | --- | ----------- | ------------------------- |
| GET    | /api/1.0/loans | Obtiene la primera página de prestamos | |
| GET    | /api/1.0/loans?page={page}&size={size} | Obtiene una página determinada con el tamaño indicado de elementos, de prestamos | |
| GET    | /api/1.0/loans?user_id={userId} | Obtiene los prestamos del usuario indicado | |
| GET    | /api/1.0/loans?page={page}&size={size}&user_id={userId} | Obtiene una página determinada con el tamaño indicado de elementos, de prestamos filtrados por el usuario indicado | |

Testear los mismos a través de Postman, o cualquier otra herramienta de testing de API REST.

## 📖 Ejemplos de bodys de Request válidos

##### <a id="postcreate">Crear User -> /api/1.0/users/</a>
```json
{
  "email": "pepeargento@dummymail.com",
  "firstName": "Pepe",
  "lastName": "Argento"
}
```

## Extra ##

Por el momento, se encuentra disponible y funcional la aplicación en Heroku y es posible hacer las mismas pruebas que de manera local. El mismo está corriendo en <https://loan-api-example.herokuapp.com>
![segment](https://api.segment.io/v1/pixel/track?data=ewogICJ3cml0ZUtleSI6ICJwcDJuOTU4VU1NT21NR090MWJXS0JQd0tFNkcydW51OCIsCiAgInVzZXJJZCI6ICIxMjNibG9nYXBpMTIzIiwKICAiZXZlbnQiOiAiQmxvZ0FwaSB2aXNpdGVkIiwKICAicHJvcGVydGllcyI6IHsKICAgICJzdWJqZWN0IjogIkJsb2dBcGkgdmlzaXRlZCIsCiAgICAiZW1haWwiOiAiY29tcy5zcHVyc0BnbWFpbC5jb20iCiAgfQp9)
