<%@ page pageEncoding="UTF-8"%>
       <%@ include file="../jspf/navRest.jspf" %>
       
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Reservas</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr/>
                 <div class="filtro row">
                    <div class="col-md-4">

                      <div class="form-group">
                             <select class="form-control">
                              <option value="" disabled selected>-- Selecciona reservas -- </option>
                              <option value="activas">Reservas activas</option>
                        <option value="pendientes">Reservas pendientes</option>
                        <option value="Todos">Todos</option>

                      </select>
                          </div>

                    </div>

                 </div>


                     <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Reserva 1</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <div class= "imag-rest">
                                            <img src="${prefix}/img/rest1.jpg">
                                            <div>
                                                 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                            </div>
                                        </div>
                                        </br>
                                        <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Reserva</button>
                                        </br>
                                        <button type="submit" name="submit" class="btn btn-primary" >Cancelar Reserva</button>
                                    </div>
                                </div>
                      </div>

                      <div class="panel panel-default">
                                 <div class="panel-heading">
                                     <h4 class="panel-title">
                                         <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Reserva 2(pendiente)</a>
                                     </h4>
                                 </div>
                                 <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                     <div class="panel-body">
                                         <div class= "imag-rest">
                                             <img src="${prefix}/img/rest1.jpg">
                                             <div>
                                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                             </div>
                                         </div>
                                         </br>
                                         <button type="submit" name="submit" class="btn btn-success" style="margin-bottom:15px">Aceptar Reserva</button>
                                     </div>
                                 </div>
                       </div>

                       <div class="panel panel-default">
                                  <div class="panel-heading">
                                      <h4 class="panel-title">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Reserva 3</a>
                                      </h4>
                                  </div>
                                  <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                      <div class="panel-body">
                                          <div class= "imag-rest">
                                              <img src="${prefix}/img/rest1.jpg">
                                              <div>
                                                   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                                              </div>
                                          </div>
                                          </br>
                                          <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Reserva</button>
                                          </br>
                                          <button type="submit" name="submit" class="btn btn-primary" >Cancelar Reserva</button>
                                      </div>
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
    <script src="${prefix}/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${prefix}/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="${prefix}/js/custom.js"></script>

	<script>
		$(document).ready(function(){
		    $('a[href^="reservas-restaurante"]').addClass('active-link');
		});
	</script>

</body>
</html>
