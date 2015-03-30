<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<form method="post" action="index.html" style="display: none;">
	<input name="state" value="type"/>
	<input id="cat_type" name="type" value="#"/>
</form>
<form  method="post" action="index.html" style="display: none;">
	<input name="state" value="category"/>
	<input id="cat_category" name="category" value="#"/>
</form>

<div class="col-sm-3 col-md-2 sidebar">
	<c:forEach var="type" items="${navBar.list}">
	<ul class="nav nav-sidebar">
		<li>
			<a href="#" onclick='$("#cat_type").val("${type.key}").parent().submit();'>
				- ${type.key} -
			</a>
		</li>
		<c:forEach var="category" items="${type.value.list}">
		<li>
			<a href="#" onclick='$("#cat_category").val("${category}").parent().submit();'">
				• ${category}
			</a>
		</li>
		</c:forEach>
	</ul>
	</c:forEach>
</div>