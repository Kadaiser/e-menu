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


     <h1>Tu rol actual es ${role}</h1>
     
     <ul>
     <li> click para acceder como <a href="../login/admin>admin"></a>
     </li>
     <li> click para volver a login <a href="../login>login"></a>
     </li>
     </ul>
     
            <img id="profile-img" class="profile-img-card" src="${prefix}/img/logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="home">
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