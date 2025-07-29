<%-- 
    Document   : index
    Created on : 22 de mai. de 2025, 18:42:53
    Author     : Leonardo Oliveira Moreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>
<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: transparent;">
<form action="<%= request.getContextPath()%>/Login" method="post">
    <div class="mb-3">
        <img src="<%= request.getContextPath() %>/images/perfil.png" width="40px" alt="login" height="40px" style="vertical-align: middle; display: inline-block;">
        <input type="text" name="login" class="form-control" id="formControlLogin" placeholder="Nome de usuário/e-mail" required>
    </div>
    <div class="mb-3">
        <img src="<%= request.getContextPath() %>/images/cadeado.png" width="25px" alt="senha" height="25px" style="vertical-align: middle; display: inline-block; margin: 0.5rem;">
        <input type="password" name="senha" class="form-control" id="formControlSenha" placeholder="Senha" required>
    </div>
    <input class="btn btn-primary" type="submit" style="margin-top: 2.5rem; margin-left: 0rem;" value="Entrar" />
    <a href="cadastrarCliente.jsp">Inserir novo cliente</a>
</form>
</nav>
<%@include file="rodape.jsp" %>
