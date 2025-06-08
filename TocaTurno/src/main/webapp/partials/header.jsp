 <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <header>
        <a href="index.jsp" class="logo">
            <!--  Logo  -->
            <svg width="32" height="32" viewBox="0 0 24 24" fill="#ffffff" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 2L15 8H9L12 2ZM12 22L9 16H15L12 22ZM2 12L8 15V9L2 12ZM22 12L16 9V15L22 12Z" />
            </svg>
            TocaTurno
        </a>

        <nav class="nav-menu">
            <input type="checkbox" id="menu-toggle">
            <label for="menu-toggle" class="menu-icon">&#9776;</label>
            <ul class="menu">
                <li><a href="usuarios.jsp">Nuevo usuario</a></li>
                <li><a href="/TocaTurno/listUsuarios">Lista de usuarios</a></li>
                <li><a href="/TocaTurno/turno">Nuevo turno</a></li>
                <li><a href="/TocaTurno/listTurno">Lista de turnos</a></li>
                <li><a href="/TocaTurno/turnoFecha">Buscar turnos por fecha</a></li>
                <li><a href="/TocaTurno/turnoEstado">Buscar turnos por estado</a></li>
            </ul>
        </nav>
    </header>