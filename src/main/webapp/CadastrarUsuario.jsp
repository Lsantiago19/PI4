<%-- 
    Document   : CadastrarUsuario
    Created on : 26/03/2021, 19:47:26
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
        <%@include file="/Utils/Menu_inc.jsp" %>
        <form action="CadastrarUsuario" method="POST">
                <input class="p_form" name="idprod" value="${idprod}" hidden>
                <p class="p_form">Nome Usuário</p>
                <input class="input_form" name="nome" required>
                <p class="p_form">Senha</p>
                <input class="input_form" name="senha">
                <p class="p_form">Tipo de Usuário</p>
                <input class="input_form" name="tipocad" required>
                <p class="p_form">Status</p>
                <input id='switch-shadow' class='switch switch--shadow' name='status' type='checkbox' value='${status}'/>
                <label for='switch-shadow'></label>
                <br/>
                <button type="submit" class="submit">Enviar</button>
            </form>
    </body>
</html>
