<%-- 
    Document   : ProdutoSelecionado
    Created on : 16/03/2021, 18:56:18
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="ProdutoSelecionado.css">
    </head>

    <body>
        <%@include file="/Utils/Menu_inc.jsp" %>

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row justify-content-md-center">
                <div class="col-lg-5 col-md-5 col-sm-5">
                    <div class="col-md-12"> 
                        <div class="col-lg-12 col-md-12 col-sm-12" align="center">
                            <figure>
                                <img class="produto" src="https://placekitten.com/640/360">
                                <p>Lista de imagens</p>
                            </figure>
                        </div>
                        <div class="infos">
                            <h3 class="" id="nomeProduto"><strong>${produto.nomeproduto}</strong></h3>
                            <p class="" id="nomeExtenso">${produto.nomeextenso}</p>
                        </div>
                    </div>
                    <div class="col-md-12"> 
                        <div class="row justify-content-md-center">
                            <div id="col-lg-6 col-md-6 col-sm-6">
                                <p class="pQuadro">Avaliação:</p>
                                <p class="pQuadro">
                                    <%
                                        Object p = request.getAttribute("estrelas");
                                        int i = 0;
                                        int estrelas = Integer.parseInt(String.valueOf(p));
                                        for (i = 0; i < estrelas; i++) {
                                            out.print("★ ");
                                        }
                                        while (i < 5) {
                                            out.print("☆ ");
                                            i++;
                                        }
                                    %>
                                </p>
                            </div>
                            <div id="col-lg-6 col-md-6 col-sm-6">
                                <p class="pQuadro">Quantidade:</p>
                                <p class="pQuadro">${produto.quantidade}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12"> 
                        <input id="comentario" placeholder="Deixe um comentário!">
                        <button type="submit" id="btnComent" disabled="true">Salvar</button>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5">
                    <div class="col-lg-12"> 
                        <p class="pPreço"><strong>R$ ${produto.preco}</strong></p>
                        <p class="pPreço">Formas de Pagamento: VISA, ALELO, MASTERCARD</p>
                    </div>
                    <div class="col-lg-12"> 
                        <p class="pPreço">Calcule o frete: </p>
                        <input class="masked" id="inputCEP" placeholder="CEP">
                        <button type="submit" id="btnFrete" disabled="true">Calcule o frete</button>
                        <p>&numsp;</p>
                        <button id="btnAddCarrinho" disabled="true">Adicionar ao carrinho</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
