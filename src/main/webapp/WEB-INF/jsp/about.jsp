	<%@ page pageEncoding="UTF-8"%>	
	<!-- Header -->
  		<%@ include file="../jspf/header.jspf" %>
	<!-- gray bg -->
        <section class="section-padding-bottom">
			<div class="container">
				<div class="about-section">
					<div class="row">
						<div class="tm-section-header section-margin-top">
							<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
							<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Quienes Somos</h2></div>
							<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
						</div>
					</div>
					<div class="row">
		
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="tm-about-box-1">
								<a href="#"><img src="${prefix}/img/f0.jpg" alt="img" class="tm-about-box-1-img"></a>
								<h3 class="tm-about-box-1-title">Adrián Díaz</h3>
								<p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
								<div class="gray-text">
									<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="tm-about-box-1">
								<a href="#"><img src="${prefix}/img/f1.jpg" alt="img" class="tm-about-box-1-img"></a>
								<h3 class="tm-about-box-1-title">Adrián Navazo </h3>
								<p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
								<div class="gray-text">
									<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="tm-about-box-1">
								<a href="#"><img src="${prefix}/img/f2.jpg" alt="img" class="tm-about-box-1-img"></a>
								<h3 class="tm-about-box-1-title">Jesús Vélez</h3>
								<p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
								<div class="gray-text">
									<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<div class="tm-about-box-1">
								<a href="#"><img src="${prefix}/img/f3.jpg" alt="img" class="tm-about-box-1-img"></a>
								<h3 class="tm-about-box-1-title">Diego Valbuena</h3>
								<p class="margin-bottom-15 gray-text">Proin gravida nibhvell aliquet. Aenean sollicitudin bibum auctor nisi elit.</p>
								<div class="gray-text">
									<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
									<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	<%@ include file="../jspf/footer.jspf" %>
	
	<script type="text/javascript" src="${prefix}/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="${prefix}/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
  	<script type="text/javascript" src="${prefix}/js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
  	<script type="text/javascript" src="${prefix}/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		$(function() {

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
		$(window).load(function(){
			// Flexsliders
		  	$('.flexslider.flexslider-banner').flexslider({
			    controlNav: false
		    });
		  	$('.flexslider').flexslider({
		    	animation: "slide",
		    	directionNav: false,
		    	slideshow: false
		  	});
		});
	</script>
	<script>
		$(document).ready(function(){
		    $('a[href^="about"]').addClass('active');
		});
	</script>
</body>
</html>
