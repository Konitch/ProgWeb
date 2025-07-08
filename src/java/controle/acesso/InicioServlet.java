package controle.acesso;

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
 * Classe de controle para realizar o carregamento da página inicial
 */
public class InicioServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PokemonDAO pokemonDAO = new PokemonDAO();
        List<Pokemon> pokemon = pokemonDAO.listarEmEstoque();
        request.setAttribute("pokemons", pokemon);
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }

}
