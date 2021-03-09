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
    </head>
    <body>
        <form action="PostProdutos" method="POST">
            <input class="p_form" name="idprod" value="${idprod}" hidden>
            <input class="p_form" name="idimagem" value="${idimagem}" hidden>
            <p class="p_form">Nome Produto</p>
            <input class="input_form" name="nomeproduto" required>
            <p class="p_form">Nome em Extenso</p>
            <input class="input_form" name="nomeextenso">
            <p class="p_form">Estrelas</p>
            <input class="input_form" name="estrelas" required>
            <p class="p_form">Ativo/Inativo</p>
            <input type="checkbox" id="male" name="status">
            <p class="p_form">Quantidade</p>
            <input class="input_form" name="qtd" required>
            <p class="p_form">preço</p>
            <input class="input_form" name="preco" required>
            <br/>
            <input type='file' id='imagens' name='filename' accept="image/*" enctype="multipart/form-data">
            <br/>
            <button type="submit" class="submit">Enviar</button>
        </form>
    </body>
</html>