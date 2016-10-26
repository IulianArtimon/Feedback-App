<%--
  Created by IntelliJ IDEA.
  User: aiciulian
  Date: 05-Oct-16
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">

<head>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap library-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}../../resource/static/bootstrap/css/bootstrap.min.css">
    <!-- Css link-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../resource/static/css/login.css">

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

<div class="container">

    <form class="well form-horizontal" action="loginAdmin" method="post"  name="login_form">
        <fieldset>

            <!-- Selectie Categorie -->

            <div class="form-group">
                <label class="col-md-4 control-label">User Type</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                        <select name="categorie" class="form-control selectpicker">
                            <option value="">Manager</option>
                            <option>Admin</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- UserName-->

            <div class="form-group">
                <label class="col-md-4 control-label" >UserName</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input name="username" placeholder="UserName" class="form-control"  type="text">
                    </div>
                </div>
            </div>

            <!-- Parola -->

            <div class="form-group">
                <label class="col-md-4 control-label" >Parola</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input name="parola" placeholder="Parola" class="form-control"  type="password">
                    </div>
                </div>
            </div>


            <!-- Button Autentificare -->

            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-success" >Autentificare <span class="glyphicon glyphicon-log-in"></span></button>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <p class="EroareLogin">${EroareLogin}</p>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>
</div>


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
