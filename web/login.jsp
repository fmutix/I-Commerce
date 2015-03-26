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
            <form class="form-login">
                <h2 class="form-login-heading">Please log in</h2>
                <label for="inputUsername" class="sr-only">Username</label>
                <input type="text" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
            </form>
        </div> <!-- /container -->
    </body>
</html>
