<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="res/img/icon.gif" type="image/x-icon" rel="shortcut icon">
        <title>Ivalice Commerce - Achat</title>
        
        <!-- Bootstrap core CSS -->
        <link href="res/css/bootstrap.min.css" rel="stylesheet">
        <link href="res/css/login.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="toolbar.jsp" %>
        <div class="container">
            <form class="form-login" action="index.html" scope="session" method="post">
                <h4 class="form-login-heading">Merci pour d'avoir acheté sur Ivalice Commerce.</h4>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Retourner à l'accueil</button>
                <input type="hidden" name="state" value="index">
            </form>
        </div> <!-- /container -->
    </body>
</html>
