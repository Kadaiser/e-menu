<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Holiday - Contact</title>
	<title>Insert title here</title>

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
	<link href="/static/css/font-awesome.min.css" rel="stylesheet">
	<link href="/static/css/bootstrap.min.css" rel="stylesheet">
	<link href="/static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<link href="/static/css/flexslider.css" rel="stylesheet">
	<link href="/static/css/templatemo-style.css" rel="stylesheet">

</head>
<body>
	<!-- Header -->
		<%@ include file="../jspf/header.jspf" %>
	<!-- white bg -->
	<section class="section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Contacta con nosotros</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
				</div>
			</div>
			<div class="row">
				<!-- contact form -->
				<form action="#" method="post" class="tm-contact-form">
					<div class="col-lg-6 col-md-6">
						<div id="google-map"></div>
						<div class="contact-social">
							<a href="#" class="tm-social-icon tm-social-facebook"><i class="fa fa-facebook"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-dribbble"><i class="fa fa-dribbble"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-twitter"><i class="fa fa-twitter"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-instagram"><i class="fa fa-instagram"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-google-plus"><i class="fa fa-google-plus"></i></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="form-group">
							<input type="text" id="contact_name" class="form-control" placeholder="Nombre" />
						</div>
						<div class="form-group">
							<input type="email" id="contact_email" class="form-control" placeholder="Email" />
						</div>
						<div class="form-group">
							<input type="text" id="contact_subject" class="form-control" placeholder="Asunto" />
						</div>
						<div class="form-group">
							<textarea id="contact_message" class="form-control" rows="6" placeholder="Mensaje"></textarea>
						</div>
						<div class="form-group">
							<button class="tm-submit-btn" type="submit" name="submit">Enviar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	<%@ include file="../jspf/footer.jspf" %>
	
	<script type="text/javascript" src="/static/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
	<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="/static/js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
	<script type="text/javascript" src="/static/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	
	<%@ include file="../jspf/googleMap.jspf" %>
</body>
</html>