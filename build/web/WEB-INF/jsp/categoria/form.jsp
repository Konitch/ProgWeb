<%-- 
    Document   : form
    Created on : 17 de jun. de 2025, 18:23:06
    Author     : Leonardo Oliveira Moreira
--%>

<%@page import="modelo.tipo.Tipo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../cabecalho.jsp" %>
<h3>Cadastro de Categorias</h3>
<%    
    Tipo tipo = (Tipo) request.getAttribute("tipo");
%>
<form action="<%= request.getContextPath()%>/SalvarCategoria" method="post">
    <% if (tipo != null) { %>
    <div class="mb-3">
        <label for="formControlId" class="form-label">Id</label>
        <input type="text" name="id" class="form-control" id="formControlId" placeholder="Id" value="<%= (tipo != null ? tipo.getId() : "")%>" readonly>
    </div>
    <% } %>
    <div class="mb-3">
        <label for="formControlDescricao" class="form-label">Descrição</label>
        <input type="text" name="nome" class="form-control" id="formControlDescricao" placeholder="Descrição" value="<%= (tipo != null ? tipo.getNome() : "")%>">
    </div>
    <input class="btn btn-primary" type="submit" value="Salvar" />
</form>
<%@include file="../rodape.jsp" %>
