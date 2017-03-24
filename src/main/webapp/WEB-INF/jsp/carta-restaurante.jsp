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


                 <div class="filtro row">

                      <div class="col-md-6">
                        <!-- Nav tabs -->
                                        <div class="tm-home-box-1">
                                            <ul class="nav nav-tabs tm-white-bg" role="tablist" id="hotelCarTabs">
                                              <li role="presentation" class="active">
                                                <a href="#rest" aria-controls="hotel" role="tab" data-toggle="tab">Crear plato</a>
                                              </li>
                                           </ul>

                                          <!-- Tab panes -->
                                          <div class="tab-content">
                                              <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="rest">
                                                <div class="tm-search-box effect2">
                                                <form action="#" method="post" class="hotel-search-form">
                                                  <div class="tm-form-inner">
                                                    <div class="form-group">
                                                      <select class="form-control">
                                                        <option value=""  disabled selected>-- Tipo -- </option>
                                                        <option value="Entrante">Entrante</option>
                                                        <option value="1">1 Plato</option>
                                                        <option value="2">2 Plato</option>
                                                        <option value="Postre">Postre</option>
                                                      </select>
                                                    </div>
                                                    <div class="form-group">
                                                      <select class="form-control">
                                                        <option value="" disabled selected>-- Menu -- </option>
                                                        <option value="ninguno">Ninguno</option>
                                                        <option value="ejecutivo">Menu Ejecutivo</option>
                                                        <option value="estudiante">Menu Estudiante</option>
                                                        <option value="dia">Menu del día</option>
                                                      </select>
                                                    </div>
                                                    <div class="form-group">
                                                      <select multiple class="form-control" title="Alergias">
                                                        <option value="gluten">Sin Gluten</option>
                                                        <option value="vegetariano">Vegetariano</option>
                                                        <option value="vegano">Vegano</option>
                                                        <option value="carnivoro">Carnivoro</option>
                                                      </select>
                                                    </div>
                                                <div class="form-group margin-bottom-0">
                                                  <input class="form-control" placeholder="Precio" />
                                                </div>
                                              </div>
                                              <div class="form-group tm-yellow-gradient-bg text-center">
                                                <button type="submit" name="submit" class="tm-yellow-btn">Crear</button>
                                              </div>
                                            </form>
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
                    <div class="col-md-4">
                      <div class="form-group">
                        <select class="form-control">
                          <option value=""  disabled selected>-- Tipo -- </option>
                          <option value="Entrante">Entrante</option>
                          <option value="1">1 Plato</option>
                          <option value="2">2 Plato</option>
                          <option value="Postre">Postre</option>
                        </select>
                          </div>

                    </div>

                 </div>

                  <div class="filtro row">
                     <div class="panel panel-default col-md-4 col-lg-4">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Plato</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <div class= "imag-rest">
                                            <img src="${prefix}/img/rest1.jpg">
                                            <p>Datos plato</p>
                                        </div>
                                        </br>
                                        <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                        </br>
                                        <button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                    </div>
                                </div>
                      </div>

                      <div class="panel panel-default col-md-4 col-lg-4">
                                 <div class="panel-heading">
                                     <h4 class="panel-title">
                                         <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Plato</a>
                                     </h4>
                                 </div>
                                 <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                     <div class="panel-body">
                                         <div class= "imag-rest">
                                             <img src="${prefix}/img/rest1.jpg">
                                             <p>Datos plato</p>
                                         </div>
                                         </br>
                                         <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                         </br>
                                         <button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                     </div>
                                 </div>
                       </div>
                       <div class="panel panel-default col-md-4 col-lg-4">
                                  <div class="panel-heading">
                                      <h4 class="panel-title">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Plato</a>
                                      </h4>
                                  </div>
                                  <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                      <div class="panel-body">
                                          <div class= "imag-rest">
                                              <img src="${prefix}/img/rest1.jpg">
                                              <p>Datos plato</p>
                                          </div>
                                          </br>
                                          <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                          </br>
                                          <button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                      </div>
                                  </div>
                        </div>


                <!-- <div class="filtro row"> -->
                   <div class="panel panel-default col-md-4 col-lg-4">
                              <div class="panel-heading">
                                  <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Plato</a>
                                  </h4>
                              </div>
                              <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                  <div class="panel-body">
                                      <div class= "imag-rest">
                                          <img src="${prefix}/img/rest1.jpg">
                                          <p>Datos plato</p>
                                      </div>
                                      </br>
                                      <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                      </br>
                                      <button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                  </div>
                              </div>
                    </div>

                    <div class="panel panel-default col-md-4 col-lg-4">
                               <div class="panel-heading">
                                   <h4 class="panel-title">
                                       <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Plato</a>
                                   </h4>
                               </div>
                               <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                   <div class="panel-body">
                                       <div class= "imag-rest">
                                           <img src="${prefix}/img/rest1.jpg">
                                           <p>Datos plato</p>
                                       </div>
                                       </br>
                                       <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                       </br>
                                       <button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                   </div>
                               </div>
                     </div>
                     <div class="panel panel-default col-md-4 col-lg-4">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Plato</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <div class= "imag-rest">
                                            <img src="${prefix}/img/rest1.jpg">
                                            <p>Datos plato</p>
                                        </div>
                                        </br>
                                        <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom:15px">Editar Plato</button>
                                        </br>
                                        <button type="submit" name="submit" class="btn btn-primary" >Borrar Plato</button>
                                    </div>
                                </div>
                      </div>
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


</body>
</html>
