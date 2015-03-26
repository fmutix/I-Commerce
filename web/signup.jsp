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
                <label for="inputJob" class="sr-only">Job</label>
                <select class="form-control" id="inputJob">
                    <optgroup label="Humain">
                        <option>Soldat</option>
                        <option>Mage Blanc</option>
                        <option>Mage Noir</option>
                        <option>Voleur</option>
                        <option>Archer</option>
                        <option>Paladin</option>
                        <option>Spadassin</option>
                        <option>Ninja</option>
                        <option>Mage Bleu</option>
                        <option>Illusioniste</option>
                        <option>Chasseur</option>
                    </optgroup>
                    <optgroup label="Vangaa">
                        <option>Guerrier</option>
                        <option>Moine Blanc</option>
                        <option>Dragonier</option>
                        <option>Sentinelle</option>
                        <option>Evêque</option>
                        <option>Gladiateur</option>
                        <option>Templier</option>
                    </optgroup>
                    <optgroup label="Mog">
                        <option>Voleur</option>
                        <option>Noble Mog</option>
                        <option>Artilleur</option>
                        <option>Cabotin</option>
                        <option>Mage Noir</option>
                        <option>Mage Temps</option>
                        <option>Animiste</option>
                        <option>Pandore</option>
                    </optgroup>
                    <optgroup label="Viéra">
                        <option>Bretteur</option>
                        <option>Archer</option>
                        <option>Fantassin</option>
                        <option>Assassin</option>
                        <option>Mage Blanc</option>
                        <option>Mage Rouge</option>
                        <option>Elémentaliste</option>
                        <option>Invocateur</option>
                    </optgroup>
                    <optgroup label="Nu Mou">
                        <option>Mage Blanc</option>
                        <option>Mage Noir</option>
                        <option>Mage Temps</option>
                        <option>Illusioniste</option>
                        <option>Alchimiste</option>
                        <option>Dresseur</option>
                        <option>Morpheur</option>
                    </optgroup>
                </select>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
            </form>
        </div> <!-- /container -->
    </body>
</html>
