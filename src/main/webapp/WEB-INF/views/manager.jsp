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

<form class="well form-horizontal">

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
                                        <li class="active"><a href="${pageContext.request.contextPath}/appforFeedback/" class="colorMe"><span class="glyphicon glyphicon-home"></span> <b>Home</b></a></li>
                                        <li><a href="${pageContext.request.contextPath}/appforFeedback/feedbackPage" class="colorMe"><span class="glyphicon glyphicon-pencil"></span> <b>Feedback</b></a></li>
                                        <li class="nav-divider"></li>
                                        <li><a href="${pageContext.request.contextPath}/appforFeedback/login" class="colorMe"><i class="glyphicon glyphicon-off"></i> Delogare</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-lg-6">
                                            <form>
                                                <table class="table table-striped" align="center">
                                                    <thead>
                                                    <tr>
                                                        <th>Data</th>
                                                        <th>Nume</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${ListaFeedback}" var="feedback">
                                                        <tr>
                                                            <td>${feedback.data}</td>
                                                            <td>${feedback.nume}</td>
                                                            <td><a href="manager/${feedback.id}"
                                                                   style="color:green">View</a></td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </form>
                            </div>

                        </div>
                    </div>
                </fieldset>

            </div>

        </div>
    </div>
</form>

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
