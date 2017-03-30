
<%@ page pageEncoding="UTF-8"%>
  	  		<!-- Nav Top -->
  	<%@ include file="../jspf/navUser.jspf" %>

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
                          <img src="${prefix}/img/perfil.jpg" alt="image" class="img-responsive">
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
                                <a href="#rest" aria-controls="hotel" role="tab" data-toggle="tab">Busca tu Restaurante</a>
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
                              <option value="">-- Selecciona Ciudad -- </option>
                              <option value="Madrid">Madrid</option>
                        <option value="Barcelona">Barcelona</option>
                        <option value="Valencia">Valencia</option>

                      </select>
                          </div>
                          <div class="form-group">
                             <select class="form-control">
                              <option value="">-- Selecciona Localidad -- </option>
                              <option value="Madrid">Loca1</option>
                        <option value="Barcelona">Loca2</option>
                        <option value="Valencia">Loca3</option>

                      </select>
                          </div>
                          <div class="form-group">
                              <div class='input-group date' id='datetimepicker1'>
                                  <input type='text' class="form-control" placeholder="Día de asistencia" />
                                  <span class="input-group-addon">
                                      <span class="fa fa-calendar"></span>
                                  </span>
                              </div>
                          </div>

                          <div class="form-group margin-bottom-0">
                              <select class="form-control">
                              <option value="">-- Asistentes -- </option>
                              <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5p">5+</option>
                      </select>
                          </div>
                  </div>
                        <div class="form-group tm-yellow-gradient-bg text-center">
                          <button type="submit" name="submit" class="tm-yellow-btn">Buscar</button>
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
          <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title1">Recomendaciones Especiales</h2></div>
          <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>  
        </div>        
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">            
            <img src="${prefix}/img/index-03.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Proin Gravida Nibhvel Lorem Quis Bind</h3>
              <img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
              <p>28 March 2084</p>  
            </div>            
            <a href="#" class="tm-tours-box-2-link">Book Now</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">            
            <img src="${prefix}/img/index-04.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Proin Gravida Nibhvel Lorem Quis Bind</h3>
              <img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
              <p>26 March 2084</p>  
            </div>            
            <a href="#" class="tm-tours-box-2-link">Book Now</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">            
            <img src="${prefix}/img/index-05.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Proin Gravida Nibhvel Lorem Quis Bind</h3>
              <img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
              <p>24 March 2084</p>  
            </div>            
            <a href="#" class="tm-tours-box-2-link">Book Now</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="tm-tours-box-2">            
            <img src="${prefix}/img/index-06.jpg" alt="image" class="img-responsive">
            <div class="tm-tours-box-2-info">
              <h3 class="margin-bottom-15">Proin Gravida Nibhvel Lorem Quis Bind</h3>
              <img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
              <p>22 March 2084</p>  
            </div>            
            <a href="#" class="tm-tours-box-2-link">Book Now</a>
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
		    $('a[href^="user"]').addClass('active-link');
		});
	</script>

</body>
</html>