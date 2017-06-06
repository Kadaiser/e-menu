
<%@ page pageEncoding="UTF-8"%>	<!-- Header -->
  	<%@ include file="../jspf/header-index.jspf" %>
<body>


<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                        <h3 class="panel-title">Bienvenido</h3>
                        </div>
                        <div class="panel-body">
                        <form role="form" action="registrarRest" method="post">


                                <div class="form-group">
                            <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="Nombre de Restaurante" value="bar los caños">
                                    </div>




                                <div class="form-group">
                                    <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email" value="loscanyos@gmail.com">
                                </div>


                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="cif" id="cif" class="form-control input-sm" placeholder="CIF" value="12345678A">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="telefono" id="telefono" class="form-control input-sm" placeholder="Teléfono" value="666111888">
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