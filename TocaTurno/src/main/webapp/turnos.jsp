<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="entities.Turno" %>
<%@ page import="entities.Usuario" %>
<%@ page import="entities.Estado" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>TocaTurno</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body class="small-font">

    <%@ include file="partials/header.jsp" %>

    <main>
        <h1 class="small-font">Nuevo turno</h1>

        <form class="form-usuario" action="/TocaTurno/turno" method="post">
            <div class="form-group">
                <label for="fecha">Fecha y Hora</label>
                <input type="datetime-local" name="fecha" id="fecha" required>
            </div>

            <div class="form-group">
                <label for="descripcion">Descripción</label>
                <input type="text" name="descripcion" id="descripcion" maxlength="100" required>
            </div>

            <div class="form-group">
                <label for="estado">Estado</label>
                <select name="estado" id="estado" required>
                    <option value="">Seleccione</option>
                    <option value="EN_ESPERA">EN ESPERA</option>
                    <option value="YA_ATENDIDO">YA ATENDIDO</option>
                </select>
            </div>

            <div class="form-group">
                <label for="usuarioId">Usuario</label>
                <select name="usuarioId" id="usuarioId" required>
                    <option value="">Seleccione un usuario</option>
                    <%
                        List<Usuario> listaUsuarios = (List<Usuario>) request.getAttribute("listaUsuarios");
                        if (listaUsuarios != null) {
                            for (Usuario u : listaUsuarios) {
                    %>
                        <option value="<%= u.getId() %>">
                            <%= u.getNombre() %> (ID: <%= u.getId() %>)
                        </option>
                    <%
                            }
                        }
                    %>
                </select>
            </div>

            <div class="form-buttons">
                <button type="submit" class="btn">Crear Turno</button>
                <a href="index.jsp" class="btn-volver">Volver</a>
            </div>
        </form>

        <%
            Turno turno = (Turno) request.getAttribute("turnoCreado");
            if (turno != null) {
        %>
        <div class="ticket-creado">
            <h2 class="small-font">¡Turno creado con éxito!</h2>
            <h2 class="small-font"> ** NUM- <%= turno.getIdentificador() %> **</h2>
            <p><strong>Fecha:</strong> <%= turno.getFecha().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) %></p>
            <p><strong>Descripción:</strong> <%= turno.getDescripcion() %></p>
            <p><strong>Estado:</strong> <%= turno.getEstado() %></p>
            <p><strong>Usuario:</strong> <%= turno.getUsuario().getNombre() %></p>
        </div>
        <% } %>


    </main>

</body>
</html>