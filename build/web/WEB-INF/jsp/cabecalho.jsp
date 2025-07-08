<%-- 
    Document   : cabecalho
    Created on : 10 de jun. de 2025, 18:23:03
    Author     : dougl
--%>

<%@page import="modelo.cliente.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cliente cliente = (Cliente) session.getAttribute("cliente");
    if (cliente == null) {
        request.setAttribute("mensagem", "Você não tem permissão para acessar esta página");
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }
%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pokeshop</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/styles.css" />
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="<%= request.getContextPath()%>/index.jsp">Pokeshop</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Início</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<%= request.getContextPath()%>/VerUsuario">Atualizar Dados</a>
                            </li>
                            <%
                                if (cliente.getAdmin()) {
                            %>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Cadastros
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="<%= request.getContextPath()%>/ListarProdutos">Produtos</a></li>
                                    <li><a class="dropdown-item" href="<%= request.getContextPath()%>/ListarCategorias">Categorias</a></li>
                                </ul>
                            </li>
                            <%
                                }
                            %>
                            <li class="nav-item">
                                <a class="nav-link" href="<%= request.getContextPath()%>/Logout">Sair</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main role="main" class="container">
            <%
                String mensagem = (String) request.getAttribute("mensagem");
                if (mensagem != null) {
            %>
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <%= mensagem%>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                }
            %>