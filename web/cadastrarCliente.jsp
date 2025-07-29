<%-- 
    Document   : cadastrarCliente
    Created on : 27 de mai. de 2025, 18:58:27
    Author     : Leonardo Oliveira Moreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>
<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: transparent;">
<h2 style="margin: 2rem;">Crie a sua conta!</h2>
<form action="<%= request.getContextPath() %>/InserirCliente" method="post" style="margin-left: 1.5rem;">
    <div class="mb-3" style="margin: 0.5rem;">
        <input type="text" name="nome" class="form-control" id="formControlNome" placeholder="Nome">
    </div>
    <div class="mb-3" style="margin: 0.5rem;">
        <input type="text" name="endereco" class="form-control" id="formControlEndereco" placeholder="Endereço">
    </div>
    <div class="mb-3" style="margin: 0.5rem;">
        <input type="text" name="email" class="form-control" id="formControlEmail" placeholder="Email">
    </div>
    <div class="mb-3" style="margin: 0.5rem;">
        <input type="text" name="login" class="form-control" id="formControlLogin" placeholder="Login">
    </div>
    <div class="mb-3" style="margin: 0.5rem;">
        <input type="password" name="senha" class="form-control" id="formControlSenha" placeholder="Senha">
    </div>
    <input class="btn btn-primary" type="submit" value="Salvar" style="margin-top: 1.0rem;"/>
    <%-- 
    <a class="btn btn-secondary" href="index.jsp">Retornar</a>
    --%>
</form>
</nav>
<%@include file="rodape.jsp" %>

