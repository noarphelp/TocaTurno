                                                                          # TocaTurno
 
TocaTurno es una aplicación diseñada para optimizar la asignación y gestión de turnos dentro de una institución pública. Permite a los usuarios registrarse, consultar la disponibilidad de turnos, administrar sus citas y verificar el estado de cada turno en tiempo real. Con una arquitectura basada en Java EE y JPA, la aplicación ofrece un entorno robusto y seguro para la administración eficiente de turnos. 

Funcionalidades principales
- **Registro de usuarios**: Permite la creación de nuevos usuarios con datos como nombre, apellido, email y edad.
- **Listado de usuarios**: Permite listar todos los usuarios existentes y sus turnos asociados, en base de datos.
- **Creación de turnos**: Los usuarios pueden crear turnos y asociarlos a un usuario en concreto .
- **Listado de turnos**: Permite listar todos los turnos existentes en base de datos.
- **Filtrado de turnos por estado y fecha**: Búsqueda de turnos con un estado y una fecha en concreto.
- **Estados de turnos** → Cada turno puede estar : atentdido o en espera.
- **Interfaz basada en JSP**: Visualización de datos en páginas dinámicas mediante servlets.

#Tecnologías utilizadas
- **Java **: Backend con Servlets y JPA.
- **JPA (Java Persistence API)** :Persistencia de datos optimizada.
- **Tomcat**:Servidor web para la ejecución de la aplicación.
- **JSP **
- **MySQL (para almacenamiento de datos)**

# Cómo ejecutar la aplicación
1. **Configurar la base de datos** en MySQL con las tablas necesarias.
2. **Nombre de base de datos a crear ** ("jdbc:mysql://localhost:3306/toca_turno?serverTimezone=UTC").
3. **Clonar proyecto en alguna carpeta local ** (git clone git@github.com:noarphelp/TocaTurno.git).
4. **Desplegar el proyecto con Tomcat** .
5. **Acceder a la aplicación** desde el navegador en `http://localhost:8080/TocaTurno`.

\\\
# Estructura del proyecto
/tocaturno-app
├── src
│   ├── main
│   │   ├── java
│   │   │   ├── controllers/TurnoController.java    # Controlador para gestionar turnos
│   │   │   ├── controllers/UsuarioController.java  # Controlador para gestionar usuarios
│   │   │   ├── entities/Estado.java                # Entidad para gestionar estados de turnos
│   │   │   ├── entities/Turno.java                 # Entidad que representa un turno
│   │   │   ├── entities/Usuario.java               # Entidad que representa un usuario
│   │   │   ├── persistences/ConfigJPA.java         # Clase para la configuración de JPA
│   │   │   ├── persistences/GenericoJPA.java       # Clase genérica para operaciones JPA
│   │   │   ├── servlets/ListTurnoServlet.java      # Servlet para listar turnos
│   │   │   ├── servlets/ListUsuarioServlet.java    # Servlet para listar usuarios
│   │   │   ├── servlets/TurnoFechaServlet.java     # Servlet para manejar turnos por fecha
│   │   │   ├── servlets/TurnoServlet.java          # Servlet para gestionar turnos
│   │   │   ├── servlets/UsuarioServlet.java        # Servlet para manejar usuarios
│   │   │   ├── utils/TurnoUtils.java               # Utilidades para la gestión de turnos
/webapp
├── partials
│   ├── header.jsp             # Fragmento reutilizable para encabezados
├── public
│   ├── css
│   │   ├── style.css          # Archivo de estilos para la aplicación
├── WEB-INF
│   ├── web.xml                # Configuración de servlets y contexto de la aplicación
│   ├── index.jsp              # Página de inicio de la aplicación
│   ├── listTurnos.jsp         # Página para listar turnos
│   ├── listUsuarios.jsp       # Página para listar usuarios
│   ├── turnoFecha.jsp         # Página para gestionar turnos por fecha
│   ├── turnos.jsp             # Página para gestionar turnos
│   ├── usuarios.jsp           # Página para gestionar usuarios

\\\
