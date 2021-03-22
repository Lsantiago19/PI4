<%-- 
    Document   : CadastrarProdutos
    Created on : 06/03/2021, 18:37:06
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
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Arvo&display=swap" rel="stylesheet">

        <link href="padrao.css" rel="stylesheet">
        <link href="CadProd.css" rel="stylesheet">
    </head>
    <body>
        <form action="PostProdutos" method="POST" enctype="multipart/form-data">
            <input class="p_form" name="idprod" value="${idprod}" hidden>
            <input class="p_form" name="idimagem" value="${idimagem}" hidden>
            <p class="p_form">Nome Produto</p>
            <input class="input_form" name="nomeproduto" required>
            <p class="p_form">Nome em Extenso</p>
            <input class="input_form" name="nomeextenso">
            <p class="p_form">Estrelas</p>
            <input class="input_form" name="estrelas" required>
            <p class="p_form">Status</p>
            <input id='switch-shadow' class='switch switch--shadow' name='status' type='checkbox' value='${status}'/>
            <label for='switch-shadow'></label>
            <p class="p_form">Quantidade</p>
            <input class="input_form" name="qtd" required>
            <p class="p_form">preço</p>
            <input class="input_form" name="preco" required>
            <input type='file' id='imagens' class="custom-file-input" name='filename' accept="image/*">
            <br/>
            <button type="submit" class="submit">Enviar</button>
        </form>
    </body>
</html>
