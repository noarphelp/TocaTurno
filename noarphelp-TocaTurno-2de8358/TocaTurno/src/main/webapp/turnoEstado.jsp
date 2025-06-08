<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/header.jsp" %>

<h1>Buscar Turnos por Estado y Fecha</h1>

<div class="filter-section">
    <form action="${pageContext.request.contextPath}/turnoEstado" method="get">
        <div class="form-group">
            <label for="estado">Estado:</label>
            <select id="estado" name="estado" required>
                <option value="EN_ESPERA">En Espera</option>
                <option value="YA_ATENDIDO">Ya Atendido</option>
            </select>
        </div>
        <div class="form-group">
            <label for="fecha">Fecha:</label>
            <input type="date" id="fecha" name="fecha" required>
        </div>
        <button type="submit" class="btn btn-primary">Buscar</button>
    </form>
</div>

<c:if test="${not empty listaTurnosEstado}">
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
            <c:forEach items="${listaTurnosEstado}" var="turno">
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