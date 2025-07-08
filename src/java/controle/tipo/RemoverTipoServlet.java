package controle.tipo;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.tipo.TipoDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para remover uma categoria existente
 */
public class RemoverTipoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        int id = Integer.parseInt(request.getParameter("id"));
        // processamento
        TipoDAO tipoDAO = new TipoDAO();
        boolean sucesso = tipoDAO.remover(id);
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Tipo de pokémon removido com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível remover o tipo de pokémon");
        }
        RequestDispatcher rd = request.getRequestDispatcher("ListarCategorias");
        rd.forward(request, response);
    }

}
