<%--
  Created by IntelliJ IDEA.
  User: aiciulian
  Date: 14-Oct-16
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create Admin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap library-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}../../resource/static/bootstrap/css/bootstrap.min.css">
    <!-- Css link-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../resource/static/css/adminProfile.css">
    <jsp:include page="/WEB-INF/views/common/head-include.jsp" />
</head>
<body>

<!-- Bara de meniu -->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand colorMe" href="${pageContext.request.contextPath}/appforFeedback/"><span class="glyphicon glyphicon-home"></span> <b>SRL</b></a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/appforFeedback/feedbackPage" class="colorMe"><b>Feedback</b></a></li>
            <li class="active"><a  href="${pageContext.request.contextPath}/appforFeedback/login" class="colorMe"><b>Admin</b></a></li>
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
                                                <li><a href="appforFeedback/registerAdmin">Creare admin</a></li>
                                                <li><a href="appforFeedback/afiseazaAdmini">Modificare admin</a></li>
                                                <li><a href="appforFeedback/afiseazaAdmini">Stergere admin</a></li>
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
            <div class="col-lg-8">

                <div>
                    <div class="well">
                        <h2 class="text-info">Pagina Profil</h2>
                        <p><span class="label label-success">Admin</span></p>

                        <hr>
                        <h4>Nume: </h4>
                        <p>${admin.prenume} ${admin.nume}</p>
                        <hr>
                        <h4>Username: </h4>
                        <p>${admin.username}</p>
                        <hr>
                        <h4>Email: </h4>
                        <p>${admin.email}</p>
                        <hr>

                        <div class="btn-group">
                            <button type="button" class="btn btn-success btn-sm">
                                Modifica
                            </button>
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger btn-sm">
                                Sterge
                            </button>
                        </div>
                        <a href="adminProfile/${admin.nume}/edit">Edit Profile</a>
                    </div>
                </div>
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
