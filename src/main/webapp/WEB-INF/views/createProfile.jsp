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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../resource/static/css/createProfile.css">
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

                <h5>Bine ai revenit <b>${username}!</b></h5>

                <!-- Sidebar Menu -->

                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <nav class="nav-sidebar">
                                <ul class="nav">
                                    <li class="active"><a href="appforFeedback/" class="colorMe"><span class="glyphicon glyphicon-home"></span> <b> SRL</b></a></li>
                                    <li><a href="#" class="colorMe"><span class="glyphicon glyphicon-pencil"></span> <b> Feedback</b></a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle colorMe" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> <b> Administrare</b><span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Schimbare parola</a></li>
                                            <li><a href="registerAdmin">Creaza User</a></li>
                                            <li><a href="afiseazaAdmini">Modifica User</a></li>
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

                <form action="creazaAdmin" method="post" id="formCheckPassword">
                <!-- Nume -->

                <div class="form-group">
                    <label class="col-md-3 control-label" >Nume</label>
                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="nume" placeholder="Nume" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>

                <!-- Prenume -->

                <div class="form-group">
                    <label class="col-md-3 control-label" >Prenume</label>
                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="prenume" placeholder="Prenume" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>

                <!-- Tip -->

                    <div class="form-group">
                        <label class="col-md-3 control-label">Tip</label>
                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                <select name="categorie" class="form-control selectpicker" id="tip">
                                    <option value="" id="Manager">Manager</option>
                                    <option class="option" id="Admin">Admin</option>
                                </select>
                            </div>
                        </div>
                    </div>

                <!-- Departament -->

                    <div class="form-group">
                        <label class="col-md-3 control-label">Departament</label>
                        <div class="col-md-3">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                <select name="departament" class="form-control selectpicker" required id="echipa">
                                    <option value="">Selecteaza departament</option>
                                    <option class="option">Front-End</option>
                                    <option class="option">Java</option>
                                    <option class="option">C#</option>
                                    <option class="option">Resurse umane</option>
                                </select>
                            </div>
                        </div>
                    </div>

                <!-- Username -->

                <div class="form-group">
                    <label class="col-md-3 control-label" >Username</label>
                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="username" placeholder="Username" class="form-control"  type="text" required>
                        </div>
                    </div>
                </div>

                <!-- Email -->

                <div class="form-group">
                    <label class="col-md-3 control-label" >Email</label>
                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="email" placeholder="Email" class="form-control"  type="email" required>
                        </div>
                    </div>
                </div>

                <!-- Parola -->

                <div class="form-group">
                    <label class="col-md-3 control-label" >Parola</label>
                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input name="parola" placeholder="Parola" class="form-control"  type="password" required id="password">
                        </div>
                    </div>
                </div>

                <!-- Parola -->

                <div class="form-group">
                    <label class="col-md-3 control-label" >Parola</label>
                    <div class="col-md-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input placeholder="Repeta parola" class="form-control"  type="password" required id="confpass">
                        </div>
                    </div>
                </div>

                <!-- Creare user -->

                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-3">
                        <button type="submit" class="btn btn-success" id="submit">Creaza</button>
                    </div>
                </div>
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
<!-- Script pt selector -->
<script src="${pageContext.request.contextPath}../../resource/static/js/selector/selector.js"></script>
<!-- Script pt validare Parola -->
<script src="${pageContext.request.contextPath}../../resource/static/js/validareInput/validareParola.js"></script>
<script src="${pageContext.request.contextPath}../../resource/static/js/validareInput/bootbox.min.js"></script>
</body>
</html>
