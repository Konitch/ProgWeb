package controle.cliente;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.cliente.ClienteDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para remover um usuário existente
 */
public class RemoverClienteServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        int id = Integer.parseInt(request.getParameter("id"));
        // processamento
        ClienteDAO clienteDAO = new ClienteDAO();
        boolean sucesso = clienteDAO.remover(id);
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Cliente removido com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível remover o cliente");
        }
        RequestDispatcher rd = request.getRequestDispatcher("Logout");
        rd.forward(request, response);
    }

}
