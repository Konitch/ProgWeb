package controle.pokemon;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.pokemon.Pokemon;
import modelo.pokemon.PokemonDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para listar os produtos existentes
 */
public class ListarPokemonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        PokemonDAO pokemonDAO = new PokemonDAO();
        List<Pokemon> pokemons = pokemonDAO.listar(nome);
        request.setAttribute("pokemons", pokemons);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/produto/listar.jsp");
        rd.forward(request, response);
    }

}
