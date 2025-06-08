<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/header.jsp" %>

<h1>Lista de Turnos</h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Identificador</th>
            <th>Fecha</th>
            <th>Descripción</th>
            <th>Estado</th>
            <th>Usuario</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listadoTurnos}" var="turno">
            <tr>
                <td>${turno.id}</td>
                <td>${turno.identificador}</td>
                <td>${turno.fecha}</td>
                <td>${turno.descripcion}</td>
                <td>${turno.estado}</td>
                <td>${turno.usuario.nombre} ${turno.usuario.apellido}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</div>
</body>
</html>
