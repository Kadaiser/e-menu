	<!-- Header -->
  	<%@ include file="../jspf/header-index.jspf" %>
<body>

<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container">
        <div class="card card-container">

            <img id="profile-img" class="profile-img-card" src="${prefix}resources/fragments/img/logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="home.html">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" id="inputEmail" class="form-control" placeholder="Correo electr�nico" required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Contrase�a" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Recu�rdame
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Iniciar sesi�n</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Olvid� la contrase�a?
            </a>
        </div><!-- /card-container -->

        <div class="create-account">
                <a href="reg.html"> Crear cuenta </a>
                <p>�Su negocio no est� anunciado? <a href="reg-rest.html">An�nciese ahora mismo</a></p>

        </div> <!--create-account-->
    </div><!-- /container -->


</body>
</html>