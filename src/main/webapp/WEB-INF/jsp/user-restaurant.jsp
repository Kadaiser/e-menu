
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
                      <div class="tm-home-box-2">
                          <img src="${prefix}static/img/perfil.jpg" alt="image" class="img-responsive">
                          <a href="#">
                            <div class="tm-green-gradient-bg tm-city-price-container">
                              <span>Edita tu perfil</span>

                            </div>
                          </a>
                      </div>


                    </div>

                    <div  class="col-md-6">


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
            <img src="${prefix}static/img/index-03.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}static/img/index-04.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}static/img/index-05.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Datos Reserva</h3>
              <p>Datos</p>
            </div>
            <a href="#" class="tm-tours-box-2-link">Editar Reserva</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">
            <img src="${prefix}static/img/index-06.jpg" alt="image" class="img-responsive">
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
           <img src="${prefix}static/img/index-03.jpg" alt="image" class="img-responsive">
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
           <img src="${prefix}static/img/index-04.jpg" alt="image" class="img-responsive">
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
           <img src="${prefix}static/img/index-05.jpg" alt="image" class="img-responsive">
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
           <img src="${prefix}static/img/index-06.jpg" alt="image" class="img-responsive">
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
    <script src="${prefix}static/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${prefix}static/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="${prefix}static/js/custom.js"></script>


</body>
</html>
		