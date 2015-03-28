<%-- 
    Document   : toolbar
    Created on : Mar 26, 2015, 1:30:49 PM
    Author     : mute
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Ivalice Commerce</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <c:choose>
                    <c:when test="${cookie.log == null}">
                        <li><a href="signup.jsp">S'inscrire</a></li>
                        <li><a href="login.jsp">Se connecter</a></li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="index.html?state=logout">Déconnexion</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>