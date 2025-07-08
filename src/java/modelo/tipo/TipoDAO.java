package modelo.tipo;

import static config.Config.JDBC_DRIVER;
import static config.Config.JDBC_SENHA;
import static config.Config.JDBC_URL;
import static config.Config.JDBC_USUARIO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Leonardo Oliveira Moreira
 * 
 * Classe que implementa o padrão DAO para a entidade categoria
 */
public class TipoDAO {
    
    /**
     * Método para listar uma a categoria existente
     * @param id
     * @return 
     */
    public Tipo listar(int id) {
        Tipo categoria = null;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL,JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT id, nome FROM tipo WHERE id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                categoria = new Tipo();
                categoria.setId(rs.getInt("id"));
                categoria.setNome(rs.getString("nome"));
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return categoria;
    }
    
    /**
     * Método para listar todas as categorias existentes
     * @return 
     */
    public List<Tipo> listar() {
        List<Tipo> categorias = new ArrayList<>();
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL,JDBC_USUARIO, JDBC_SENHA);
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery("SELECT id, nome FROM tipo");
            while (rs.next()) {
                Tipo categoria = new Tipo();
                categoria.setId(rs.getInt("id"));
                categoria.setNome(rs.getString("nome"));
                categorias.add(categoria);
            }
            rs.close();
            s.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return categorias;
    }
    
    /**
     * Método para listar todas as categorias existentes pela descrição
     * @param nome
     * @return 
     */
    public List<Tipo> listar(String nome) {
        if (nome == null || nome.trim().length() == 0) {
            nome = "%";
        } else {
            nome = "%" + nome + "%";
        }
        List<Tipo> tipos = new ArrayList<>();
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL,JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT id, nome FROM tipo WHERE UPPER(nome) LIKE UPPER(?)");
            ps.setString(1, nome);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tipo categoria = new Tipo();
                categoria.setId(rs.getInt("id"));
                categoria.setNome(rs.getString("nome"));
                tipos.add(categoria);
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return tipos;
    }
    
    /**
     * Método para inserir uma nova categoria
     * 
     * @param nome
     * @return 
     */
    public boolean inserir(String nome) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL,JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("INSERT INTO tipo (nome) VALUES (?)");
            ps.setString(1, nome);
            sucesso = (ps.executeUpdate() == 1);
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return sucesso;
    }
    
    /**
     * Método para atualizar uma categoria existente
     * 
     * @param nome
     * @param id
     * @return 
     */
    public boolean atualizar(String nome, int id) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL,JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("UPDATE tipo SET nome = ? WHERE id = ?");
            ps.setString(1, nome);
            ps.setInt(2, id);
            sucesso = (ps.executeUpdate() == 1);
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return sucesso;
    }
    
    /**
     * Método para remover uma categoria existente
     * 
     * @param id
     * @return 
     */
    public boolean remover(int id) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL,JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("DELETE FROM tipo WHERE id = ?");
            ps.setInt(1, id);
            sucesso = (ps.executeUpdate() == 1);
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return sucesso;
    }
    
}
