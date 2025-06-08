<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="entities.Turno" %>
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
        <h1 class="small-font">Buscar Turnos por Fecha</h1>

        <!-- Formulario para seleccionar la fecha -->
        <form class="form-usuario" action="/TocaTurno/turnoFecha" method="get">
            <div class="form-group">
                <label for="fecha">Seleccione una fecha:</label>
                <input type="date" name="fecha" id="fecha" required>
            </div>

            <div class="form-buttons">
                <button type="submit" class="btn">Buscar</button>
                <a href="index.jsp" class="btn-volver">Volver</a>
            </div>
        </form>



        <!-- Lista de resultados si existen -->
        <%
            List<Turno> listaTurnos = (List<Turno>) request.getAttribute("turnosPorFecha");
            if (listaTurnos != null) {
                if (!listaTurnos.isEmpty()) {
        %>
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
                        for (Turno turno : listaTurnos) {
                    %>
                        <tr>
                            <td><%= turno.getIdentificador() %></td>
                            <td><%= turno.getFecha().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) %></td>
                            <td><%= turno.getDescripcion() %></td>
                            <td><%= turno.getEstado() %></td>
                            <td><%= turno.getUsuario().getNombre() %></td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        <%
                } else {
        %>
            <p style="margin-top: 2rem; color: white;">No se encontraron turnos para la fecha seleccionada.</p>
        <%
                }
            }
        %>
    </main>

</body>
</html>