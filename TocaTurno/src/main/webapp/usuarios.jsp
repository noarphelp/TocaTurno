<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="entities.Usuario" %>

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
        <h1>Nuevo Usuario</h1>

         <%
                    String mensaje = (String) request.getAttribute("mensaje");
                    String tipoMensaje = (String) request.getAttribute("tipoMensaje");
                    if (mensaje != null && tipoMensaje != null) {
                %>
                    <div class="mensaje <%= tipoMensaje %>"><%= mensaje %></div>
                <%
                    }
                %>

        <form action="/TocaTurno/usuarios" method="post" class="form-usuario">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>

            <div class="form-group">
                <label for="apellidos">Apellido:</label>
                <input type="text" id="apellidos" name="apellidos" required>
            </div>

            <div class="form-group">
                <label for="edad">Edad:</label>
                <input type="number" id="edad" name="edad" min="0" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-buttons">
                <button type="submit" class="btn">Crear Usuario</button>
                <button type="reset" class="btn btn-secondary">Limpiar</button>
                <a href="index.jsp" class="btn-volver">Volver</a>
            </div>
        </form>

    </main>


</body>
</html>