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

@WebServlet("/usuarios")
public class UsuarioServlet extends HttpServlet {
    private final UsuarioController usuarioController = new UsuarioController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //es un met*odo que recibe una solicitud POST para registrar un nuevo usuario en la base de datos.
        try {
            String nombre = req.getParameter("nombre");
            String apellido = req.getParameter("apellido");
            Integer edad = Integer.valueOf(req.getParameter("edad"));
            String email = req.getParameter("email");
            Usuario usuario = new Usuario(nombre ,apellido ,email,edad );
            usuarioController.crearUsuario(usuario);

            // redireccionar a la página de usuarios
            req.getRequestDispatcher("usuarios.jsp").forward(req,resp);

           //excepciones para que si el usuario introduzca datos diferentes a la hora de registrarse,y otros excepciones si hay problema interno en el servlet,
        } catch (NumberFormatException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}

