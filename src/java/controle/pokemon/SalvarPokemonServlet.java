package controle.pokemon;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.pokemon.PokemonDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para inserir um novo produto ou atualizar um produto
 * existente
 */
public class SalvarPokemonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        int id = -1;
        if (request.getParameter("id") != null && request.getParameter("id").trim().length() != 0) {
            id = Integer.parseInt(request.getParameter("id"));
        }
        String nome = request.getParameter("nome");
        double preco = Double.parseDouble(request.getParameter("preco"));
        int tipo_1 = Integer.parseInt(request.getParameter("tipo_1"));
        int tipo_2 = Integer.parseInt(request.getParameter("tipo_2"));
        Double avaliacao = Double.parseDouble(request.getParameter("avaliacao"));
        String descricao = request.getParameter("descricao");
        Double altura = Double.parseDouble(request.getParameter("altura"));
        Double peso = Double.parseDouble(request.getParameter("peso"));
        Boolean genero_m = Boolean.parseBoolean(request.getParameter("genero_m"));
        Boolean genero_f = Boolean.parseBoolean(request.getParameter("genero_f"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));

        // processamento
        PokemonDAO pokemonDAO = new PokemonDAO();
        boolean sucesso = false;
        if (id == -1) {
            sucesso = pokemonDAO.inserir(nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, null);
        } else {
            sucesso = pokemonDAO.atualizar(nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, null, id);
        }
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Produto salvo com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível salvar o produto");
        }
        RequestDispatcher rd = request.getRequestDispatcher("ListarPokemons?descricao=");
        rd.forward(request, response);
    }

}
