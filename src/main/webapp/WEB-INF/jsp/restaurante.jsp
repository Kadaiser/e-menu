
<%@ page pageEncoding="UTF-8"%>
	<!-- Header -->
		<%@ include file="../jspf/header.jspf" %>
		
	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text"> ${restaurante.name} </span></h1>
					<p class="tm-banner-subtitle"> ${restaurante.address} </p>
					<sec:authorize access="hasRole('ROLE_USER')">
						<c:if test="${fav==true }">
							<a class="tm-banner-link">Siguiendo</a>
						</c:if>
						<c:if test="${fav==false }">
							<a href="/anyadirFavoritos?id=${restaurante.id}" class="tm-banner-link">Añadir a Favoritos</a>
						</c:if>
						</sec:authorize>
				</div>
		      <img src="${prefix}/img/banner-2.jpg" />
		    </li>
		  </ul>
		</div>
	</section>

	<!-- gray bg -->
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-6">
				<!-- Nav tabs -->


					<!-- Tab panes -->
					<div class="tab-content">
					    <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="reserva">
					    	<div class="tm-search-box effect2">
								<form action="#" method="post" class="reserva-search-form">
									<div class="tm-form-inner">
                    <div class="form-group">
                         <div class='input-group date' id='datetimepicker1'>
                             <input type='text' class="form-control" placeholder="Fecha de la Reserva" />
                             <span class="input-group-addon">
                                 <span class="fa fa-calendar"></span>
                             </span>
                         </div>
                     </div>
                     <div class="form-group">
                        <select class="form-control">
                         <option value="">-- Horario -- </option>
                         <option value="">13:00</option>
                         <option value="">14:00</option>
                         <option value="">15:00</option>
                         <option value="">16:00</option>
                         <option value="">17:00</option>
                         <option value="">20:00</option>
                         <option value="">21:00</option>
                         <option value="">22:00</option>
                         <option value="">23:00</option>
                         <option value="">24:00</option>
                         </select>
                     </div>




				            <div class="form-group">
			                <select class="form-control">
				            	 	<option value="">-- Asistentes -- </option>
				            	 	<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5p">5+</option>
											</select>
				            </div>

                    <div class="form-group">
                      <input class="form-control" placeholder="Añada algún comentario sobre la reserva" />
                      <p class="help-block">Puede añadir algún comentario sobre la reserva.</p>
                    </div>
									</div>
						      <div class="form-group tm-yellow-gradient-bg text-center">
						       	<button type="submit" name="submit" class="tm-yellow-btn">Reserva Ahora</button>
						       </div>
								  </form>
							</div>
					    </div>

					</div>
				</div>


	<div class="col-lg-4 col-md-4 col-sm-6">
        <div class="tm-tours-box-1">
          <img src="${prefix}/img/tours-03.jpg" alt="image" class="img-responsive">
          <div class="tm-tours-box-1-info">
            <div class="tm-tours-box-1-info-left">
              <p class="text-uppercase margin-bottom-20">Título Comida-Menu</p>
              <p class="gray-text">Tipo-Categoria</p>
            </div>
            <div class="tm-tours-box-1-info-right">
              <p class="gray-text tours-1-description">Lorem quis bibendum auctor, elit.</p>
            </div>
          </div>
          <div class="tm-tours-box-1-link">
            <div class="tm-tours-box-1-link-left">
            MENU ESTRELLA
            </div>
            <a href="#" class="tm-tours-box-1-link-right">
              *****
            </a>
          </div>
        </div>
		  </div>
      </div>

		<div class="section-margin-top">
			<div class="row">
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">NUESTROS PLATOS</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
				</div>
			</div>
			
			
			<div class="row">
				
				<c:forEach var="p" items="${platos}">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="${prefix}/img/tours-03.jpg" alt="image" class="img-responsive">
            			<div class="tm-tours-box-1-info">
              				<div class="tm-tours-box-1-info-left">
                				<p class="text-uppercase margin-bottom-20">${p.name}</p>
                				<p class="gray-text">Tipo-Categoria</p>
             				</div>
             				<div class="tm-tours-box-1-info-right">
                				<p class="gray-text tours-1-description">
									<p>Kcal: ${p.kcal}  //  Prot: ${p.prot } </p>
									<p>Carbs: ${p.fats} // Fats: ${p.fats} </p>
								</p>
              				</div>
           				</div>
            			<div class="tm-tours-box-1-link">
              				<div class="tm-tours-box-1-link-left">
             			 		Precio: ${p.precio }€
              				</div>
             				<!--  <a href="#" class="tm-tours-box-1-link-right">
               					*****
              				</a>-->
              				<form>
								  <p class="clasificacion tm-tours-box-1-link-right">
								    <input class="ra" id="radio1" type="radio" name="estrellas" value="5">
								    <label class="star" for="radio1">★</label> 
								   	<input class="ra" id="radio2" type="radio" name="estrellas" value="4">
								    <label class="star" for="radio2">★</label>
								    <input class="ra" id="radio3" type="radio" name="estrellas" value="3">
								    <label class="star" for="radio3">★</label>
								    <input class="ra" id="radio4" type="radio" name="estrellas" value="2">
								    <label class="star" for="radio4">★</label>
								    <input class="ra" id="radio5" type="radio" name="estrellas" value="1">
								    <label class="star" for="radio5">★</label>
								  </p>
</form>
            			</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>

	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Menus Especiales</h2></div>
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

							<img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
							<p>50</p>
						</div>
						<a href="#" class="tm-tours-box-2-link">Haz tu reserva</a>
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
							<img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
							<p>26</p>
						</div>
						<a href="#" class="tm-tours-box-2-link">Haz tu reserva</a>
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
							<img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
							<p>24</p>
						</div>
						<a href="#" class="tm-tours-box-2-link">Haz tu reserva</a>
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
							<img src="${prefix}/img/rating.png" alt="image" class="margin-bottom-5">
							<p>30</p>
						</div>
						<a href="#" class="tm-tours-box-2-link">Haz tu reserva</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<p class="home-description">Lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
					Morbi accumsaipsu m velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat.
					</p>
          <div class="row" style="margin-bottom:25px">
            <div class="col-lg-4 col-md-4 col-lg-offset-1 col-md-offset-1">

                <a href="#" target="_blank" class="btn btn-danger btn-lg btn-block">Guardar en favoritos</a>
            </div>
             <div class="col-lg-4 col-md-4 col-lg-offset-1 col-md-offset-1">

                  <a href="#" target="_blank" class="btn btn-danger btn-lg btn-block">Puntúa nuestro restaurante  *****</a>
              </div>
          </div>
				</div>
			</div>

      <div class="row">
				<div class="col-lg-12">
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d24288.134809764495!2d-3.719908!3d40.452764!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcf68cce94ec84cb8!2sUCM+%3A+Facultad+de+Inform%C3%A1tica!5e0!3m2!1ses!2ses!4v1490137344982" width="100%" height="372px" frameborder="0" style="border:0" allowfullscreen></iframe>

				</div>
			</div>
		</div>
	</section>
		<%@ include file="../jspf/footer.jspf" %>
	<script type="text/javascript" src="${prefix}/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="${prefix}/js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="${prefix}/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="${prefix}/js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="${prefix}/js/jquery.flexslider-min.js"></script>
   	<script type="text/javascript" src="${prefix}/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		// HTML document is loaded. DOM is ready.
		$(function() {

			$('#hotelCarTabs a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})

        	$('.date').datetimepicker({
            	format: 'MM/DD/YYYY'
            });
            $('.date-time').datetimepicker();

			// https://css-tricks.com/snippets/jquery/smooth-scrolling/
		  	$('a[href*=#]:not([href=#])').click(function() {
			    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			      if (target.length) {
			        $('html,body').animate({
			          scrollTop: target.offset().top
			        }, 1000);
			        return false;
			      }
			    }
		  	});
		});

		// Load Flexslider when everything is loaded.
		$(window).load(function() {
		    $('.flexslider').flexslider({
			    controlNav: false
		    });
	  	});
	</script>
 </body>
 </html>
