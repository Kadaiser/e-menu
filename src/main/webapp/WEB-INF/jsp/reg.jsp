<%@ page pageEncoding="UTF-8"%>
	<!-- Header -->
  	<%@ include file="../jspf/header-index.jspf" %>
  

<script>
//Funcion ajax encargada de comprobar que el nombre del heroe este disponible
function comprobarCorreo(correoUser) {
	//obj es el id del parrafo donde queremos insertar el icono
		var data = {correo: correoUser, obj: "correoUser"}; 
		$.ajax({
			dataType: "json",
			url: "/comprobarCorreoUser",
			type: "GET",
			data: data,
			success: function(d) {
				console.log(d);
				console.log(d.estado);
				if(d.estado == "usado"){
					$('#email').css("border", "3px solid red");
				}else if (d.estado == "valido"){
					$('#email').css("border", "3px solid green");
				}
			},
			error: function(d){
				console.log(d);
			}
		})
	
		
}


function comprobarContraseña(pass,pass1){
	if(pass1.length<4 || pass.length<4){
		var data = {estado: "error" , mensajeError: "La contraseña debe tener longitud mínima de 4", obj: "pass"};
		editarIconoPass(data);
	}else if(pass1 != pass){
		var data ={estado: "error", mensajeError: "Las contraseñas no coinciden", obj: "pass"};
		editarIconoPass(data);
	}else{
		var data = {estado: "valida" , mensajeError: "",  obj: "pass"};
		editarIconoPass(data);
	}
}

function editarIconoPass(data){
	if(data["estado"] == "error"){
		$('#password').css("border", "3px solid red");
	}else if(data["estado"] == "valida"){
		$('#password').css("border", "3px solid green");
	}
}

$(document).ready(function(){
	
	/* Si el correo es valido se comprobara mediante ajax 
		que el correo no este en la BBDD */
/*	$("#email").change(function(){
			comprobarCorreo($(this).val());
	});*/
	
	$("#password_confirmation").change(function(){
		comprobarContraseña($(this).val(),$('#password').val());
	});
	
});

</script>
<body>


<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                        <h3 class="panel-title">Bienvenido</h3>
                        </div>
                        <div class="panel-body">
                        <form role="form" action="registrar" method="post">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                            <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="Nick" value="ADRI">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="date" name="born_date" id="born_date" class="form-control input-sm" value="1950-07-02">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email" value="ejemplo@gmail.com">
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Contraseña" value="12345">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirme contraseña" value="12345">
                                    </div>
                                </div>
                            </div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <input class="btn btn-lg btn-primary btn-block btn-signin" type="submit" value="Registrar" class="btn btn-info btn-block">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>