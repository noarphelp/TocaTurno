![image](https://github.com/user-attachments/assets/e0a56c97-ebb7-4c5f-8f02-dc0e6fbb8142)


                                                                        
## 🕒 TocaTurno
TocaTurno es una aplicación diseñada para optimizar la asignación y gestión de turnos dentro de una institución pública. Permite a los usuarios registrarse, consultar la disponibilidad de turnos, administrar sus citas y verificar el estado de cada turno en tiempo real. Con una arquitectura basada en Java EE y JPA, la aplicación ofrece un entorno robusto y seguro para la administración eficiente de turnos.



## ✨ Funcionalidades principales
Registro de usuarios: Permite la creación de nuevos usuarios con datos como nombre, apellido, email y edad.

Listado de usuarios: Muestra todos los usuarios registrados y sus turnos asociados en la base de datos.

Creación de turnos: Los usuarios pueden crear turnos y asociarlos a un usuario específico.

Listado de turnos: Muestra todos los turnos existentes en la base de datos.

Filtrado de turnos por estado y fecha: Permite buscar turnos según su estado y fecha específica.

Estados de turnos: Cada turno puede estar en estado atendido o en espera.

Interfaz basada en JSP: Visualización de datos en páginas dinámicas mediante servlets.



## 🛠️ Tecnologías utilizadas
Java: Backend con Servlets y JPA.

JPA (Java Persistence API): Persistencia de datos optimizada.

Tomcat: Servidor web para la ejecución de la aplicación.

JSP: Para las vistas.

MySQL: Almacenamiento de datos.



## 🚀 Cómo ejecutar la aplicación
Configurar la base de datos en MySQL con las tablas necesarias.

Crear una base de datos con la siguiente URL de conexión:
jdbc:mysql://localhost:3306/toca_turno?serverTimezone=UTC

Clonar el proyecto en tu máquina local:
git clone git@github.com:noarphelp/TocaTurno.git

Desplegar el proyecto con Tomcat.

Acceder a la aplicación desde el navegador en:
http://localhost:8080/TocaTurno



## 🗂️ Estructura del proyecto

```
/tocaturno-app
├── src
│   └── main
│       └── java
│           ├── controllers
│           │   ├── TurnoController.java
│           │   └── UsuarioController.java
│           ├── entities
│           │   ├── Estado.java
│           │   ├── Turno.java
│           │   └── Usuario.java
│           ├── persistences
│           │   ├── ConfigJPA.java
│           │   └── GenericoJPA.java
│           ├── servlets
│           │   ├── ListTurnoServlet.java
│           │   ├── ListUsuarioServlet.java
│           │   ├── TurnoFechaServlet.java
│           │   ├── TurnoServlet.java
│           │   └── UsuarioServlet.java
│           └── utils
│               └── TurnoUtils.java
├── webapp
│   ├── partials
│   │   └── header.jsp
│   ├── public
│   │   └── css
│   │       └── style.css
│   └── WEB-INF
│       ├── web.xml
│       ├── index.jsp
│       ├── listTurnos.jsp
│       ├── listUsuarios.jsp
│       ├── turnoFecha.jsp
│       ├── turnos.jsp
│       └── usuarios.jsp
```
Un agradecimiento especial a equipo de desarollo por su esfuerzo y dedicación en la creación de esta aplicación.
