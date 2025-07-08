package controle.cliente;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para chamar o formulário de alterar dados do usuário
 */
public class VerClienteServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/atualizarDados.jsp");
        rd.forward(request, response);
    }
}
