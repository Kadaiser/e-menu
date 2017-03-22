<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>eMenu - About</title>

  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="/static/css/font-awesome.min.css" rel="stylesheet">
  <link href="/static/css/bootstrap.min.css" rel="stylesheet">
  <link href="/static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="/static/css/flexslider.css" rel="stylesheet">
  <link href="/static/css/templatemo-style.css" rel="stylesheet">
</head>
<body class="tm-gray-bg">
		<!-- Header -->
  		<%@ include file="../jspf/header.jspf" %>
	<!-- gray bg -->

		<div class=" about-section">
			<div class="row">
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Quienes Somos</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
				</div>
			</div>
			<div class="row">

				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tm-about-box-1">
						<a href="#"><img src="/static/img/f0.jpg" alt="img" class="tm-about-box-1-img"></a>
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
						<a href="#"><img src="/static/img/f1.jpg" alt="img" class="tm-about-box-1-img"></a>
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
						<a href="#"><img src="/static/img/f2.jpg" alt="img" class="tm-about-box-1-img"></a>
						<h3 class="tm-about-box-1-title">Jesús Vélez</span></h3>
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
						<a href="#"><img src="/static/img/f3.jpg" alt="img" class="tm-about-box-1-img"></a>
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


	<%@ include file="../jspf/footer.jspf" %>
	
	<script type="text/javascript" src="/static/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
  	<script type="text/javascript" src="/static/js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
  	<script type="text/javascript" src="/static/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
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
</body>
</html>