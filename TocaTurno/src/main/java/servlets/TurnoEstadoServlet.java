package servlets;

import controllers.TurnoController;

import entities.Turno;
import enums.Estado;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/turnoEstado")
public class TurnoEstadoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        TurnoController turnoController = new TurnoController();

        //AQUI COGEMOS EL PARAMETRO ESTADO Y LA FECHA DESEADA POR EL USUARIO Y DEVOLVEMOS LA LISTA DE TURNOS ECONTRADOS.
        String estadoParam = req.getParameter("estado");
        String fechaParam = req.getParameter("fecha");

        List<Turno> lista = new ArrayList<>();

        if (estadoParam != null && !estadoParam.isEmpty()) {
            try {
                Estado estado = Estado.valueOf(estadoParam);
                LocalDate fecha = LocalDate.parse(fechaParam);

                List<Turno> turnos = turnoController.findEstado(estado);
                if (turnos != null) {
                    lista = turnos.stream()
                            .filter(e -> e.getFecha().toLocalDate().equals(fecha))
                            .collect(Collectors.toList());
                }
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        req.setAttribute("listaTurnosEstado", lista);
        req.getRequestDispatcher("turnoEstado.jsp").forward(req, resp);
    }

}
