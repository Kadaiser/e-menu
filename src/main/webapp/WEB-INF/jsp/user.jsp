
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  	  		<!-- Nav Top -->
  	
  	<sec:authorize access="hasRole('ROLE_USER')">
  	<%@ 	include file="../jspf/navUser.jspf" %>
  	</sec:authorize>
  	<sec:authorize access="hasRole('ROLE_ADMIN')">
  	<%@ 	include file="../jspf/navTopAdmin.jspf" %>
  	</sec:authorize>
  	<sec:authorize access="hasRole('ROLE_RESTAURANT')">
  	<%@ include file="../jspf/navRest.jspf" %>
  	</sec:authorize>
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
                 <form action="actualizar-user" method="post">
                 	Email:
                 	<div class="input-group">
                 	<p> ${usuario.mail} </p>
                 		<!--<span class="input-group-addon">@</span>
                 		 <input type="text" class="form-control" id="mail" name="name" placeholder="email" value=${usuario.mail} /> -->
                 	</div>
                 	<br>
                 	Nick:
                 	<div class="input-group">
                 	<p> ${usuario.name} </p>
                 		<!-- <input type="text" class="form-control" id="mail" name="name" placeholder="Nick" value=${usuario.name} /> -->
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
                 	Fecha de Nacimiento:
                 	<div class="input-group">
                 		<input type="date" class="form-control" id="born_date" name="born_date" placeholder="born_date" value=${usuario.bornDate} />
                 	</div>
                 	<br>
                 	<div class="input-group">
                 		<input type="submit" class="btn" value="Guardar Cambios" />
                 	</div>
                 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                 </form>
                 	
                 	
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