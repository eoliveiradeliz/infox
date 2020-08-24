/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*;

/**
 *
 * @author Dell
 */
public class ModuloConexao {

    // método que cria a conexão com o banco de dados
    public static Connection conector() {
        java.sql.Connection conexao = null;
        // linha abaixo chama driver de conexão
        String driver = "com.mysql.jdbc.Driver";
        //armazenando informações do banco de dados
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String senha = "262511";
        // estabelecer conexao com o banco de dados
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, senha);
            System.out.println("SUCESSO NA CONEXÃO ");
            return conexao;
        } catch (Exception e) {
            // fornece uma explicação sobre o erro de conexão
            //System.out.println(e);
            System.out.println("ALGO ACONTECEU DE ERRADO");
            
            return null;
            
        }
    }
}
