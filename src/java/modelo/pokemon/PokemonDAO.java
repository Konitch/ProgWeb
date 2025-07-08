package modelo.pokemon;

import static config.Config.JDBC_DRIVER;
import static config.Config.JDBC_SENHA;
import static config.Config.JDBC_URL;
import static config.Config.JDBC_USUARIO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import modelo.tipo.Tipo;
import modelo.tipo.TipoDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe que implementa o padrão DAO para a entidade produto
 */
public class PokemonDAO {

    /**
     * Método para listar um produto existente
     *
     * @param id
     * @return
     */
    public Pokemon listar(int id) {
        Pokemon pokemon = null;
        TipoDAO tipoDAO = new TipoDAO();
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT id, nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, foto FROM pokemon WHERE id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                pokemon = new Pokemon();
                pokemon.setId(rs.getInt("id"));
                pokemon.setNome(rs.getString("nome"));
                pokemon.setPreco(rs.getDouble("preco"));
                Tipo tipo = tipoDAO.listar(rs.getInt("id"));
                pokemon.setTipo_1(tipo);
                tipo = tipoDAO.listar(rs.getInt("id"));
                pokemon.setTipo_2(tipo);
                pokemon.setAvaliacao(rs.getDouble("avaliacao"));
                pokemon.setDescricao(rs.getString("descricao"));
                pokemon.setAltura(rs.getDouble("altura"));
                pokemon.setPeso(rs.getDouble("peso"));
                pokemon.setGenero_m(rs.getBoolean("genero_m"));
                pokemon.setGenero_f(rs.getBoolean("genero_f"));
                pokemon.setQuantidade(rs.getInt("quantidade"));
                pokemon.setFoto(rs.getString("foto"));
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return pokemon;
    }

    /**
     * Método para listar todos os produtos existentes
     *
     * @return
     */
    public List<Pokemon> listar() {
        List<Pokemon> pokemons = new ArrayList<>();
        TipoDAO tipoDAO = new TipoDAO();
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery("SELECT id, nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, foto FROM pokemon");
            while (rs.next()) {
                Pokemon pokemon = new Pokemon();
                pokemon.setId(rs.getInt("id"));
                pokemon.setNome(rs.getString("nome"));
                pokemon.setPreco(rs.getDouble("preco"));
                Tipo tipo = tipoDAO.listar(rs.getInt("id"));
                pokemon.setTipo_1(tipo);
                tipo = tipoDAO.listar(rs.getInt("id"));
                pokemon.setTipo_2(tipo);
                pokemon.setAvaliacao(rs.getDouble("avaliacao"));
                pokemon.setDescricao(rs.getString("descricao"));
                pokemon.setAltura(rs.getDouble("altura"));
                pokemon.setPeso(rs.getDouble("peso"));
                pokemon.setGenero_m(rs.getBoolean("genero_m"));
                pokemon.setGenero_f(rs.getBoolean("genero_f"));
                pokemon.setQuantidade(rs.getInt("quantidade"));
                pokemon.setFoto(rs.getString("foto"));
                pokemons.add(pokemon);
            }
            rs.close();
            s.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return pokemons;
    }
    
    /**
     * Método para listar todos os produtos em estoque
     *
     * @return
     */
    public List<Pokemon> listarEmEstoque() {
        List<Pokemon> pokemons = new ArrayList<>();
        TipoDAO tipoDAO = new TipoDAO();
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery("SELECT id, nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, foto FROM pokemon WHERE quantidade > 0");
            while (rs.next()) {
                Pokemon pokemon = new Pokemon();
                pokemon.setId(rs.getInt("id"));
                pokemon.setNome(rs.getString("nome"));
                pokemon.setPreco(rs.getDouble("preco"));
                pokemon.setTipo_1(tipoDAO.listar(rs.getInt("tipo_1")));
                pokemon.setTipo_2(tipoDAO.listar(rs.getInt("tipo_2")));
                pokemon.setAvaliacao(rs.getDouble("avaliacao"));
                pokemon.setDescricao(rs.getString("descricao"));
                pokemon.setAltura(rs.getDouble("altura"));
                pokemon.setPeso(rs.getDouble("peso"));
                pokemon.setGenero_m(rs.getBoolean("genero_m"));
                pokemon.setGenero_f(rs.getBoolean("genero_f"));
                pokemon.setQuantidade(rs.getInt("quantidade"));
                pokemon.setFoto(rs.getString("foto"));
                pokemons.add(pokemon);
            }
            rs.close();
            s.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return pokemons;
    }

    /**
     * Método para listar todos os produtos existentes pela descrição
     *
     * @param nome
     * @return
     */
    public List<Pokemon> listar(String nome) {
        if (nome == null || nome.trim().length() == 0) {
            nome = "%";
        } else {
            nome = "%" + nome + "%";
        }
        List<Pokemon> pokemons = new ArrayList<>();
        TipoDAO tipoDAO = new TipoDAO();
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("SELECT id, nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, foto FROM pokemon WHERE UPPER(nome) LIKE UPPER(?)");
            ps.setString(1, nome);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Pokemon pokemon = new Pokemon();
                pokemon.setId(rs.getInt("id"));
                pokemon.setNome(rs.getString("nome"));
                pokemon.setPreco(rs.getDouble("preco"));
                pokemon.setTipo_1(tipoDAO.listar(rs.getInt("tipo_1")));
                pokemon.setTipo_2(tipoDAO.listar(rs.getInt("tipo_2")));
                pokemon.setAvaliacao(rs.getDouble("avaliacao"));
                pokemon.setDescricao(rs.getString("descricao"));
                pokemon.setAltura(rs.getDouble("altura"));
                pokemon.setPeso(rs.getDouble("peso"));
                pokemon.setGenero_m(rs.getBoolean("genero_m"));
                pokemon.setGenero_f(rs.getBoolean("genero_f"));
                pokemon.setQuantidade(rs.getInt("quantidade"));
                pokemon.setFoto(rs.getString("foto"));
                pokemons.add(pokemon);
            }
            rs.close();
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return pokemons;
    }

    /**
     * Método para inserir um novo produto
     *
     * @param nome
     * @param preco
     * @param tipo_1
     * @param tipo_2
     * @param avaliacao
     * @param descricao
     * @param altura
     * @param peso
     * @param genero_m
     * @param genero_f
     * @param foto
     * @param quantidade
     * @return
     */
    public boolean inserir(String nome, double preco, int tipo_1, int tipo_2, Double avaliacao, String descricao, Double altura, Double peso, Boolean genero_m, Boolean genero_f, int quantidade, String foto) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("INSERT INTO pokemon (nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, foto) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, nome);
            ps.setDouble(2, preco);
            ps.setInt(3, tipo_1);
            ps.setInt(4, tipo_2);
            ps.setDouble(5, avaliacao);
            ps.setString(6, descricao);
            ps.setDouble(7, altura);
            ps.setDouble(8, peso);
            ps.setBoolean(9, genero_m);
            ps.setBoolean(10, genero_f);
            ps.setInt(11, quantidade);
            if (foto == null || foto.trim().length() == 0) {
                ps.setNull(12, Types.VARCHAR);
            } else {
                ps.setString(12, foto);
            }
            sucesso = (ps.executeUpdate() == 1);
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return sucesso;
    }

    /**
     * Método para atualizar um produto existente
     *
     * @param nome
     * @param preco
     * @param tipo_1
     * @param tipo_2
     * @param avaliacao
     * @param descricao
     * @param altura
     * @param peso
     * @param genero_m
     * @param genero_f
     * @param foto
     * @param quantidade
     * @param id
     * @return
     */
    public boolean atualizar(String nome, double preco, int tipo_1, int tipo_2, Double avaliacao, String descricao, Double altura, Double peso, Boolean genero_m, Boolean genero_f, int quantidade, String foto, int id) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("UPDATE pokemon SET nome = ?, preco = ?, tipo_1 = ?, tipo_2 = ?, avaliacao = ?, descricao = ?, altura = ?, peso = ?, genero_m = ?, genero_f = ?, quantidade = ?, foto = ? WHERE id = ?");
            ps.setString(1, nome);
            ps.setDouble(2, preco);
            ps.setInt(3, tipo_1);
            ps.setInt(4, tipo_2);
            ps.setDouble(5, avaliacao);
            ps.setString(6, descricao);
            ps.setDouble(7, altura);
            ps.setDouble(8, peso);
            ps.setBoolean(9, genero_m);
            ps.setBoolean(10, genero_f);
            ps.setInt(11, quantidade);
            if (foto == null || foto.trim().length() == 0) {
                ps.setNull(12, Types.VARCHAR);
            } else {
                ps.setString(12, foto);
            }
            ps.setInt(13, id);
            sucesso = (ps.executeUpdate() == 1);
            ps.close();
            c.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return sucesso;
    }

    /**
     * Método para remover um produto existente
     *
     * @param id
     * @return
     */
    public boolean remover(int id) {
        boolean sucesso = false;
        try {
            Class.forName(JDBC_DRIVER);
            Connection c = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement ps = c.prepareStatement("DELETE FROM pokemon WHERE id = ?");
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
