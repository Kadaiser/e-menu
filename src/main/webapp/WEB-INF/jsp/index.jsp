	<%@ page pageEncoding="UTF-8"%>
	<!-- Header -->
  	<%@ include file="../jspf/header-index.jspf" %>
<script type="text/JavaScript">


function cambiaUser(){ 
	document.getElementById("inputEmail").value="a@a.as"
} 
function cambiaRest(){ 
	document.getElementById("inputEmail").value="r@r.rs"
} 
function cambiaAdmin(){ 
	document.getElementById("inputEmail").value="admin@ucm.es"
} 
</script>


<body>

<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container">
        <div class="card card-container">	
            <img id="profile-img" class="profile-img-card" src="${prefix}/img/logo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="login" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" name="username" id="inputEmail" class="form-control" placeholder="Correo electrónico" required autofocus>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Recuérdame
                    </label>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Iniciar sesión</button>
                <!--  
            	<input type="button" value="User" onclick="cambiaUser()" />
            	<input type="button" value="Rest" onclick="cambiaRest()" />
            	<input type="button" value="Admin" onclick="cambiaAdmin()" />
            	-->
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