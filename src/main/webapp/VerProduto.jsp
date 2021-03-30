<%-- 
    Document   : VerProduto
    Created on : 13/03/2021, 20:07:40
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Bai+Jamjuree:wght@200&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=K2D:wght@700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@500&display=swap" rel="stylesheet">

        <link href="CadProd.css" rel="stylesheet">
    </head>

    <body>
        <%@include file="/Utils/Menu_inc.jsp" %>
        
        <input class="input_form" name="id" value="${produto.id}" hidden>
        <div class="row">
            <p class="p_form">Visualizando o produto </p>
            <h2 class="custom_h2">${produto.nomeproduto}</h2>
        </div>
        <div class="row">
            <p class="p_form">Nome em Extenso:</p>
            <h2 class="custom_h2">${produto.nomeextenso}</h2>
        </div>
        <div class="row">
            <p class="p_form">Estrelas:</p>
            <h2 class="custom_h2">${produto.estrelas}</h2>
        </div>
        <div class="row">
            <p class="p_form">Status:</p>
            <%

                Object p = request.getAttribute("status");
                if (p.equals("Ativo")) {
                    out.print("<input id='switch-shadow' class='switch switch--shadow' name='status' type='checkbox' value='${status}' checked disabled/>"
                            + "<label for='switch-shadow'></label>");
                } else {
                    out.print("<input id='switch-shadow' class='switch switch--shadow' name='status' type='checkbox' value='${status}' disabled/>"
                            + "<label for='switch-shadow'></label>");
                }

            %>
        </div>
        <div class="row">
            <p class="p_form">Quantidade:</p>
            <h2 class="custom_h2">${produto.quantidade}</h2>
        </div>
        <div class="row">
            <p class="p_form">Preço:</p>
            <h2 class="custom_h2">R$ ${produto.preco}</h2>
        </div>
    </body>
</html>
