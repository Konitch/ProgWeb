<%-- 
    Document   : listar
    Created on : 12 de jun. de 2025, 18:40:13
    Author     : dougl
--%>

<%@page import="modelo.pokemon.Pokemon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../cabecalho.jsp" %>
<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: transparent;">
<h3>Cadastro de Produtos</h3>
<form action="<%= request.getContextPath()%>/ListarProdutos" method="post">
    <div class="mb-3">
        <label for="formControlDescricao" class="form-label">Nome</label>
        <input type="text" name="nome" class="form-control" id="formControlDescricao" placeholder="Nome">
    </div>
    <input class="btn btn-primary" type="submit" style="margin: 1rem 0rem; padding: 0.5rem 1rem;" value="Procurar" />
    <a role="button" class="btn btn-primary" style="margin: 1rem 0rem; padding: 0.4rem 1rem;" href="<%= request.getContextPath()%>/FormProduto">Inserir</a>
</form>
<%
    List<Pokemon> pokemons = (List<Pokemon>) request.getAttribute("pokemons");
    if (pokemons != null && !pokemons.isEmpty()) {
%>
<table class="table table-primary table-striped table-hover">
    <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Nome</th>
            <th scope="col">Descrição</th>
            <th scope="col">Preço</th>
            <th scope="col">Quantidade</th>
            <th scope="col">Categoria</th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>
        <%
            for (Pokemon p : pokemons) {
        %>
        <tr>
            <td class="align-middle" style="padding: 0.75rem 2rem;" ><%= p.getId()%></td>
            <td class="align-middle"><%= p.getNome()%></td>
            <td class="align-middle"><%= p.getDescricao()%></td>
            <td class="align-middle"><%= p.getPreco()%></td>
            <td class="align-middle"><%= p.getQuantidade()%></td>
            <td class="text-end">
                <a role="button" class="btn btn-primary" href="<%= request.getContextPath()%>/FormProduto?id=<%= p.getId()%>">Atualizar</a>
                <a role="button" class="btn btn-primary" href="<%= request.getContextPath()%>/RemoverProduto?id=<%= p.getId()%>">Remover</a>
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
