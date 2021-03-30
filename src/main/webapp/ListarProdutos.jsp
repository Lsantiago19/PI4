<%-- 
    Document   : ListarProdutos
    Created on : 06/03/2021, 18:29:05
    Author     : Gabriel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos Cadastrados</title>

    </head>


    <body>
        <%@include file="/Utils/Menu_inc.jsp" %>
        <!--        <a href="DeleteProduto?id=0" onclick="return confirm('Confirma a exclusão de todos os produtos?')">Excluir Todos</a>-->
        <div class="col-lg-12 col-sm-6 col-md-4">
            <table class="tableList">
                <th>Nome Produto</th>
                <th>Nome Completo</th>
                <th>estrelas</th>
                <th>Status</th>
                <th>Quantidade</th>
                <th>preço</th>
                <tbody>
                    <c:forEach var="produtos" items="${GetProdutos}">
                    <input class="input_form" name="status" value="${produto.id}" hidden>
                    <tr>
                        <td>${produtos.nomeproduto}</td>
                        <td>${produtos.nomeextenso}</td>
                        <td>${produtos.estrelas}</td>
                        <td>${produtos.status}</td>

                        <td>${produtos.quantidade}</td>
                        <td>R$ ${produtos.preco}</td>
                        <td><a class="editar" href="ProdutoSelecionado?id=${produtos.id}&editar=true">Visualizar</a></td>
                        <td><a class="editar" href="GetProduto?id=${produtos.id}&editar=true">Editar</a></td>
                        <td>
                            <form action="ToggleProduto" method="POST">
                                <input type="hidden" name="id" value="${produtos.id}" />
                                <input type="hidden" name="status" value="${produtos.status}" />
                                <button class="editar">Alterar Status</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>