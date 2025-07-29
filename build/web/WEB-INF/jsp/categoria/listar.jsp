<%-- 
    Document   : listar
    Created on : 12 de jun. de 2025, 18:40:13
    Author     : dougl
--%>

<%@page import="modelo.tipo.Tipo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../cabecalho.jsp" %>
<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: transparent;">
<h3>Cadastro de Categorias</h3>
<form action="<%= request.getContextPath()%>/ListarCategorias" method="post">
    <div class="mb-3">
        <input type="text" name="descricao" class="form-control" id="formControlDescricao" placeholder="Descrição">
    </div>
    <input class="btn btn-primary" type="submit" style="margin: 1rem 0rem; padding: 0.5rem 1rem;" value="Procurar" />
    <a role="button" class="btn btn-primary" style="margin: 1rem 0rem; padding: 0.4rem 1rem;" href="<%= request.getContextPath()%>/FormCategoria">Inserir</a>
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
            <td class="align-middle" style="padding: 0.75rem 2rem;" ><%= c.getId()%></td>
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
</nav>
<%@include file="../rodape.jsp" %>
