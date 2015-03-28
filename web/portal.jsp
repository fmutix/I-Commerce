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
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
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
							<p><a class="btn btn-lg btn-primary" href="items.jsp" role="button">Voir les articles</a></p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
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
					<img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
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
