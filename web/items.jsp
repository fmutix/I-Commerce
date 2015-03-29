<%-- 
    Document   : items
    Created on : Mar 25, 2015, 2:04:12 PM
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
				<div class="col-md-10 col-md-offset-0 main">
					<h2 class="sub-header">Liste des produits</h2>
					<div class="table-responsive">
						<table id="items-table" class="table table-striped">
							<thead>
								<tr>
									<th></th>
									<th>Nom</th>
									<th>Prix</th>
									<th>Attaque</th>
									<th>Défense</th>
									<th>Magie</th>
									<th>Résistance</th>
									<th>Vitesse</th>
									<th>Case</th>
									<th>Saut</th>
									<th>Esquive</th>
								</tr>
							</thead>
							<tbody>
								<jsp:useBean id="itemlist" class="bean.ItemList" scope="request"/>
							<c:forEach var="item" items="${itemlist.itemList}">
								<tr>
									<td><img src="${item.value.path}" /></td>
									<td>${item.value.name}</td>
									<td>${item.value.price}</td>
									<td>${item.value.attack}</td>
									<td>${item.value.defense}</td>
									<td>${item.value.magic}</td>
									<td>${item.value.resistance}</td>
									<td>${item.value.speed}</td>
									<td>${item.value.move}</td>
									<td>${item.value.jump}</td>
									<td>${item.value.evasion}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="res/js/jquery-1.11.2.js"></script>
		<script src="res/js/bootstrap.min.js"></script>
	</body>
</html>
