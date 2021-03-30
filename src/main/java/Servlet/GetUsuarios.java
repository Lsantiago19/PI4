package Servlet;

import DAOs.UsuarioDAO;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Bruno
 */
public class GetUsuarios extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Usuario> usuarios = UsuarioDAO.getUsuario();
        request.setAttribute("GetUsuarios", usuarios);

        RequestDispatcher rd = getServletContext()
                .getRequestDispatcher("/ListarUsuarios.jsp");
        rd.forward(request, response);
        
    }
}