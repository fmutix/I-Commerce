<%-- 
    Document   : index
    Created on : Mar 20, 2015, 2:21:36 PM
    Author     : mute
--%>

<%@page import="java.util.HashMap"%>
<%@page import="bean.ItemList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="res/img/icon.gif" type="image/x-icon" rel="shortcut icon">
		<title>Ivalice Commerce</title>
		
		<!-- Bootstrap core CSS -->
		<link href="res/css/bootstrap.min.css" rel="stylesheet">
		<link href="res/css/dashboard.css" rel="stylesheet">
	</head>
	<body>
		<%@ include file="toolbar.jsp" %>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 col-md-2 sidebar">
					<ul class="nav nav-sidebar">
						<li><a href="index.html?state=panier">Panier</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<li><a href="index.html?state=type&type=Tête">Tête</a></li>
						<li><a href="index.html?state=category&category=Casque">Casque</a></li>
						<li><a href="index.html?state=category&category=Chapeau">Chapeau</a></li>
						<li><a href="index.html?state=category&category=Ruban">Ruban</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<li><a href="index.html?state=type&type=Corps">Corps</a></li>
						<li><a href="index.html?state=category&category=Armure">Armure</a></li>
						<li><a href="index.html?state=category&category=Tunique">Tunique</a></li>
						<li><a href="index.html?state=category&category=Buste">Buste</a></li>
						<li><a href="index.html?state=category&category=Toge">Toge</a></li>
					</ul>
				</div>
				<c:choose>
					<c:when test="${param.state == 'panier'}">
						<%@include file="panier.jsp" %>
					</c:when>
					<c:otherwise>
						<%@include file="dashboard.jsp" %>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="res/js/jquery-1.11.2.js"></script>
		<script src="res/js/bootstrap.min.js"></script>
	</body>
</html>
