<%-- 
    Document   : Menu_inc
    Created on : 20/03/2021, 10:53:24
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="padrao.css"/>

        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet"> <!--  'Nunito', sans-serif -->
        <link href="https://fonts.googleapis.com/css2?family=Bai+Jamjuree:wght@200&display=swap" rel="stylesheet"> <!--  'Bai Jamjuree', sans-serif -->
        <link href="https://fonts.googleapis.com/css2?family=K2D:wght@700&display=swap" rel="stylesheet"> <!--  'K2D', sans-serif -->
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@500&display=swap" rel="stylesheet"> <!--  'Josefin Slab', sans-serif -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&display=swap" rel="stylesheet"> <!--  'Nunito', sans-serif -->
        <link href="https://fonts.googleapis.com/css2?family=Arvo&display=swap" rel="stylesheet"> <!--  'Arvo', serif -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"crossorigin="anonymous"></script>
        <style>
            body {
                padding-top: 5rem;
            }
        </style>
    </head>


    <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
        <a class="navbar-brand" style="width: 10rem" href="index.jsp">Nerdolas.Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
                aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li>
                    <form class="form-inline">
                        <input class="form-control mr-sm-2" style="width: 30rem" type="search"
                               placeholder="Pesquisar..." aria-label="Search">
                        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Pesquisar</button>
                    </form>
                </li>
            </ul>
            <ul class="navbar-nav px-3">
                <li class="nav-item">
                    <a class="nav-link" href="GetUsuarios">Listar usuários</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarUsuario.jsp">Cadastrar Usuário</a>
                </li>
            </ul>
            <ul class="navbar-nav px-3">
                <li class="nav-item">
                    <a class="nav-link" href="GetProdutos">Listar produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="PostProdutos">Cadastrar produtos</a>
                </li>
            </ul>
            <ul class="navbar-nav px-3">
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cadastro</a>
                </li>
            </ul>
        </div>
    </nav>
</html>
