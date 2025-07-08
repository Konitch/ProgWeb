<%-- 
    Document   : cadastrarCliente
    Created on : 27 de mai. de 2025, 18:58:27
    Author     : Leonardo Oliveira Moreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>
<h3>Cadastro do Cliente</h3>
<form action="<%= request.getContextPath() %>/InserirCliente" method="post">
    <div class="mb-3">
        <label for="formControlNome" class="form-label">Nome</label>
        <input type="text" name="nome" class="form-control" id="formControlNome" placeholder="Nome">
    </div>
    <div class="mb-3">
        <label for="formControlEndereco" class="form-label">Endereço</label>
        <input type="text" name="endereco" class="form-control" id="formControlEndereco" placeholder="Endereço">
    </div>
    <div class="mb-3">
        <label for="formControlEmail" class="form-label">Email</label>
        <input type="text" name="email" class="form-control" id="formControlEmail" placeholder="Email">
    </div>
    <div class="mb-3">
        <label for="formControlLogin" class="form-label">Login</label>
        <input type="text" name="login" class="form-control" id="formControlLogin" placeholder="Login">
    </div>
    <div class="mb-3">
        <label for="formControlSenha" class="form-label">Senha</label>
        <input type="password" name="senha" class="form-control" id="formControlSenha" placeholder="Senha">
    </div>
    <input class="btn btn-primary" type="submit" value="Salvar" />
    <a class="btn btn-secondary" href="index.jsp">Retornar</a>
</form>
<%@include file="rodape.jsp" %>

