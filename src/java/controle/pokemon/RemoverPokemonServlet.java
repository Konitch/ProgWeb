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
 * Classe de controle para remover um produto existente
 */
public class RemoverPokemonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        int id = Integer.parseInt(request.getParameter("id"));
        // processamento
        PokemonDAO pokemonDAO = new PokemonDAO();
        boolean sucesso = pokemonDAO.remover(id);
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Pokémon removido com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível remover o pokémon");
        }
        RequestDispatcher rd = request.getRequestDispatcher("ListarPokemons");
        rd.forward(request, response);
    }
    
}
