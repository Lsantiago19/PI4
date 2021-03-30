/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs;

import BD.ConexaoBD;
import Entidades.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Gabriel
 */
public class ProdutoDAO {

    public static List<Produto> getClienteProdutos() {

        List<Produto> produtos = new ArrayList();
        int id = 0;
        String nomeproduto = "";
        String nomeextenso = "";
        int estrelas = 0;
        boolean status = false;
        int quantidade = 0;
        double preco = 0;
        try {
            String query = "select * from produto where status = true";
            Connection con = ConexaoBD.getConexao();

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("id");
                nomeproduto = rs.getString("nomeproduto");
                nomeextenso = rs.getString("nomeextenso");
                estrelas = rs.getInt("estrelas");
                status = rs.getBoolean("status");
                quantidade = rs.getInt("quantidade");
                preco = rs.getDouble("preco");
                produtos.add(new Produto(id, nomeproduto, nomeextenso, estrelas, status, quantidade, preco));
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }

    public static List<Produto> getProdutos() {

        List<Produto> produtos = new ArrayList();
        int id = 0;
        String nomeproduto = "";
        String nomeextenso = "";
        int estrelas = 0;
        boolean status = false;
        int quantidade = 0;
        double preco = 0;
        try {
            String query = "select * from produto";
            Connection con = ConexaoBD.getConexao();

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt("id");
                nomeproduto = rs.getString("nomeproduto");
                nomeextenso = rs.getString("nomeextenso");
                estrelas = rs.getInt("estrelas");
                status = rs.getBoolean("status");
                quantidade = rs.getInt("quantidade");
                preco = rs.getDouble("preco");
                produtos.add(new Produto(id, nomeproduto, nomeextenso, estrelas, status, quantidade, preco));
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }

    public static Produto getProduto(int id) {

        Produto p = new Produto();
        String nomeproduto = "";
        String nomeextenso = "";
        int estrelas = 0;
        boolean status = false;
        int quantidade = 0;
        double preco = 0;
        try {
            String query = "select * from produto where id = " + id;
            Connection con = ConexaoBD.getConexao();

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("id");
                nomeproduto = rs.getString("nomeproduto");
                nomeextenso = rs.getString("nomeextenso");
                estrelas = rs.getInt("estrelas");
                status = rs.getBoolean("status");
                quantidade = rs.getInt("quantidade");
                preco = rs.getDouble("preco");
                p = new Produto(id, nomeproduto, nomeextenso, estrelas, status, quantidade, preco);
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public static void cadProduto(String nomeP, String nomeE, int rate, boolean stat, int qtd, double preco) throws ClassNotFoundException, SQLException {

        Connection con = ConexaoBD.getConexao();
        String query = "insert into produto(nomeproduto, nomeextenso, estrelas, status, quantidade, preco) values (?,?,?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ps.setString(1, nomeP);
            ps.setString(2, nomeE);
            ps.setInt(3, rate);
            ps.setBoolean(4, stat);
            ps.setInt(5, qtd);
            ps.setDouble(6, preco);

            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void updateProduto(Produto p) throws ClassNotFoundException, SQLException {
        Connection con = ConexaoBD.getConexao();

        String query = "update produto set nomeproduto = ?, nomeextenso = ?, estrelas = ?, status = ?, quantidade = ?, preco = ? where id = ?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ps.setString(1, p.getNomeproduto());
            ps.setString(2, p.getNomeextenso());
            ps.setInt(3, p.getEstrelas());
            ps.setBoolean(4, p.isStatus());
            ps.setInt(5, p.getQuantidade());
            ps.setDouble(6, p.getPreco());
            ps.setInt(7, p.getId());

            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static int nextId() throws ClassNotFoundException, SQLException {
        Connection con = ConexaoBD.getConexao();
        String query = "select MAX(id) from produto";

        PreparedStatement ps;

        ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        int prox = 0;
        if (rs.next()) {
            prox = rs.getInt("1");
        }
        return prox;
    }

    public static void deleteProduto(int id) throws ClassNotFoundException, SQLException {
        Connection con = ConexaoBD.getConexao();
        String query = "";

        if (id > 0) {
            query = "delete from produto where id = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.execute();

        } else {
            query = "truncate table produto";
            PreparedStatement ps = con.prepareStatement(query);
            ps.execute();
        }
    }

    public static void toggleProduto(Produto p) throws ClassNotFoundException, SQLException {
        Connection con = ConexaoBD.getConexao();

        String query = "UPDATE produto set status = ? where id = ?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ps.setBoolean(1, p.isStatus());
            ps.setInt(2, p.getId());

            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
