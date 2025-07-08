<%-- 
    Document   : index
    Created on : 24 de jun. de 2025, 19:33:07
    Author     : leoomoreira
--%>

<%@page import="modelo.pokemon.Pokemon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecalho.jsp" %>
<h3>Produtos em Estoque</h3>
<%    
    List<Pokemon> pokemons = (List<Pokemon>) request.getAttribute("pokemons");
    if (pokemons != null && !pokemons.isEmpty()) {
    for (int i = 0; i < pokemons.size(); i++) {
%>
<h1><%= pokemons.get(i).getDescricao() %> - <%= pokemons.get(i).getQuantidade() %></h1>
<%
    }
    } else {
%>
        <p>Nenhum produto em estoque ou erro ao carregar a lista.</p>
<%
    }
%>
<%@include file="rodape.jsp" %>
