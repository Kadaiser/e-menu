	<!-- Header -->
		<%@ include file="../jspf/header.jspf" %>
		
        <!-- /. NAV TOP  -->
	<%@ include file="../jspf/navTopAdmin.jspf" %>	
	
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
          <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>ADD USER</h2>
                    </div>
                </div>
               <!-- /. ROW  -->
                <hr>
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                            <input class="form-control"  placeholder="Nombre" />

                        </div>

                        <div class="form-group">
                            <input class="form-control"  placeholder="Apellidos" />

                        </div>

                        <div class="form-group">
                            <input class="form-control"  placeholder="E-mail" />

                        </div>

                        <div class="form-group">
                            <input class="form-control"  placeholder="Username" />

                        </div>

                        <div class="form-group">
                            <input type="password" class="form-control"  placeholder="Pass" />

                        </div>

                        <div class="form-group">
                            <input type="password" class="form-control"  placeholder="Confirm Pass" />

                        </div>


                    </div>




                </div>
                <label class="radio-inline"><input type="radio" name="optradio">Administrador</label>
                <label class="radio-inline"><input type="radio" name="optradio">Usuario</label>
                <label class="radio-inline"><input type="radio" name="optradio">Restaurante</label>



                <!-- /. ROW  -->

            </div>
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <%@ include file="../jspf/footer.jspf" %>


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="${prefix}resources/fragments/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${prefix}resources/fragments/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="${prefix}resources/fragments/js/custom.js"></script>


</body>
</html>