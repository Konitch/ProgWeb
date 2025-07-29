<%-- 
    Document   : cabecalho
    Created on : 10 de jun. de 2025, 18:23:03
    Author     : dougl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pokeshop</title>
        <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/images/favicon.png" />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/styles.css" />
    </head>
    <body>
        <header style="background-color: #111; padding: 0.75rem 1rem;">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid" style="display: flex; align-items: center; justify-content: space-between;">
                    <a class="navbar-brand" href="index.jsp" style="display: flex; align-items: center; text-decoration: none;">
                        <img src="<%= request.getContextPath() %>/images/logo.png" alt="Pokeshop" width="70" height="40" />
                    </a>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="display: flex; gap: 1.5rem; list-style: none; padding-left: 0;">

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
                            
                        <!--<form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Procurar" aria-label="Search"/>
                            <button class="btn btn-outline-success" type="submit">Procurar</button>
                        </form>
                        -->
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <a href="<%= request.getContextPath() %>/Inicio" style="margin-left: 1.5rem;">
            <img src="<%= request.getContextPath() %>/images/seta.png" width="32px" height="32px" alt="Voltar"/></a>
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