package servlets;

import controllers.UsuarioController;
import entities.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/usuarios")
public class ListUsuarioServlet extends HttpServlet {
    private final UsuarioController usuarioController = new UsuarioController();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> listado = usuarioController.findAll();

        // Enviar lista de usuarios a la vista JSP
        request.setAttribute("listado", listado);
        request.getRequestDispatcher("usuarios.jsp").forward(request, response);
    }
}