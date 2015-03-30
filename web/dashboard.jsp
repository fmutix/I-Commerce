<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
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
			<jsp:useBean id="itemlist" class="bean.ItemList" scope="session"/>
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
						<a class="btn btn-primary" href="#" role="button" onclick='$.post("Cart",{action:"addCart", itemname:"${item.value.name}"});'>+</a>
						<a class="btn btn-primary" href="#" role="button" onclick='$.post("Cart",{action:"minusCart", itemname:"${item.value.name}"});'>-</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>