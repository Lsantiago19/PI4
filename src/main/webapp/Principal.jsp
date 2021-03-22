<%-- 
    Document   : Principal
    Created on : 12/03/2021, 14:39:45
    Author     : Lucas
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="Principal.css">
        <title>Nerdolas.Store | Home</title>
    </head>    
    <body>
        <%@include file="/Utils/Menu_inc.jsp" %>

        <div class="container">
            <div class="row">

                <c:forEach var="produtos" items="${GetProdutos}">
                    <input class="input_form" name="status" value="${produto.id}" hidden>
                    <div class="col-12 col-sm-6 col-md-4" style="width: 10rem">

                        <a href="ProdutoSelecionado?id=${produtos.id}">
                            <div class="card-body">
                                <img class="card-img-top" src="https://placekitten.com/640/360" style="padding-top: 1%">
                                <h5 class="card-title">${produtos.nomeproduto}</h5>
                                <p class="card-text">R$ ${produtos.preco}</p>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>

</html>
