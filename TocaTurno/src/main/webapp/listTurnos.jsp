<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, entities.Turno" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>TocaTurno</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body class="small-font">
   <%@ include file="partials/header.jsp" %>

   <main class="contenido-principal">
       <h1 class="small-font">Lista de turnos</h1>
       <table class="tabla-personas">
           <thead>
               <tr>
                   <th>Identificador</th>
                   <th>Fecha y Hora</th>
                   <th>Descripción</th>
                   <th>Estado</th>
                   <th>Usuario</th>
               </tr>
           </thead>

          <tbody>
               <%
                   List<Turno> listaTurnos = (List<Turno>) request.getAttribute("listaTurnos");
                   if (listaTurnos != null && !listaTurnos.isEmpty()) {
                       for (Turno turno : listaTurnos) {
               %>
                   <tr>
                       <td><%= turno.getIdentificador() %></td>
                       <td><%= turno.getFecha().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) %></td>
                       <td><%= turno.getDescripcion() %></td>
                       <td><%= turno.getEstado() %></td>
                       <td><%= turno.getUsuario().getNombre() %> <%= turno.getUsuario().getApellido() %></td>
                   </tr>
               <%
                       }
                   } else {
               %>
                   <tr><td colspan="5">No hay turnos registrados.</td></tr>
               <%
                   }
               %>
           </tbody>
       </table>

       <div class="form-buttons-volver">
                      <a href="index.jsp" class="btn-volver">Volver</a>
                  </div>
   </main>

</body>
</html>
