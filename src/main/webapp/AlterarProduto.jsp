<%-- 
    Document   : InfoProduto
    Created on : 07/03/2021, 16:38:07
    Author     : Gabriel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="padrao.css" rel="stylesheet">
        <link href="CadProd.css" rel="stylesheet">
    </head>

    <body>
        <%@include file="/Utils/Menu_inc.jsp" %>

        <div class="col-12 col-sm-6 col-md-4">
            <form action="AlterarProduto" method="POST">
                <input class="input_form" name="id" value="${produto.id}" hidden>
                <p class="p_form">Nome Produto</p>
                <input class="input_form" name="nomeproduto" value="${produto.nomeproduto}">
                <p class="p_form">Nome em Extenso</p>
                <input class="input_form" name="nomeextenso" value="${produto.nomeextenso}">
                <p class="p_form">Estrelas</p>
                <input class="input_form" type="number" name="estrelas" value="${produto.estrelas}">
                <p class="p_form">Status</p>
                <%
                    Object p = request.getAttribute("status");
                    if (p.equals("Ativo")) {
                        out.print("<input id='switch-shadow' class='switch switch--shadow' name='status' type='checkbox' value='${status}' checked/>"
                                + "<label for='switch-shadow'></label>");
                    } else {
                        out.print("<input id='switch-shadow' class='switch switch--shadow' name='status' type='checkbox' value='${status}'/>"
                                + "<label for='switch-shadow'></label>");
                    }
                %>
                <p class="p_form">Quantidade</p>
                <input class="input_form" type="number" name="qtd" value="${produto.quantidade}">
                <p class="p_form">preço</p>
                <input class="input_form" name="preco" value="${produto.preco}">
                <button type="submit" class="submit">Alterar</button>
            </form>
        </div>
    </body>
</html>
