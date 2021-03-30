<%-- 
    Document   : ListarUsuarios
    Created on : 26/03/2021, 20:25:06
    Author     : Bruno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários Cadastrados</title>
    </head>
    <body>
        <%@include file="/Utils/Menu_inc.jsp" %>
        <div class="col-lg-12 col-sm-6 col-md-4">
            <table class="tableList">
                <th>Nome Usuário</th>
                <th>Status</th>
                <th>Tipo de Usuário</th>
                <tbody>
                    <c:forEach var="usuarios" items="${GetUsuarios}"> <!--esse GetUsuarios é o nome da variavel que está no set attribute do servlet-->
                    <input class="input_form" name="status" value="${usuarios.id}" hidden> <!--esse usuarios é o nome da variavel do for each--> 
                    <tr>
                        <td>${usuarios.nome}</td>
                        <td>${usuarios.status}</td>
                        <td>${usuarios.tipoCadastro}</td>

                        <td><a class="editar" href="UsuarioSelecionado?id=${usuarios.id}&editar=true">Visualizar</a></td>
                        <td><a class="editar" href="GetUsuarios?id=${usuarios.id}&editar=true">Editar</a></td>
                        <td>
                            <form action="ToggleUsuario" method="POST">
                                <input type="hidden" name="id" value="${usuarios.id}" />
                                <input type="hidden" name="status" value="${usuarios.status}" />
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
