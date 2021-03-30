/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Gabriel
 */
@Getter
@Setter
public class Usuario {
    private int id;
    private String nome;
    private String senha;
    private boolean status;
    private int tipoCadastro;

    public Usuario() {
    }

    public Usuario(int id, String nome, String senha, boolean status, int tipoCadastro) {
        this.id = id;
        this.nome = nome;
        this.senha = senha;
        this.status = status;
        this.tipoCadastro = tipoCadastro;
    }
}
