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
    <title>Welcome Page</title>
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
            <li ><a href="${pageContext.request.contextPath}/appforFeedback/feedbackPage" class="colorMe"><b>Feedback</b></a></li>
            <li><a href="${pageContext.request.contextPath}/appforFeedback/login" class="colorMe"><b>Admin</b></a></li>
        </ul>
    </div>
</nav>


<div class="container">
    <div class="jumbotron" style = "background-color:#dcdde0 !important;">
    </div>
</div>
<div class="container">
    <form class="well form-horizontal" action="feedbackPage" method="get" name="index">
        <filedset>
            <div class="container">
                <h3 class="text-center">Aceasta pagina iti permite sa oferi feedback colegilor, colaboratorilor</h3>
            </div>
            <button type="submit" class="btn btn-success center-block">Lasa Feedback</button>
        </filedset>
    </form>
</div>




<!-- Footer -->

<footer class="footer">
    <div class="container">
        <p class="text-muted">Disclaimer – toate datele au caracter confidential si nu pot fi asociate cu tine</p>
        <p class="text-muted">@Copyright aiciulian 2016</p>
    </div>
</footer>


<!-- jQuery library-->
<script src="${pageContext.request.contextPath}../../resource/static/js/jQuery/jquery-3.1.1.min.js"></script>
<!-- jQuery for Bootstrap-->
<script src="${pageContext.request.contextPath}../../resource/static/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
