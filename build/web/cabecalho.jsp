<%-- 
    Document   : cabecalho
    Created on : 10 de jun. de 2025, 18:23:03
    Author     : Leonardo Oliveira Moreira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>smd e-commerce</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp">smd e-commerce</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.jsp">Início</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="cadastrarCliente.jsp">Cadastre-se</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">Entrar</a>
                            </li>
                            <!--
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Dropdown
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                            </li>
                            -->
                        </ul>
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Procurar" aria-label="Search"/>
                            <button class="btn btn-outline-success" type="submit">Procurar</button>
                        </form>
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