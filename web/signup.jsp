<%-- 
    Document   : signup
    Created on : Mar 26, 2015, 1:01:29 PM
    Author     : mute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/img/icon.gif" type="image/x-icon" rel="shortcut icon">
        <title>Ivalice Commerce - Sign Up</title>
        
        <!-- Bootstrap core CSS -->
        <link href="res/css/bootstrap.min.css" rel="stylesheet">
        <link href="res/css/signup.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="toolbar.jsp" %>
        <div class="container">
            <form class="form-signup" action="index.html">
                <h2 class="form-signup-heading">Please sign up</h2>
                <label for="inputUsername">Nom</label>
                <input name="name" type="text" id="inputUsername" class="form-control" placeholder="Username 20 characters max" required autofocus>
                <label for="inputEmail">Adresse email</label>
                <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email address" required>
                <label for="inputPassword">Mot de passe</label>
                <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputGuild">Je suis une guilde</label>
                <select name="guild" class="form-control" id="inputGuild">
                    <option>Oui</option>
                    <option>Non</option>
                </select>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
                <input type="hidden" name="state" value="signup">
            </form>
        </div> <!-- /container -->
    </body>
</html>
