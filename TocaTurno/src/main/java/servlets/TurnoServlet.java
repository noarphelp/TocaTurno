package servlets;

import controllers.UsuarioController;
import entities.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/turno")
public class TurnoServlet extends HttpServlet {

    UsuarioController usuarioController = new UsuarioController();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //ESTE METODO NOS TRAE LA LISTA DE USUARIOS PARA PODER ESCOGER UNO Y ASIGNÁRSELO A UN TURNO

//        List<Usuario> lista = usuarioController.findAll();  todo<-- falta implementar metodo por fatine de findall
//        if (lista == null) {
//            lista = new ArrayList<>();
//        }
//
//        req.setAttribute("listaUsuarios" , lista);
//
//        req.getRequestDispatcher("turnos.jsp").forward(req ,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
