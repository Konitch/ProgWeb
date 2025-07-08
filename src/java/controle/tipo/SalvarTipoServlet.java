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
 * Classe de controle para inserir uma nova categoria ou atualizar uma categoria
 * existente
 */
public class SalvarTipoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        int id = -1;
        if (request.getParameter("id") != null && request.getParameter("id").trim().length() != 0) {
            id = Integer.parseInt(request.getParameter("id"));
        }
        String nome = request.getParameter("nome");
        // processamento
        TipoDAO tipoDAO = new TipoDAO();
        boolean sucesso = false;
        if (id == -1) {
            sucesso = tipoDAO.inserir(nome);
        } else {
            sucesso = tipoDAO.atualizar(nome, id);
        }
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Tipo de pokémon salvo com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível salvar o tipo de pokémon");
        }
        RequestDispatcher rd = request.getRequestDispatcher("ListarCategorias?descricao=");
        rd.forward(request, response);
    }
}
