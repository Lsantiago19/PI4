/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAOs.ProdutoDAO;
import Entidades.Produto;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class GetProduto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        Produto p = ProdutoDAO.getProduto(id);
        request.setAttribute("produto", p);

        if (p.isStatus()) {
            request.setAttribute("status", "Ativo");
        } else {
            request.setAttribute("status", "Inativo");
        }

        boolean ver = Boolean.valueOf(request.getParameter("ver"));

        if (!ver) {
            RequestDispatcher rd = getServletContext()
                    .getRequestDispatcher("/AlterarProduto.jsp");
            rd.forward(request, response);
        } else{
            RequestDispatcher rd = getServletContext()
                    .getRequestDispatcher("/VerProduto.jsp");
            rd.forward(request, response);
        }
    }
}
