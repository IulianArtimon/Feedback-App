<%--
  Created by IntelliJ IDEA.
  User: aiciulian
  Date: 19-Oct-16
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Feedback Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap library-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}../../resource/static/bootstrap/css/bootstrap.min.css">
    <!-- Css link-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../resource/static/css/login.css">
    <!-- Google reCaptcha-->
    <script src='https://www.google.com/recaptcha/api.js?hl=ro'></script>
</head>
<body>

<!-- Bara de meniu -->

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand colorMe" href="${pageContext.request.contextPath}/appforFeedback/"><span class="glyphicon glyphicon-home"></span> <b>SRL</b></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath}/appforFeedback/feedbackPage" class="colorMe"><b>Feedback</b></a></li>
            <li><a  href="${pageContext.request.contextPath}/appforFeedback/login" class="colorMe"><b>Admin</b></a></li>
        </ul>
    </div>
</nav>

<div class="container">

    <form:form class="well form-horizontal" action="salveazaFeedback" method="post"  id="formCheckPassword" modelAttribute="formularNou">
        <fieldset>

            <!-- Nume Pagina -->
            <legend>Feedback</legend>

            <!-- Selectie Categorie -->

            <div class="form-group">
                <label class="col-md-4 control-label">Categorie</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                        <select name="categorie" class="form-control" required>
                            <option value="">Selecteaza o categorie</option>
                            <option class="option">Coleg</option>
                            <option class="option">Echipa</option>
                            <option class="option">Colaborator SDL</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- Nume persoana pentru care dam feedback-->

            <div class="form-group">
                <label class="col-md-4 control-label" >Nume</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <form:input path="nume" placeholder="Nume" class="form-control"  type="text"  id="Nume"/>
                    </div>
                </div>
            </div>

            <!-- Feedback text -->

            <div class="form-group">
                <label class="col-md-4 control-label">Feedback</label>
                <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <form:textarea spellcheck="false" class="form-control" rows="8" path="feedback" placeholder="Feedback" id="Feedback"/>
                    </div>
                </div>
            </div>

            <!-- Cui trimitem feedback-ul -->

            <div class="form-group">
                <label class="col-md-4 control-label">Catre cine trimiti feedback?</label>
                <div class="col-md-4">
                    <div class="checkbox" >
                        <label>
                            <input type="hidden" value="" name="destinatarByDefault"/>
                            <input type="checkbox" class="bifat" name="destinatar" value="Front-End"/> Team Leader Echipa Front-End
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="hidden" value="" name="destinatarByDefault"/>
                            <input type="checkbox"  class="bifat" name="destinatar" value="Java"/> Team Leader Echipa Java
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="hidden" value="" name="destinatarByDefault"/>
                            <input type="checkbox"  class="bifat" name="destinatar" value="C#"/> Team Leader Echipa C#
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="hidden" value="" name="destinatarByDefault"/>
                            <input type="checkbox"  class="bifat" name="destinatar" value="Resurse-Umane"/> Resurse umane
                        </label>
                    </div>
                </div>
            </div>

            <!-- Google re-Chapcha -->

            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4 selectContainer">
                    <div class="g-recaptcha" data-sitekey="6LfkqQkUAAAAANaX2YXL59vkbNM0Emwt-ignNIqT"></div>
                </div>
            </div>

            <!-- Button Trimite feedback -->

            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-success" id="submit">Trimite <span class="glyphicon glyphicon-send"></span></button>
                </div>
            </div>

        </fieldset>
    </form:form>
</div>
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
<!-- Script pt validare Parola -->
<script src="${pageContext.request.contextPath}../../resource/static/js/validareInput/validareParola.js"></script>
<script src="${pageContext.request.contextPath}../../resource/static/js/validareInput/bootbox.min.js"></script>
</body>
</html>
