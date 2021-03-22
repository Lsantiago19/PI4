<%-- 
    Document   : TrocarDisponibilidade
    Created on : 13/03/2021, 18:38:28
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

        <link href="padrao.css" rel="stylesheet">
        <link href="CadProd.css" rel="stylesheet">
    </head>
    <body>
        <form action="ToggleProduto" method="POST">
            <input class="input_form" name="id" value="${produto.id}" hidden>
            <p class="p_form">Nome Produto</p>
            <h1>${produto.nomeproduto}</h1>
            <p>Status</p>
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
            <button type="submit" class="submit">Alterar</button>
        </form>
    </body>
</html>
