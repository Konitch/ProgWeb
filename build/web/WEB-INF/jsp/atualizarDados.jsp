<%-- %>

    Document   : atualizarDados
    Created on : 3 de jun. de 2025, 18:49:36
    Author     : Leonardo Oliveira Moreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>
<h3>Atualizar Dados Pessoais</h3>
<form action="<%= request.getContextPath() %>/AtualizarUsuario" method="post">
    <input type="hidden" name="id" value="<%= cliente.getId() %>" />
    <div class="mb-3">
        <label for="formControlNome" class="form-label">Nome</label>
        <input type="text" name="nome" class="form-control" id="formControlNome" placeholder="Nome" value="<%= cliente.getNome() %>">
    </div>
    <div class="mb-3">
        <label for="formControlEndereco" class="form-label">Endereço</label>
        <input type="text" name="endereco" class="form-control" id="formControlEndereco" placeholder="Endereço" value="<%= cliente.getEndereco()%>">
    </div>
    <div class="mb-3">
        <label for="formControlEmail" class="form-label">Email</label>
        <input type="text" name="email" class="form-control" id="formControlEmail" placeholder="Email" value="<%= cliente.getEmail()%>">
    </div>
    <div class="mb-3">
        <label for="formControlLogin" class="form-label">Login</label>
        <input type="text" name="login" class="form-control" id="formControlLogin" placeholder="Login" value="<%= cliente.getLogin()%>">
    </div>
    <div class="mb-3">
        <label for="formControlSenha" class="form-label">Senha</label>
        <input type="password" name="senha" class="form-control" id="formControlSenha" placeholder="Senha" value="<%= cliente.getSenha()%>">
    </div>
    <input class="btn btn-primary" type="submit" value="Salvar" />
</form>
<%@include file="rodape.jsp" %>