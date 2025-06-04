package servlets;

import controllers.TurnoController;
import controllers.UsuarioController;
import entities.Estado;
import entities.Turno;
import entities.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/turno")
public class TurnoServlet extends HttpServlet {

    UsuarioController usuarioController = new UsuarioController();
    TurnoController turnoController = new TurnoController();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //ESTE METODO NOS TRAE LA LISTA DE USUARIOS PARA PODER ESCOGER UNO Y ASIGNÁRSELO A UN TURNO

        List<Usuario> lista = usuarioController.findAll();
        if (lista == null) {
            lista = new ArrayList<>();
        }

        req.setAttribute("listaUsuarios" , lista);

        req.getRequestDispatcher("turnos.jsp").forward(req ,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //AQUI TRAEMOS LOS DATOS INTRODUCIDOS EN EL FRONT PARA PODER CREAR EL TURNO NUEVO ASOCIADO A UN USUARIO

        LocalDateTime fecha = LocalDateTime.parse(req.getParameter("fecha"));
        String descripcion = req.getParameter("descripcion");
        Long id = Long.valueOf(req.getParameter("usuarioId"));
        Estado estado = Estado.valueOf(req.getParameter("estado"));


        Usuario usuarioId = usuarioController.findById(id);

        Turno turno = new Turno(fecha, descripcion, estado, usuarioId);

        turnoController.crete(turno);

        req.setAttribute("turnoCreado", turno);  // <---- esta linea es por si queremos mostrar el turno creado justo despues de ser creado en el mismo jsp

        req.getRequestDispatcher("turnos.jsp").forward(req, resp);

    }
}

