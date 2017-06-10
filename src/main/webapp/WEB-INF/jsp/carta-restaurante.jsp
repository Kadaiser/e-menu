<%@ page pageEncoding="UTF-8"%>
       <%@ include file="../jspf/navRest.jspf" %>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Carta</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr/>


                 <div class="row">

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
                                        		<option value="${a.id}">${a.name}</option>
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
                      <div class="col-md-6">



                      </div>

                 </div>
          <div class="filtro row">
               
                  <div class="filtro row">
                     
                     <c:forEach var="p" items="${platos}">
                     <div class="panel panel-default col-md-4 col-lg-4">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">${p.name}</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <div class= "imag-rest">
                                            <img src="${prefix}/img/rest1.jpg">
                                            <p> Kcal: ${p.kcal}  </p>
                                            <p> Prot: ${p.prot}  </p>
                                            <p> Carbs: ${p.carbs}  </p>
                                            <p> Fats: ${p.fats}  </p>
                                            <p> Precio: ${p.precio} € </p>
                                        </div>
                                        </br>
                                        <form action="/modifica-plato" method="get">
                                            <input type="hidden" name="id" value="${p.id}"/>
                                        	<button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                        </form>
                                        </br>
                                         <form action="/borrarPlato?id=${p.id}" method="post">
                   							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        	<button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                    	</form>
                                    </div>
                                </div>
                      </div>
					</c:forEach>
              <!-- </div> -->

    </div>
             <!-- /. PAGE INNER  -->
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
	<script>
		$(document).ready(function(){
		    $('a[href^="carta-restaurante"]').addClass('active-link');
		});
	</script>

</body>
</html>
