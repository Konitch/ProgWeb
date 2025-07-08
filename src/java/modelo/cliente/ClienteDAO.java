package modelo.cliente;

import static config.Config.JDBC_DRIVER;
import static config.Config.JDBC_SENHA;
import static config.Config.JDBC_URL;
import static config.Config.JDBC_USUARIO;
import java.sql.*;


/**
 *
 * @author Leonardo Oliveira Moreira
 * 
 * Classe que implementa o padrão DAO para a entidade usuário
 */
public class ClienteDAO {

    /**
     * Método para inserir um novo cliente
     * 
     * @param nome
     * @param endereco
     * @param cpf
     * @param admin
     * @param email
     * @param login
     * @param senha
     * @return 
     */
    public boolean inserirCliente(String nome, String endereco, String cpf, Boolean admin, String email, String login, String senha) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement s = c.prepareStatement(
                "INSERT INTO cliente (nome, endereco, cpf, admin, email, login, senha) VALUES (?, ?, ?, ?, ?, ?, ?)"
            );
            s.setString(1, nome);
            s.setString(2, endereco);
            s.setString(3, cpf);
            s.setBoolean(4, admin);
            s.setString(5, email);
            s.setString(6, login);
            s.setString(7, senha);
            sucesso = (s.executeUpdate() == 1);
            s.close();
            c.close();
        } catch (Exception ex) {
            sucesso = false;
        }
        return sucesso;
    }

    /**
     * Método para inserir um novo administrador
     * 
     * @param nome
     * @param endereco
     * @param cpf
     * @param admin
     * @param email
     * @param login
     * @param senha
     * @return 
     */
    public boolean inserirAdministrador(String nome, String endereco, String cpf, Boolean admin, String email, String login, String senha) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement s = c.prepareStatement("INSERT INTO cliente (nome, endereco, cpf, admin, email, login, senha) VALUES (?, ?, ?, TRUE, ?, ?, ?)");
            s.setString(1, nome);
            s.setString(2, endereco);
            s.setString(3, cpf);
            s.setBoolean(4, admin);
            s.setString(5, email);
            s.setString(6, login);
            s.setString(7, senha);
            sucesso = (s.executeUpdate() == 1);
            s.close();
            c.close();
        } catch (Exception ex) {
            sucesso = false;
        }
        return sucesso;
    }

    /**
     * Método para um usuário pelo login e senha
     * 
     * @param login
     * @param senha
     * @return 
     */
    public Cliente obter(String login, String senha) {
        Cliente cliente = null;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement s = c.prepareStatement("SELECT id, nome, endereco, cpf, admin, email, login, senha FROM cliente WHERE login = ? AND senha = ?");
            s.setString(1, login);
            s.setString(2, senha);
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setCPF(rs.getString("cpf"));
                cliente.setAdmin(rs.getBoolean("admin"));
                cliente.setEndereco(rs.getString("endereco"));
                cliente.setEmail(rs.getString("email"));
                cliente.setLogin(rs.getString("login"));
                cliente.setSenha(rs.getString("senha"));
            }
            rs.close();
            s.close();
            c.close();
        } catch (Exception ex) {
            cliente = null;
        }
        return cliente;
    }
    
    /**
     * Método para atualizar um usuário existente
     * 
     * @param nome
     * @param endereco
     * @param email
     * @param login
     * @param senha
     * @param id
     * @return 
     */
    public boolean atualizar(String nome, String endereco, String cpf, String email, String login, String senha, Boolean admin, int id) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement s = c.prepareStatement("UPDATE cliente SET nome = ?, endereco = ?, cpf = ?, admin = ?, email = ?, login = ?, senha = ? WHERE id = ?");
            s.setString(1, nome);
            s.setString(2, endereco);
            s.setString(3, cpf);
            s.setBoolean(4, admin);
            s.setString(5, email);
            s.setString(6, login);
            s.setString(7, senha);
            s.setInt(8, id);
            sucesso = (s.executeUpdate() == 1);
            s.close();
            c.close();
        } catch (Exception ex) {
            sucesso = false;
        }
        return sucesso;
    }
    
    /**
     * Método para remover um usuário existente
     * 
     * @param id
     * @return 
     */
    public boolean remover(int id) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement s = c.prepareStatement("DELETE FROM cliente WHERE id = ?");
            s.setInt(1, id);
            sucesso = (s.executeUpdate() == 1);
            s.close();
            c.close();
        } catch (Exception ex) {
            sucesso = false;
        }
        return sucesso;
    }

}
