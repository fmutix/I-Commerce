<%-- 
    Document   : login
    Created on : Mar 26, 2015, 1:01:58 PM
    Author     : mute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/img/icon.gif" type="image/x-icon" rel="shortcut icon">
        <title>Ivalice Commerce - Log In</title>
        
        <!-- Bootstrap core CSS -->
        <link href="res/css/bootstrap.min.css" rel="stylesheet">
        <link href="res/css/login.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="toolbar.jsp" %>
        <div class="container">
            <form class="form-login" action="index.html" scope="session" method="post">
                <h2 class="form-login-heading">Connexion</h2>
                <label for="inputUsername" class="sr-only">Nom</label>
                <input name="name" type="text" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
                <label for="inputPassword" class="sr-only">Mot de passe</label>
                <input name="password" name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Go</button>
                <input type="hidden" name="state" value="login">
            </form>
        </div> <!-- /container -->
    </body>
</html>
