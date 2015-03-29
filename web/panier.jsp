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
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<jsp:useBean id="shoppingcart" class="bean.ShoppingCart" scope="session"/>
				<jsp:useBean id="user" class="bean.Member" scope="session"/>
				<c:set var="total" value="${0}"/> 
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
							<form action="index.html">
							   <button class="btn btn-lg btn-primary" type="submit">&#10008;</button>
							   <input name="state" type="hidden" value="panier"/>
							   <input name="actioncart" type="hidden" value="rmCart"/>
							   <input name="itemname" type="hidden" value="${shoppingcartitem.value.item.name}"/>
							</form>
						</td>
					</tr>
					<c:set var="sum" value="${sum + shoppingcartitem.value.item.price * shoppingcartitem.value.quantity}"/>
				</c:forEach>
					<tr>
						<td>Total</td>
						<td>-</td>
						
							<c:choose>
								<c:when test="${user.guild == true}">
									<td style="color:#ff0000;"><c:out value="${sum-sum*5/100}"/> (-5%)</td>
								</c:when>
								<c:otherwise>
									<td><c:out value="${sum}"/></td>
								</c:otherwise>
							
							</c:choose>
						
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>-</td>
						<td>
							<c:if test="${sum != null}">
								<form action="index.html" method="post">
									<button class="btn btn-lg btn-primary" type="submit">Acheter</button>
									<input name="state" type="hidden" value="buy"/>
								</form>
							</c:if>
						</td>
					</tr>
			</tbody>
		</table>
	</div>
</div>
