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
 * Classe de controle para atualizar um usuário existente
 */
public class AtualizarClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String cpf = request.getParameter("cpf");
        Boolean admin = Boolean.parseBoolean(request.getParameter("admin"));
        String email = request.getParameter("email");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        // processamento
        ClienteDAO clienteDAO = new ClienteDAO();
        boolean sucesso = clienteDAO.atualizar(nome, endereco, cpf, email, login, senha, admin, id);
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Cliente atualizado com sucesso. Sua sessão foi encerrada.");
        } else {
            request.setAttribute("mensagem", "Não foi possível atualizar o cliente. Sua sessão foi encerrada.");
        }
        RequestDispatcher rd = request.getRequestDispatcher("Logout");
        rd.forward(request, response);
    }

}
