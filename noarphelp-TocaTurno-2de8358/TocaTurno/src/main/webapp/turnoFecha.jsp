<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/header.jsp" %>

<h1>Buscar Turnos por Fecha</h1>

<div class="filter-section">
    <form action="${pageContext.request.contextPath}/turnoFecha" method="get">
        <div class="form-group">
            <label for="fecha">Seleccione la fecha:</label>
            <input type="date" id="fecha" name="fecha" required>
        </div>
        <button type="submit" class="btn btn-primary">Buscar</button>
    </form>
</div>

<c:if test="${not empty turnosPorFecha}">
    <h2>Turnos encontrados</h2>
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
            <c:forEach items="${turnosPorFecha}" var="turno">
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
</c:if>

</div>
</body>
</html>
