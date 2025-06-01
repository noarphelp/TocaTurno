package servlets;

import controllers.TurnoController;
import entities.Estado;
import entities.Turno;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/turnoEstado")
public class TurnoEstadoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        TurnoController turnoController = new TurnoController();

        //AQUI COGEMOS EL PARAMETRO ESTADO Y DEVOLVEMOS LA LISTA DE TURNOS ECONTRADOS POR ESTADO
        String estadoParam = req.getParameter("estado");
        List<Turno> lista = new ArrayList<>();

        if (estadoParam != null && !estadoParam.isEmpty()) {
            try {
                Estado estado = Estado.valueOf(estadoParam);
                lista = turnoController.findEstado(estado);
            } catch (IllegalArgumentException e) {

            }
        }

        req.setAttribute("listaTurnosEstado", lista);
        req.getRequestDispatcher("turnoEstado.jsp").forward(req, resp);

    }

}
