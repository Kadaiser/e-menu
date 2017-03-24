<%@ page pageEncoding="UTF-8"%>
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
	
	<script type="text/javascript" src="${prefix}/js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
	<script type="text/javascript" src="${prefix}/js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="${prefix}/js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
	<script type="text/javascript" src="${prefix}/js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	
	<%@ include file="../jspf/googleMap.jspf" %>
</body>
</html>