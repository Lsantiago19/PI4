/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAOs.ImagemDAO;
import DAOs.ProdutoDAO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Gabriel
 */
public class PostProdutos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idprod = 0;
        int idimg = 0;
        try {
            idprod = ProdutoDAO.nextId();
            idimg = ImagemDAO.nextId();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PostProdutos.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("idprod", idprod);
        request.setAttribute("idimagem", idimg);

        RequestDispatcher rd = getServletContext()
                .getRequestDispatcher("/CadastrarProdutos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idprod = Integer.parseInt(request.getParameter("idprod"));
        int idimg = Integer.parseInt(request.getParameter("idimagem"));
        boolean addImg = false;
        String path = "";
        String filepath = request.getParameter("filename"); // puxa o diretorio do arquivo do user
        System.out.println("TESTE " + filepath);

        if (filepath != null) { // Caso o usuario adicione uma imagem, 
            try {
                try(PrintWriter out = response.getWriter()){
                    Part part = request.getPart("filename");
                    String filename = part.getSubmittedFileName();
                    System.out.println("TESTE293840 " + filename);
                }
                
                System.out.println(filepath + " aaaa " + "meudeus" + " AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");

                String arquivo = idprod + "_" + idimg; // cria nome pro arquivo do sistema
                path = "D:\\Downloads\\PI4\\src\\main\\java\\Imagens\\" + arquivo + ".jpg"; // pasta escolhida pras imagens
                int wid = 1440;
                int hei = 1080;
                File f = new File(path);
                File oldfile = new File(filepath);
                BufferedImage image = null;
                image = new BufferedImage(wid, hei, BufferedImage.TYPE_INT_ARGB);
                image = ImageIO.read(oldfile); // le a imagem escolhida pelo user
                ImageIO.write(image, "jpg", f); // salva a imagem na pasta escolhida
                addImg = true;

            } catch (IOException e) {
                Logger.getLogger(PostProdutos.class.getName()).log(Level.SEVERE, null, e);
                return;
            }
        }

        String nomeprod = request.getParameter("nomeproduto");
        String nomeext = request.getParameter("nomeextenso");
        int estrelas = Integer.parseInt(request.getParameter("estrelas"));
        String status = request.getParameter("status");
        boolean stat = true;
        if (status == null) {
            stat = false;
        }
        int quantidade = Integer.parseInt(request.getParameter("qtd"));
        double preco = Double.parseDouble(request.getParameter("preco"));

        try {
//            ProdutoDAO.cadProduto(new Produto(id, nomeprod, nomeext, estrelas, stat, quantidade, preco));
            ProdutoDAO.cadProduto(nomeprod, nomeext, estrelas, stat, quantidade, preco);
            if (addImg) {
                ImagemDAO.cadImagem(path, idprod);
            }

            //Utils.Sucesso(response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(PostProdutos.class.getName()).log(Level.SEVERE, null, ex);
            //Utils.Erro(ex, request, response);
        }
    }

    protected void SAVEIMAGE(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
