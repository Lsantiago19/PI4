/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAOs.ProdutoDAO;
import Entidades.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class ToggleProduto extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));

        Produto p = ProdutoDAO.getProduto(id);
        request.setAttribute("produto", p);
        
        if(p.isStatus()){
            request.setAttribute("status", "Ativo");
        } else{
            request.setAttribute("status", "Inativo");
        }

        RequestDispatcher rd = getServletContext()
                .getRequestDispatcher("/TrocarDisponibilidade.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");
        boolean stat = true;
        if (status == null) {
            stat = false;
        }
        Produto p = new Produto();
        p.setId(id);
        p.setStatus(stat);
        try {
            ProdutoDAO.toggleProduto(p);

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PostProdutos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
