<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, entities.Turno, entities.Estado" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Buscar Turnos por Estado</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body class="small-font">

    <%@ include file="partials/header.jsp" %>

    <main class="contenido-principal">
        <h1 class="small-font">Buscar turnos por estado</h1>

        <form action="/TocaTurno/turnoEstado" method="get" class="form-usuario">
            <div class="form-group">
                <label for="estado">Estado</label>
                <select name="estado" id="estado" required>
                    <option value="">Seleccione</option>
                    <option value="EN_ESPERA">EN ESPERA</option>
                    <option value="YA_ATENDIDO">YA ATENDIDO</option>
                </select>
            </div>
                        <div class="form-group">
                            <label for="fecha">Seleccione una fecha:</label>
                            <input type="date" name="fecha" id="fecha" required>
                        </div>

            <div class="form-buttons">
                <button type="submit" class="btn">Buscar</button>
                 <a href="index.jsp" class="btn-volver">Volver</a>
            </div>
        </form>

        <%
            List<Turno> lista = (List<Turno>) request.getAttribute("listaTurnosEstado");
            if (lista != null && !lista.isEmpty()) {
        %>
        <h2 class="small-font">Resultados</h2>
        <table class="tabla-personas">
            <thead>
                <tr>
                    <th>Identificador</th>
                    <th>Fecha</th>
                    <th>Descripción</th>
                    <th>Estado</th>
                    <th>Usuario</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Turno t : lista) {
                %>
                <tr>
                    <td><%= t.getIdentificador() %></td>
                    <td><%= t.getFecha().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) %></td>
                    <td><%= t.getDescripcion() %></td>
                    <td><%= t.getEstado() %></td>
                    <td><%= t.getUsuario() != null ? t.getUsuario().getNombre() : "Sin usuario" %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <%
            } else if (request.getParameter("estado") != null) {
        %>
            <p>No se encontraron turnos con el estado seleccionado.</p>
        <%
            }
        %>
    </main>

</body>
</html>
