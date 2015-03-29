<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h1 class="page-header">Panier</h1>
	
	<div class="row placeholders">
		<div class="col-xs-6 col-sm-3 placeholder">
			<img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
			<h4>Label</h4>
			<span class="text-muted">Something else</span>
		</div>
		<div class="col-xs-6 col-sm-3 placeholder">
			<img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
			<h4>Label</h4>
			<span class="text-muted">Something else</span>
		</div>
		<div class="col-xs-6 col-sm-3 placeholder">
			<img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
			<h4>Label</h4>
			<span class="text-muted">Something else</span>
		</div>
		<div class="col-xs-6 col-sm-3 placeholder">
			<img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
			<h4>Label</h4>
			<span class="text-muted">Something else</span>
		</div>
	</div>
	
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
					<th>Action panier</th>
				</tr>
			</thead>
			<tbody>
				panier bean ...
				<%--				<jsp:useBean id="itemlist" class="bean.ItemList" scope="request"/>
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
						<td>
							<a class="btn btn-primary" href="items.jsp" role="button">+</a> 
							<a class="btn btn-primary" href="items.jsp" role="button">-</a>
						</td>
					</tr>
				</c:forEach>
				--%>
			</tbody>
		</table>
	</div>
</div>
