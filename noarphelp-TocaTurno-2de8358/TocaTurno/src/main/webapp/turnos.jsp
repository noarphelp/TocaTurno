<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/header.jsp" %>

<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <h2 class="mb-0">
                    <i class="fas fa-plus-circle me-2"></i>
                    Crear Nuevo Turno
                </h2>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/turno" method="post">
                    <div class="form-group mb-3">
                        <label for="fecha" class="form-label">Fecha y Hora:</label>
                        <input type="datetime-local" class="form-control" id="fecha" name="fecha" required>
                    </div>

                    <div class="form-group mb-3">
                        <label for="descripcion" class="form-label">Descripción del Trámite:</label>
                        <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required></textarea>
                    </div>

                    <div class="form-group mb-3">
                        <label for="estado" class="form-label">Estado:</label>
                        <select class="form-select" id="estado" name="estado" required>
                            <option value="EN_ESPERA">En Espera</option>
                            <option value="YA_ATENDIDO">Ya Atendido</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label for="usuarioId" class="form-label">Usuario:</label>
                        <select class="form-select" id="usuarioId" name="usuarioId" required>
                            <c:forEach items="${listaUsuarios}" var="usuario">
                                <option value="${usuario.id}">${usuario.nombre} ${usuario.apellido}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save me-2"></i>
                            Crear Turno
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS y Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
