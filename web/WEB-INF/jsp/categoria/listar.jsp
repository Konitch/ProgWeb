<%-- 
    Document   : listar
    Created on : 12 de jun. de 2025, 18:40:13
    Author     : dougl
--%>

<%@page import="modelo.tipo.Tipo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../cabecalho.jsp" %>
<h3>Cadastro de Categorias</h3>
<form action="<%= request.getContextPath()%>/ListarCategorias" method="post">
    <div class="mb-3">
        <label for="formControlDescricao" class="form-label">Descrição</label>
        <input type="text" name="descricao" class="form-control" id="formControlDescricao" placeholder="Descrição">
    </div>
    <input class="btn btn-primary" type="submit" value="Procurar" />
    <a role="button" class="btn btn-primary" href="<%= request.getContextPath()%>/FormCategoria">Inserir</a>
</form>
<%
    List<Tipo> tipos = (List<Tipo>) request.getAttribute("tipos");
    if (tipos != null && !tipos.isEmpty()) {
%>
<table class="table table-primary table-striped table-hover">
    <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Descrição</th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>
        <%
            for (Tipo c : tipos) {
        %>
        <tr>
            <td class="align-middle"><%= c.getId()%></td>
            <td class="align-middle"><%= c.getNome()%></td>
            <td class="text-end">
                <a role="button" class="btn btn-primary" href="<%= request.getContextPath()%>/FormCategoria?id=<%= c.getId()%>">Atualizar</a>
                <a role="button" class="btn btn-primary" href="<%= request.getContextPath()%>/RemoverCategoria?id=<%= c.getId()%>">Remover</a>
            </td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
<%
    }
%>
<%@include file="../rodape.jsp" %>
