<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, entities.Usuario , entities.Turno" %>

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
               <h1 class="small-font">Lista de usuarios</h1>
               <table class="tabla-personas">
                   <thead>
                       <tr>
                           <th>Nombre</th>
                           <th>Apellido</th>
                           <th>Edad</th>
                           <th>Email</th>
                           <th>Turnos</th>

                       </tr>
                   </thead>


                   <tbody>

                     <%
                         List<Usuario> lista = (List<Usuario>) request.getAttribute("listado");
                         if (lista != null && !lista.isEmpty()) {
                             for (Usuario usuario : lista) {
                     %>
                                 <tr>
                                     <td><%= usuario.getNombre() %></td>
                                     <td><%= usuario.getApellido() %></td>
                                     <td><%= usuario.getEdad() %></td>
                                     <td><%= usuario.getEmail() %></td>
                                     <td>
                                         <%
                                             for (Turno turno : usuario.getTurnos()) {
                                         %>
                                             <span class="turnos"><%= turno.getIdentificador() %>, </span>
                                         <%
                                             }
                                         %>
                                     </td>
                                 </tr>
                     <%
                             }
                         } else {
                     %>
                             <tr><td colspan="5">No hay usuarios registrados.</td></tr>
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