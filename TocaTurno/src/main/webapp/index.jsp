<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>TocaTurno</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body class="large-font">
   <%@ include file="partials/header.jsp" %>

    <main>
        <h1 class="max-font">TocaTurno</h1>
        <div class="button-group">
            <a href="usuarios.jsp" class="btn">Nuevo usuario</a>
            <a href="/TocaTurno/listUsuarios" class="btn">Lista de usuarios</a>
            <a href="/TocaTurno/turno" class="btn">Nuevo Turno</a>
            <a href="/TocaTurno/listTurno" class="btn">Lista de turnos</a>
            <a href="/TocaTurno/turnoFecha" class="btn">Buscar turnos por fecha</a>
            <a href="/TocaTurno/turnoEstado" class="btn">Buscar turnos por estado</a>
        </div>
    </main>
</body>
</html>
