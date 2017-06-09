	<%@ page pageEncoding="UTF-8"%>
        <!-- /. NAV TOP  -->
	<%@ include file="../jspf/navTopAdmin.jspf" %>	
	
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
          <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>ADD RESTAURANT</h2>
                    </div>
                </div>
               <!-- /. ROW  -->
                <hr>
                <div class="row">
                <form action="/rest/add" method="post">
                    <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                            <input class="form-control"  name="nombre" placeholder="Nombre" />

                        </div>
						<div class="form-group">
                            <input class="form-control"  name="mail" placeholder="E-mail" />

                        </div>
                        <div class="form-group">
                            <input type="number" class="form-control"  name="telefono" placeholder="Teléfono" />

                        </div>
                        <div class="form-group">
                            <input class="form-control"  name="cif" placeholder="CIF" />

                        </div>
                        <div class="form-group">
                            <input class="form-control"  name="direccion" placeholder="Dirección" />

                        </div>
                        <div class="form-group">
                            <input type="number" class="form-control"  name="cap" placeholder="Capacidad" />

                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <p><input type=submit value="Crear" /></p>
                        
                    </div>


					</form>

                </div>


                <!-- /. ROW  -->

            </div>
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <%@ include file="../jspf/footer.jspf" %>


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="${prefix}/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${prefix}/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="${prefix}/js/custom.js"></script>


</body>
</html>