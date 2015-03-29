<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h2 class="sub-header">Votre panier</h2>
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
					<th>Quantité</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<jsp:useBean id="shoppingcart" class="bean.ShoppingCart" scope="session"/>
				<c:forEach var="shoppingcartitem" items="${shoppingcart.shoppingCart}">
					<tr>
						<td><img src="${shoppingcartitem.value.item.path}" /></td>
						<td>${shoppingcartitem.value.item.name}</td>
						<td>${shoppingcartitem.value.item.price}</td>
						<td>${shoppingcartitem.value.item.attack}</td>
						<td>${shoppingcartitem.value.item.defense}</td>
						<td>${shoppingcartitem.value.item.magic}</td>
						<td>${shoppingcartitem.value.item.resistance}</td>
						<td>${shoppingcartitem.value.item.speed}</td>
						<td>${shoppingcartitem.value.item.move}</td>
						<td>${shoppingcartitem.value.item.jump}</td>
						<td>${shoppingcartitem.value.item.evasion}</td>
						<td>${shoppingcartitem.value.quantity}</td>
						<td>
							<a class="btn btn-primary" href="index.html?state=rmCart&itemname=${shoppingcartitem.value.item.name}" role="button">    &#10008;
</a> 
						</td>
					</tr>
				</c:forEach>
					<tr>
						<td>Total</td>
						<td>-</td>
						<td>gils</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
					</tr>
			</tbody>
		</table>
	</div>
</div>
