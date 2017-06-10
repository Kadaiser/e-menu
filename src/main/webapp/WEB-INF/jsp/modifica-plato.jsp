<%@ page pageEncoding="UTF-8"%>
       <%@ include file="../jspf/navRest.jspf" %>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Modificar Plato</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr/>


                 <div class="row">

                      <div  class="col-md-6">
                        <div class="tm-home-box-1">
                            <ul class="nav nav-tabs tm-white-bg" role="tablist" id="hotelCarTabs">
                              <li role="presentation" class="active">
                                <a aria-controls="hotel" role="tab" data-toggle="tab">Modificar plato</a>
                              </li>
                           </ul>

                          <!-- Tab panes -->
                          <div class="tab-content">
                              <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="rest">
                                <div class="tm-search-box effect2">
                                <form action="modificaPlato" method="post" class="hotel-search-form">
                                  <div class="tm-form-inner">
                                  	<div class="form-group margin-bottom-0">
                                  		<input type="text" class="form-control" id="dishName" name="dishName" placeholder="Nombre" value="${plato.name}" required/>
                                	</div>
                                	<div class="form-group">
  										<input type="number" id="kcal" name="kcal" placeholder="Kcal"  value="${plato.kcal}" required>
  										<input type="number" id="prot" name="prot" placeholder="Prot"  value="${plato.prot}" required>
  										<input type="number" id="carbs" name="carbs" placeholder="Carbs"  value="${plato.carbs}" required>
  										<input type="number" id="fats" name="fats" placeholder="Fats" value="${plato.fats}" required>
									</div>
                                    <div class="form-group">
                                    	<p>Seleccione alérgenos: (Puede seleccionar varios pulsando Ctrl)</p>
                                    	<select multiple id="alers" name="alers" class="form-control" title="Alergias">
                                        	<c:forEach var="a" items="${alergenos}">
                                        		<c:set var="in" value="false" />
                                        		<c:forEach var="al" items="${plato.allergens}">
                                        			<c:if test= "${al.id==a.id && in eq false}"  >
                                        				<option value="${a.id}" selected><c:out value="${a.name}"/></option>
                                    					<c:set var="in" value="true" />
                                    				</c:if>
                                    				
                                    			</c:forEach>
                                    			<c:if test= "${al.id!=a.id && in eq false}" >
                                        				<option value="${a.id}"><c:out value="${a.name}"/></option>
                                    				</c:if>
                                    		</c:forEach>
                                      	</select>
                                    </div>
                                	<div class="form-group margin-bottom-0">
                                		<span class="input-group-addon"> €</span>
                                  		<input type="number" id="precio" name="precio" step="0.01" class="form-control" placeholder="0.00"  value="${plato.precio}" required/>
                                	</div>
                              </div>
                              <div class="form-group tm-yellow-gradient-bg text-center">
                                <button type="submit" name="submit" class="tm-yellow-btn">Modificar</button>
                              </div>
                              <input type="hidden" name="id" value="${plato.id}"/>
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
