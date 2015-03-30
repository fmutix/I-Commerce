<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="res/img/icon.gif" type="image/x-icon" rel="shortcut icon">
		<title>Ivalice Commerce</title>
		<!-- Bootstrap core CSS -->
		<link href="res/css/bootstrap.min.css" rel="stylesheet">
		<link href="res/css/carousel.css" rel="stylesheet">
	</head>
	<body>
		<%@ include file="toolbar.jsp" %>
		<!-- Carousel
		================================================== -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<c:if test="${connect == 'loginerror'}">
				<div class="alert alert-danger" role="alert">
					<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					<span class="sr-only">Erreur: </span>
					Nom d'utilisateur ou mot de passe erroné.
				</div>
			</c:if>
			<c:if test="${connect == 'signuperror'}">
				<div class="alert alert-danger" role="alert">
					<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
					<span class="sr-only">Erreur: </span>
					Nom d'utilisateur ou email déjà existant.
				</div>
			</c:if>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="container">
						<div class="carousel-caption">
							<h1>Bienvenue sur Ivalice Commerce, kupo !</h1>
							<p>
								Que vous soyez une guilde ou un aventurier solitaire, vous trouverez 
								tous les équipements dont vous pourriez avoir besoin.
							</p>
							<p>
								La livraison sera faite par le Mog Poste, kupo.
							</p>
							<form action="index.html" method="post">
								<button class="btn btn-lg btn-primary" type="submit">Voir les articles</button>
								<input type="hidden" name="state" value="browse">
							</form>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="container">
						<div class="carousel-caption">
							<h1>Déjà membre ?</h1>
							<p>
								Venez faire vos achats à de superbes prix, kupo.
							</p>
							<p>
								Il est aussi temps de vous inscrire pour profiter de nos services.
							</p>
							<p><a class="btn btn-lg btn-primary" href="sigup.jsp" role="button">S'inscrire</a> 
								<a class="btn btn-lg btn-primary" href="login.jsp" role="button">Se connecter</a></p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="container">
						<div class="carousel-caption">
							<h1>Vous êtes une guilde ?</h1>
							<p>
								Bénéficiez d'une réduction sur tous les produits.
							</p>
							<p>
								Faites plaisir à vos membres en achetant de nombreux produits.
							</p>
							<p><a class="btn btn-lg btn-primary" href="#" role="button">Kupo</a></p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div><!-- /.carousel -->
		
		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="res/js/jquery-1.11.2.js"></script>
		<script src="res/js/bootstrap.min.js"></script>
	</body>
</html>
