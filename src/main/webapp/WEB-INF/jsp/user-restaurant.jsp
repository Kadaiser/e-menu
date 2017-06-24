<%@ page pageEncoding="UTF-8"%>
       <%@ include file="../jspf/navRest.jspf" %>
       
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Perfil</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr/>
                 <div class="row">
                    <div class="col-md-6">
                    <form action="actualizar-res" method="post">
                 		Email:
                 		<div class="input-group">
                 			<p> <c:out value="${usuario.mail}"/> </p>
                 		</div>
                 		<br>
                 		Nombre Restaurante:
                 		<div class="input-group">
                 			<p> <c:out value="${usuario.name}"/> </p>
                 		</div>
                 		<br>
                 		CIF:
                 		<div class="input-group">
                 			<p> <c:out value="${usuario.cif}"/> </p>
                 		</div>
                 		<br>
                 		Teléfono:
                 		<div class="input-group">
                 			<input type="number" class="form-control" id="phone" min="111111111" max="999999999" name="phone" placeholder="teléfono" value="${usuario.phone}" />
                 		</div>
                 		<br>
                 		Dirección:
                 		<div class="input-group">
                 			<input type="text" class="form-control" id="addr" name="addr" placeholder="dirección" value="${usuario.address}" />
                 		</div>
                 		<br>
                 		Capacidad:
                 		<div class="input-group">
                 			<input type="number" class="form-control" id="cap" name="cap" placeholder="capacidad" value="${usuario.capacity}" />
                 		</div>
                 		<br>
                 		Contraseña Actual:
                 		<div class="input-group">
                 			<input type="text" class="form-control" id="pass" name="pass" placeholder="pass"/>
                 		</div>
                 		<br>
                 		Contraseña Nueva:
                 		<div class="input-group">
                 			<input type="text" class="form-control" id="pass_new" name="pass_new" placeholder="new pass"/>
                 		</div>
                 		<br>
                 		<div class="input-group">
                 			<input type="submit" class="btn" value="Guardar Cambios" />
                 		</div>
                 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <br>
                 <form action="/restUser/${usuario.id}" method="post" enctype="multipart/form-data">
                 	<div class="input-group">
                    Subir foto de usuario:
                    	
                    	<input type="file" name="photo" >
                    	<br>
                    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    	<input type="submit" class="btn" value="Subir Imagen" />
                    </div> 
                    <br> 
                 </form>
                </div> 
				<div  class="col-md-6">
                        <div class="tm-home-box-1">
                            <ul class="nav nav-tabs tm-white-bg" role="tablist" id="hotelCarTabs">
                              <li role="presentation" class="active">
                                <a aria-controls="hotel" role="tab" data-toggle="tab">Crear plato</a>
                              </li>
                           </ul>

                          <!-- Tab panes -->
                          <div class="tab-content">
                              <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="rest">
                                <div class="tm-search-box effect2">
                                <form action="crearPlato" method="post" class="hotel-search-form">
                                  <div class="tm-form-inner">
                                  	<div class="form-group margin-bottom-0">
                                  		<input type="text" class="form-control" id="dishName" name="dishName" placeholder="Nombre" required/>
                                	</div>
                                	<div class="form-group">
  										<input type="number" id="kcal" name="kcal" placeholder="Kcal"  required>
  										<input type="number" id="prot" name="prot" placeholder="Prot"  required>
  										<input type="number" id="carbs" name="carbs" placeholder="Carbs"  required>
  										<input type="number" id="fats" name="fats" placeholder="Fats"  required>
									</div>
                                    <div class="form-group">
                                    <p>Seleccione alérgenos: (Puede seleccionar varios pulsando Ctrl)</p>
                                     <select multiple id="alers" name="alers" class="form-control" title="Alergias">
                                        	<c:forEach var="a" items="${alergenos}">
                                        		<option value="${a.id}"><c:out value="${a.name}"/></option>
                                    		</c:forEach>
                                      </select>
                                    </div>
                                <div class="form-group margin-bottom-0">
                                	<span class="input-group-addon">€</span>
                                  <input type="number" id="precio" name="precio" step="0.01" class="form-control" placeholder="0.00" required/>
                                </div>
                              </div>
                              <div class="form-group tm-yellow-gradient-bg text-center">
                                <button type="submit" name="submit" class="tm-yellow-btn">Crear</button>
                              </div>
                              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form>
                          </div>
                        </div>

                      </div>
                </div>
      </div>
    </div>

                 <!-- /. ROW  -->
       <div class="row">
                <!-- white bg -->
        <div class="tm-section-header section-margin-top">
          <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
          <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title1">Reservas</h2></div>
          <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}/img/index-03.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}/img/index-04.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}/img/index-05.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}/img/index-06.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
      </div>


      <div class="row">
        <div class="col-lg-12">
          <p class="home-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
          Morbi accumsaipsu m velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat.
          </p>
        </div>
      </div>

      <div class="row">
               <!-- white bg -->
       <div class="tm-section-header section-margin-top">
         <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
         <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title1">Menus</h2></div>
         <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
       </div>
     </div>
     <div class="row">
       <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
         <div class="tm-tours-box-2">
           <img src="${prefix}/img/index-03.jpg" alt="image" class="img-responsive">
           <div class="tm-tours-box-2-info">
             <h3 class="margin-bottom-15">Menu Ejecutivo</h3>
             <div class="panel-group" id="accordion">
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">Primer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                         <div class="panel-body">
                             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Segundo Plato</a>
                         </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                         <div class="panel-body">
                           <ul style=" list-style-type: none;">
                             <li>Plato 1</li>
                             <li>Plato 2</li>
                             <li>Plato 3</li>
                           </ul>
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Tercer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse collapse">


                             <div class="panel-body">
                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                             </div>
                     </div>
                 </div>
             </div>

           </div>
           <a href="#" class="tm-tours-box-2-link">Editar menu</a>
         </div>
       </div>
       <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
         <div class="tm-tours-box-2">
           <img src="${prefix}/img/index-04.jpg" alt="image" class="img-responsive">
           <div class="tm-tours-box-2-info">
             <h3 class="margin-bottom-15">Menu Estudiante</h3>
             <div class="panel-group" id="accordion">
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">Primer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                         <div class="panel-body">
                             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Segundo Plato</a>
                         </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse" style="height: auto;">
                         <div class="panel-body">
                           <ul style=" list-style-type: none;">
                             <li>Plato 1</li>
                             <li>Plato 2</li>
                             <li>Plato 3</li>
                           </ul>
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Tercer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse in ">


                             <div class="panel-body">
                               <ul style=" list-style-type: none;">
                                 <li>Plato 1</li>
                                 <li>Plato 2</li>
                                 <li>Plato 3</li>
                               </ul>
                             </div>
                     </div>
                 </div>
             </div>

           </div>
           <a href="#" class="tm-tours-box-2-link">Editar Menu</a>
         </div>
       </div>
       <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
         <div class="tm-tours-box-2">
           <img src="${prefix}/img/index-05.jpg" alt="image" class="img-responsive">
           <div class="tm-tours-box-2-info">
             <h3 class="margin-bottom-15">Menu Ejecutivo</h3>
             <div class="panel-group" id="accordion">
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">Primer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                         <div class="panel-body">
                             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Segundo Plato</a>
                         </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse" style="height: auto;">
                         <div class="panel-body">
                           <ul style=" list-style-type: none;">
                             <li>Plato 1</li>
                             <li>Plato 2</li>
                             <li>Plato 3</li>
                           </ul>
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Tercer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse in ">


                             <div class="panel-body">
                               <ul style=" list-style-type: none;">
                                 <li>Plato 1</li>
                                 <li>Plato 2</li>
                                 <li>Plato 3</li>
                               </ul>
                             </div>
                     </div>
                 </div>
             </div>

           </div>
           <a href="#" class="tm-tours-box-2-link">Editar Menu</a>
         </div>
       </div>
       <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
         <div class="tm-tours-box-2">
           <img src="${prefix}/img/index-06.jpg" alt="image" class="img-responsive">
           <div class="tm-tours-box-2-info">
             <h3 class="margin-bottom-15">Menu Ejecutivo</h3>
             <div class="panel-group" id="accordion">
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">Primer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                         <div class="panel-body">
                             Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Segundo Plato</a>
                         </h4>
                     </div>
                     <div id="collapseTwo" class="panel-collapse collapse" style="height: auto;">
                         <div class="panel-body">
                           <ul style=" list-style-type: none;">
                             <li>Plato 1</li>
                             <li>Plato 2</li>
                             <li>Plato 3</li>
                           </ul>
                         </div>
                     </div>
                 </div>
                 <div class="panel panel-default">
                     <div class="panel-heading">
                         <h4 class="panel-title">
                             <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Tercer Plato</a>
                         </h4>
                     </div>
                     <div id="collapseThree" class="panel-collapse in ">


                             <div class="panel-body">
                               <ul style=" list-style-type: none;">
                                 <li>Plato 1</li>
                                 <li>Plato 2</li>
                                 <li>Plato 3</li>
                               </ul>
                             </div>
                     </div>
                 </div>
             </div>

           </div>
           <a href="#" class="tm-tours-box-2-link">Editar menu</a>
         </div>
       </div>
     </div>

    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     	<%@ include file="../jspf/footer.jspf" %>


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="${prefix}/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${prefix}/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="${prefix}/js/custom.js"></script>

	<script>
		$(document).ready(function(){
		    $('a[href^="user-restaurant"]').addClass('active-link');
		});
	</script>
</body>
</html>
		