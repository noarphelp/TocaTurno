package servlets;

import controllers.TurnoController;
import entities.Turno;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/listTurno")
public class ListTurnoServlet extends HttpServlet {

    TurnoController turnoController = new TurnoController();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //AQUI LISTAMOS LA LISTA ENTERA DE TURNOS,CREAMOS UNA ARRAY VACIO SI NO HAY TURNOS EN BD.
        List<Turno> lista = turnoController.findAll();
        if (lista == null) {
            lista = new ArrayList<>();
        }

        req.setAttribute("listadoTurnos", lista);

        req.getRequestDispatcher("listTurnos.jsp").forward(req, resp);
    }

}
