package controle.pokemon;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.tipo.Tipo;
import modelo.tipo.TipoDAO;
import modelo.pokemon.Pokemon;
import modelo.pokemon.PokemonDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para preparar o formulário para inserir um novo produto ou
 * atualizar um produto existente
 */
public class FormPokemonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TipoDAO tipoDAO = new TipoDAO();
        List<Tipo> tipos = tipoDAO.listar();
        request.setAttribute("tipos", tipos);

        if (request.getParameter("id") != null && request.getParameter("id").trim().length() != 0) {
            int id = Integer.parseInt(request.getParameter("id"));
            PokemonDAO pokemonDAO = new PokemonDAO();
            Pokemon pokemon = pokemonDAO.listar(id);
            if (pokemon != null) {
                request.setAttribute("pokemons", pokemon);
            }
        }
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/produto/form.jsp");
        rd.forward(request, response);
    }

}
