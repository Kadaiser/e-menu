	<%@ page pageEncoding="UTF-8"%>
		<!-- Header -->
  		<%@ include file="../jspf/header.jspf" %>
  		
  		
  	<!-- gray bg -->
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			
			<c:forEach var = "r" items="${restaurantes}">
			<div class="col-lg-3 col-md-3 col-sm-63">
				<div class="tm-home-box-2">
					<img src="${prefix}/img/restaurantes/r-<c:out value="${r.id}"/>.jpg" alt="image" class="img-responsive">
					
					<a href="restaurante?id=<c:out value="${r.id}"/>">
						<div class="tm-green-gradient-bg tm-city-price-container">
							<span><c:out value="${r.name}"/></span>
						</div>
					</a>
					
				</div>
			</div>
			</c:forEach>

		</div> <!-- Row -->

		<div class="section-margin-top">
			<div class="row">
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Our Restaurants</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
				</div>
			</div>
			<div class="row">
				<c:forEach var = "r" items="${restaurantes}">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">
						<img src="${prefix}/img/restaurantes/r-<c:out value="${r.id}"/>.jpg" alt="image" class="img-responsive">
						<!--
                         <img src="/restaurante/photo?id=${r.id}" height="180" width="240" alt="<c:out value="${p.id}"/>">
                         -->
						<h3><c:out value="${r.name}"/></h3>
						<p><c:out value="${r.phone}"/> - <c:out value="${r.address}"/></p>
						<div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="restaurante?id=<c:out value="${r.id}"/>" class="tm-home-box-2-link"><span class="tm-home-box-2-description">INFO</span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>		
					</div>
				</div>
				</c:forEach>

			</div>
			<div class="row">
				<div class="col-lg-12">
					<p class="home-description">The Top4 restaurant selection are based on the number of reservations per month</p>
				</div>
			</div>
		</div>
	</section>

	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Our Dishes</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
				</div>
				

			
				<c:forEach var = "p" items="${platos}">
				<div class="col-lg-6">
					<div class="tm-home-box-3">
						<div class="tm-home-box-3-img-container">
							<img src="${prefix}/img/platos/d-<c:out value="${p.id}"/>.jpg" alt="image" class="img-responsive" height="180" width="240">
							<!--
                         	<img src="/restaurante/photo?id=${r.id}" height="180" width="240" alt="<c:out value="${p.id}"/>">
                         	-->
						</div>
						<div class="tm-home-box-3-info">
							<p class="tm-home-box-3-description"><c:out value="${p.name}"/></p>
					        <div class="tm-home-box-2-container">
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<a href="restaurante?id=${p.location.id}" class="tm-home-box-2-link"><span class="tm-home-box-2-description box-3"><c:out value="${p.location.name}"/></span></a>
							<a href="#" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
						</div>
					</div>
			     </div>
			     </c:forEach>
			     
			</div>
		</div>
	</section>
	
	<%@ include file="../jspf/footer.jspf" %>
	
	<script type="text/javascript" src="${prefix}/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="${prefix}/js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="${prefix}/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="${prefix}/js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="${prefix}/js/jquery.flexslider-min.js"></script>
<!--
	<script src="js/froogaloop.js"></script>
	<script src="js/jquery.fitvid.js"></script>
-->
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

//	For images only
		    $('.flexslider').flexslider({
			    controlNav: false
		    });

	  	});
	</script>
	<script>
		$(document).ready(function(){
		    $('a[href^="home"]').addClass('active');
		});
	</script>
 </body>
</body>
</html>