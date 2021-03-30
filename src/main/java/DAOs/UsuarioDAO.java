/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs;

import BD.ConexaoBD;
import Entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Gabriel
 */
public class UsuarioDAO {
    public static void cadUsuario(Usuario u) throws ClassNotFoundException, SQLException {

        Connection con = ConexaoBD.getConexao();
        String query = "insert into usuario(nome, senha, status, tipocadastro) values (?,?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ps.setString(1, u.getNome());
            ps.setString(2, u.getSenha());
            ps.setBoolean(3, u.isStatus());
            ps.setInt(4, u.getTipoCadastro());

            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
 public static List<Usuario> getUsuario() {

        List<Usuario> usuarios = new ArrayList();
        int id = 0;
        String nomeusuario = "";
        boolean status = false;
        int tipocadastro = 0;
        try {
            String query = "select * from usuario";
            Connection con = ConexaoBD.getConexao();

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId(id);
                u.setNome(rs.getString("nome"));
                u.setStatus(rs.getBoolean("status"));
                u.setTipoCadastro(rs.getInt("tipocadastro"));
               
                System.out.println(u.getNome());
                usuarios.add(u);
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usuarios;
    }
}