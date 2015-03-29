<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li><a href="index.html?state=panier">Panier</a></li>
	</ul>
	<c:forEach var="type" items="${navBar.list}">
	<ul class="nav nav-sidebar">
		<li <c:if test="${param.type == type.key}">class="active"</c:if>>
			<a href="index.html?state=type&type=${type.key}">
				${type.key}
			</a>
		</li>
		<c:forEach var="category" items="${type.value.list}">
		<li <c:if test="${param.category == category}">class="active"</c:if>>
			<a href="index.html?state=category&category=${category}">
				${category}
			</a>
		</li>
		</c:forEach>
	</ul>
	</c:forEach>
</div>