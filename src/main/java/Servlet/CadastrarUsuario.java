/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAOs.ImagemDAO;
import DAOs.ProdutoDAO;
import DAOs.UsuarioDAO;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel
 */
public class CadastrarUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String status = request.getParameter("status");
        int tipocad = Integer.parseInt(request.getParameter("tipocad"));
        
        boolean stat = true;
        if (status == null) {
            stat = false;
        }

        Usuario u = new Usuario();
        u.setNome(nome);
        u.setSenha(senha);
        u.setStatus(stat);
        u.setTipoCadastro(tipocad);
        
        try {
            UsuarioDAO.cadUsuario(u);

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PostProdutos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
