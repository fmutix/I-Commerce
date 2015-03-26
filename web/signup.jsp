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
            <form class="form-signup">
                <h2 class="form-signup-heading">Please sign up</h2>
                <label for="inputUsername" class="sr-only">Username</label>
                <input type="text" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
            </form>
        </div> <!-- /container -->
    </body>
</html>
