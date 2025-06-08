<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/header.jsp" %>

<h1>Crear Nuevo Usuario</h1>

<form action="${pageContext.request.contextPath}/usuarios" method="post">
    <div class="form-group">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
    </div>

    <div class="form-group">
        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required>
    </div>

    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
    </div>

    <div class="form-group">
        <label for="edad">Edad:</label>
        <input type="number" id="edad" name="edad" min="0" max="120" required>
    </div>

    <button type="submit" class="btn btn-primary">Crear Usuario</button>
</form>

</div>
</body>
</html>
