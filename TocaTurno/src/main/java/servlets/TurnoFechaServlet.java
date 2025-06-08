package servlets;

import controllers.TurnoController;
import entities.Turno;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(urlPatterns = "/turnoFecha")
public class TurnoFechaServlet extends HttpServlet {

    TurnoController turnoController = new TurnoController();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //AQUI TRAEMOS DEL FRONT LA FECHA INTRODUCIDA POR EL USUARIO Y LE DEVOLVEMOS UNA LISTA DE TURNOS EN DICHA FECHA

        try {

            String fechaParam = req.getParameter("fecha");
            LocalDate fecha = LocalDate.parse(fechaParam);

            List<Turno> turnos = turnoController.findFecha(fecha);


            req.setAttribute("turnosPorFecha", turnos);
            req.getRequestDispatcher("turnoFecha.jsp").forward(req, resp);

        } catch (Exception e) {

            req.setAttribute("error", "Error al obtener turnos por fecha: " + e.getMessage());
            req.getRequestDispatcher("turnoFecha.jsp").forward(req, resp);
        }


    }


}
