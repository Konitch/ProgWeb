<%-- 
    Document   : index
    Created on : 22 de mai. de 2025, 18:42:53
    Author     : Leonardo Oliveira Moreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>
<h3>Identificação do Usuário</h3>
<form action="<%= request.getContextPath()%>/Login" method="post">
    <div class="mb-3">
        <label for="formControlLogin" class="form-label">Login</label>
        <input type="text" name="login" class="form-control" id="formControlLogin" placeholder="Login" required>
    </div>
    <div class="mb-3">
        <label for="formControlSenha" class="form-label">Senha</label>
        <input type="password" name="senha" class="form-control" id="formControlSenha" placeholder="Senha" required>
    </div>
    <input class="btn btn-primary" type="submit" value="Entrar" />
    <a class="btn btn-secondary" href="cadastrarCliente.jsp">Inserir novo cliente</a>
</form>
<%@include file="rodape.jsp" %>
