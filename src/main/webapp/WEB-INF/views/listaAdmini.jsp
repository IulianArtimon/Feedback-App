<%--
  Created by IntelliJ IDEA.
  User: aiciulian
  Date: 05-Oct-16
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Admin Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap library-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}../../resource/static/bootstrap/css/bootstrap.min.css">
    <!-- Css link-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../resource/static/css/listaAdmin.css">

</head>
<body>
<!-- Bara de meniu -->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand colorMe" href="${pageContext.request.contextPath}/appforFeedback/"><span class="glyphicon glyphicon-home"></span> <b>SRL</b></a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/appforFeedback/feedbackPage" class="colorMe">Feedback</a></li>
            <li class="active"><a  href="${pageContext.request.contextPath}/appforFeedback/login" class="colorMe">Admin</a></li>
        </ul>
    </div>
</nav>

<div class="well form-horizontal">

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">
                <fieldset>

                    <!-- Nume Pagina -->

                    <h5>Bine ai revenit <b>${username}</b></h5>

                    <!-- Sidebar Menu -->

                    <div class="container">
                        <div class="row">
                            <div class="col-sm-2">
                                <nav class="nav-sidebar">
                                    <ul class="nav">
                                        <li class="active"><a href="appforFeedback/" class="colorMe"><span class="glyphicon glyphicon-home"></span> <b>Home</b></a></li>
                                        <li><a href="#" class="colorMe"><span class="glyphicon glyphicon-pencil"></span> <b>Feedback</b></a></li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle colorMe" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> <b>Administrare</b><span class="caret"></span></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#">Schimbare parola</a></li>
                                                <li><a href="registerAdmin">Creare admin</a></li>
                                                <li><a href="afiseazaAdmini">Modificare admin</a></li>
                                                <li><a href="afiseazaAdmini">Stergere admin</a></li>
                                            </ul>
                                        </li>
                                        <li class="nav-divider"></li>
                                        <li><a href="${pageContext.request.contextPath}/appforFeedback/login" class="colorMe"><i class="glyphicon glyphicon-off"></i> Delogare</a></li>

                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div class="col-lg-10">
                <form action="afiseazaAdmini" method="get">
                    <div style="text-align:center" align="right"><h3>Lista Admin &nbsp;&nbsp;&nbsp;&nbsp;</h3></div> <button type="submit" class="btn btn-success">Actualizeaza</button>
                </form>
                <form>
                    <table class="table table-striped" align="center">
                        <thead>
                        <tr>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Nume</th>
                            <th>Prenume</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ListaAdmini}" var="admin">
                            <tr>
                                <td>${admin.username}</td>
                                <td>${admin.email}</td>
                                <td>${admin.nume}</td>
                                <td>${admin.prenume}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- Footer -->

<footer class="footer">
    <div class="container">
        <p class="text-muted">@Copyright aiciulian 2016</p>
        <p class="text-muted">Aplicatie Web MVC care utilizeaza HTML5, Bootstrap, jQuery, Spring, JSP, Servlets, Hibernate, PostgreSQL</p>
    </div>
</footer>



<!-- jQuery library-->
<script src="${pageContext.request.contextPath}../../resource/static/js/jQuery/jquery-3.1.1.min.js"></script>
<!-- jQuery for Bootstrap-->
<script src="${pageContext.request.contextPath}../../resource/static/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
