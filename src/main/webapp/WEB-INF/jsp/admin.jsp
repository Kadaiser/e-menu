<%@ page pageEncoding="UTF-8"%>
<!-- /. NAV TOP  -->
	<%@ include file="../jspf/navTopAdmin.jspf" %>	

        <!-- /. NAV SIDE  -->
        <div  id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>PANEL ADMINISTRADOR</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Bienvenido  <c:out value="${usuario.name}"/> </strong>
                        </div>

                    </div>
                </div>
                  <!-- /. ROW  USUARIOS -->
                  <div id="titulos-admin">Usuarios</div>

                  <div class="row text-center pad-top">

                       <!-- Users -->
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all?what=users" >
                              <i class="fa fa-users fa-5x"></i>
                              <h4>See Users</h4>
                            </a>
                        </div>

                      </div>

                    <!-- Add-User -->
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all?what=users" >
                              <i class="fa fa-user-plus fa-5x"></i>
                              <h4>Add User</h4>
                            </a>
                        </div>

                      </div>

                    <!-- Ban-user -->
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all?what=banned" >
                              <i class="fa fa-user-times fa-5x"></i>
                              <h4>Ban</h4>
                            </a>
                        </div>

                      </div>


                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank" >
                              <i class="fa fa-comments-o fa-5x"></i>
                              <h4>Support</h4>
                            </a>
                      </div>

                  </div>
              </div>


               <!-- /. ROW  RESTAURANTE -->
                 <div id="titulos-admin">Restaurantes</div>

                    <div class="row text-center pad-top">


                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all?what=restaurants" >
                              <i class="fa fa-cutlery fa-5x"></i>
                              <h4>Restaurants</h4>
                          </a>
                      </div>
                      
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all?what=comments" >
                              <i class="fa fa-plus fa-5x"></i>
                              <h4>Comments</h4>
                            </a>
                        </div>

                    </div>

                    </div>

                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="addRes" >
                              <i class="fa fa-plus fa-5x"></i>
                              <h4>Add Rest</h4>
                            </a>
                        </div>

                    </div>

                </div>

           <!-- /. ROW  GENERAL-->
             <div id="titulos-admin">General</div>
          <div class="row text-center pad-top">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank" >
 <i class="fa fa-bar-chart fa-5x"></i>
                      <h4>Statistics</h4>
                      </a>
                      </div>


                  </div>

          </div>
                 <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
        
   	<%@ include file="../jspf/footer.jspf" %>


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="${prefix}/fragments/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${prefix}/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="${prefix}/js/custom.js"></script>


</body>
</html>