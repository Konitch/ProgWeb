<%-- 
    Document   : form
    Created on : 17 de jun. de 2025, 18:23:06
    Author     : Leonardo Oliveira Moreira
--%>

<%@page import="modelo.tipo.Tipo"%>
<%@page import="modelo.pokemon.Pokemon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../cabecalho.jsp" %>
<h3>Cadastro de Produtos</h3>
<%    
    Pokemon pokemon = (Pokemon) request.getAttribute("pokemon");
    List<Tipo> tipos = (List<Tipo>) request.getAttribute("tipos");
%>
<form action="<%= request.getContextPath()%>/SalvarProduto" method="post">
    <% if (pokemon != null) { %>
    <input type="hidden" name="id" value="<%= pokemon.getId() %>" />
    <div class="mb-3">
        <label for="formControlId" class="form-label">Id</label>
        <input type="text" class="form-control" id="formControlId" placeholder="Id" value="<%= pokemon.getId() %>" readonly>
    </div>
<% } %>
    <div class="mb-3">
        <label for="formControlDescricao" class="form-label">Nome</label>
        <input type="text" name="nome" class="form-control" id="formControlDescricao" placeholder="Nome" value="<%= (pokemon != null ? pokemon.getNome() : "")%>">
    </div>
    <div class="mb-3">
        <label for="formControlPreco" class="form-label">Preço</label>
        <input type="text" name="preco" class="form-control" id="formControlPreco" placeholder="Preço" value="<%= (pokemon != null ? pokemon.getPreco(): "")%>">
    </div>
    <div class="mb-3">
        <label for="formControlQuantidade" class="form-label">Quantidade</label>
        <input type="text" name="quantidade" class="form-control" id="formControlQuantidade" placeholder="Quantidade" value="<%= (pokemon != null ? pokemon.getQuantidade(): "")%>">
    </div>
    <div class="mb-3">
        <label for="formControlCategoria" class="form-label">Tipo</label>
        <select name="tipo_1" class="form-control" id="formControlCategoria">
            <option value="">Selecione ...</option>
            <%
                for (int i = 0; tipos != null && i < tipos.size(); i++) {
                    Tipo c = tipos.get(i);
                    if (pokemon != null && pokemon.getTipo_1() != null && c.getId() == pokemon.getTipo_1().getId()) {
            %>
            <option value="<%= c.getId() %>" selected><%= c.getNome() %></option>
            <%
                    } else {
            %>
            <option value="<%= c.getId() %>"><%= c.getNome() %></option>
            <%
                    }
                }
            %>
        </select>
    </div>
        
    <div class="mb-3">
    <label for="formControlTipo2" class="form-label">Tipo Secundário</label>
    <select name="tipo_2" class="form-control" id="formControlTipo2">
        <option value="">Nenhum</option>
        <%
            for (Tipo c : tipos) {
                boolean selecionado = (pokemon != null && pokemon.getTipo_2() != null && c.getId() == pokemon.getTipo_2().getId());
        %>
        <option value="<%= c.getId() %>" <%= selecionado ? "selected" : "" %>><%= c.getNome() %></option>
        <%
            }
        %>
    </select>
    </div>

    <div class="mb-3">
        <label for="formControlAvaliacao" class="form-label">Avaliação</label>
        <input type="text" name="avaliacao" class="form-control" id="formControlAvaliacao" placeholder="Avaliação" value="<%= (pokemon != null ? pokemon.getAvaliacao() : "") %>">
    </div>

    <div class="mb-3">
        <label for="formControlDescricao" class="form-label">Descrição</label>
        <input type="text" name="descricao" class="form-control" id="formControlDescricao" placeholder="Descrição" value="<%= (pokemon != null ? pokemon.getDescricao() : "") %>">
    </div>

    <div class="mb-3">
        <label for="formControlAltura" class="form-label">Altura</label>
        <input type="text" name="altura" class="form-control" id="formControlAltura" placeholder="Altura" value="<%= (pokemon != null ? pokemon.getAltura() : "") %>">
    </div>

    <div class="mb-3">
        <label for="formControlPeso" class="form-label">Peso</label>
        <input type="text" name="peso" class="form-control" id="formControlPeso" placeholder="Peso" value="<%= (pokemon != null ? pokemon.getPeso() : "") %>">
    </div>

    <div class="mb-3">
        <label class="form-label">Gênero</label><br/>
        <input type="checkbox" name="genero_m" value="true" <%= (pokemon != null && pokemon.getGenero_m() != null && pokemon.getGenero_m()) ? "checked" : "" %>> Masculino
        <input type="checkbox" name="genero_f" value="true" <%= (pokemon != null && pokemon.getGenero_f() != null && pokemon.getGenero_f()) ? "checked" : "" %>> Feminino
    </div>
    <input class="btn btn-primary" type="submit" value="Salvar" />
</form>
<%@include file="../rodape.jsp" %>
