<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>      
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>e-Menú</title>
    <!-- BOOTSTRAP STYLES-->

    <!-- BOOTSTRAP STYLES-->
    <link href="/static/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="/static/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="/static/css/custom.css" rel="stylesheet" />
    <link href="/static/css/index.css" rel="stylesheet" />


          <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>

<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container">
        <div class="card card-container">

            <img id="profile-img" class="profile-img-card" src="img/logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="home.html">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" id="inputEmail" class="form-control" placeholder="Correo electrónico" required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Recuérdame
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Iniciar sesión</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Olvidó la contraseña?
            </a>
        </div><!-- /card-container -->

        <div class="create-account">
                <a href="reg.html"> Crear cuenta </a>
                <p>¿Su negocio no está anunciado? <a href="reg-rest.html">Anúnciese ahora mismo</a></p>

        </div> <!--create-account-->
    </div><!-- /container -->


</body>
</html>