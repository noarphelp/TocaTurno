<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/header.jsp" %>

<h1>Lista de Usuarios</h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
            <th>Edad</th>
            <th>Turnos</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listado}" var="usuario">
            <tr>
                <td>${usuario.id}</td>
                <td>${usuario.nombre}</td>
                <td>${usuario.apellido}</td>
                <td>${usuario.email}</td>
                <td>${usuario.edad}</td>
                <td>${usuario.turnos.size()}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</div>
</body>
</html>
