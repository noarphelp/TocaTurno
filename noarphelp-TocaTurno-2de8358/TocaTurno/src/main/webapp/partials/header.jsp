<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TocaTurno - Sistema de Gestión de Turnos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css">
</head>
<body>
    <div class="container">
        <h1>TocaTurno</h1>
        <div class="menu">
            <a href="${pageContext.request.contextPath}/turno">Nuevo Turno</a>
            <a href="${pageContext.request.contextPath}/listTurno">Listar Turnos</a>
            <a href="${pageContext.request.contextPath}/turnoFecha">Buscar por Fecha</a>
            <a href="${pageContext.request.contextPath}/turnoEstado">Buscar por Estado</a>
            <a href="${pageContext.request.contextPath}/usuarios">Nuevo Usuario</a>
            <a href="${pageContext.request.contextPath}/listUsuarios">Listar Usuarios</a>
        </div>
    </div>
</body>
</html>
