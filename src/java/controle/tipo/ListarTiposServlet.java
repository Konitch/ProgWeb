package controle.tipo;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.tipo.Tipo;
import modelo.tipo.TipoDAO;

/**
 *
 * @author Leonardo Oliveira Moreira
 *
 * Classe de controle para listar as categorias existentes
 */
public class ListarTiposServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        TipoDAO tipoDAO = new TipoDAO();
        List<Tipo> tipos = tipoDAO.listar(nome);
        request.setAttribute("tipos", tipos);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/categoria/listar.jsp");
        rd.forward(request, response);
    }

}
