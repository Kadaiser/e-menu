	<%@ page pageEncoding="UTF-8"%>
	<!-- Header -->
  	<%@ include file="../jspf/header-index.jspf" %>
<body>

<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container">
        <div class="card card-container">
        <p>Para usar los logueos:	</p>
        <p>user@iw.com</p>
  		<p>admin@iw.com</p>
  		<p>rest@iw.com</p>
  		<p>Pass para todos:  iw2017	</p>
  		
            <img id="profile-img" class="profile-img-card" src="${prefix}/img/logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="login" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" name="user" id="inputEmail" class="form-control" placeholder="Correo electrónico" required autofocus>
                <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Contraseña" required>
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
                <a href="reg"> Crear cuenta </a>
                <p>¿Su negocio no está anunciado? <a href="reg-rest">Anúnciese ahora mismo</a></p>

        </div> <!--create-account-->
    </div><!-- /container -->


</body>
</html>