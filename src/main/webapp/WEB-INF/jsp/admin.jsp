<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrador</title>
	<!-- BOOTSTRAP STYLES-->
    <!-- <link href="css/bootstrap.css" rel="stylesheet" /> -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
     <!-- FONTAWESOME STYLES-->
    <link href="/static/css/font-awesome.css" rel="stylesheet" />
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
        <!-- CUSTOM STYLES-->
   <link href="/static/css/custom.css" rel="stylesheet" />
    <link href="/static/css/templatemo-style.css" rel="stylesheet">
     <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
</head>
<body>

  <!-- Header -->
  <div class="tm-header">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-4 col-sm-3 ">
            <img class="profile-img-card" src="img/logo.png">
          </div>
          <div class="col-lg-6 col-md-8 col-sm-9">
            <div class="mobile-menu-icon">
                  <i class="fa fa-bars"></i>
                </div>
            <nav class="tm-nav">
            <ul>
              <li><a href="home.html"  class="active">Home</a></li>
              <li><a href="about.html">About</a></li>
              <li><a href="contact.html" >Contact</a></li>
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" >Usuario <span class="caret"></span>
</a>
                <ul class="dropdown-menu">
                      <li><a href="#">Perfil</a></li>
                      <li><a href="#">Mis restaurantes</a></li>
                      <li><a href="#">Mis reservas</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Cerrar Sesión</a></li>
                  </ul>

              </li>


            </ul>
          </nav>

          </div>
        </div>


         </div>

    </div>

        <!-- /. NAV TOP  -->
        <nav  class="navbar-default navbar-side " role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">



                    <li class="active-link">
                        <a href="/static/index.html" ><i class="fa fa-desktop "></i>Panel Admin </a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>Estadísticas</a>
                    </li>

                    <li>
                        <a href="/static/ui.html"><i class="fa fa-table "></i>UI Elements </a>
                    </li>
                    <li>
                        <a href="/static/blank.html"><i class="fa fa-edit "></i>Blank Page  </a>
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                    </li>

                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div class="tm-home-section-111" id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>PANEL ADMINISTRADOR</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Bienvenido NOMBRE ! </strong>
                        </div>

                    </div>
                    </div>
                  <!-- /. ROW  USUARIOS -->
                  <div id="titulos-admin">Usuarios</div>

                  <div class="row text-center pad-top">

                       <!-- Users -->
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all.html" >
                              <i class="fa fa-users fa-5x"></i>
                              <h4>See Users</h4>
                            </a>
                        </div>

                      </div>

                    <!-- Add-User -->
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="add.html" >
                              <i class="fa fa-user-plus fa-5x"></i>
                              <h4>Add User</h4>
                            </a>
                        </div>

                      </div>

                    <!-- Ban-user -->
                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="blank.html" >
                              <i class="fa fa-user-times fa-5x"></i>
                              <h4>Ban</h4>
                            </a>
                        </div>

                      </div>


                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
                              <i class="fa fa-comments-o fa-5x"></i>
                              <h4>Support</h4>
                            </a>
                      </div>

                  </div>
              </div>


               <!-- /. ROW  RESTAURANTE -->
                 <div id="titulos-admin">Restaurantes</div>

                    <div class="row text-center pad-top">


                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="all.html" >
                              <i class="fa fa-cutlery fa-5x"></i>
                              <h4>Restaurants</h4>
                          </a>
                      </div>

                    </div>

                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                           <a href="add.html" >
                              <i class="fa fa-plus fa-5x"></i>
                              <h4>Add Rest</h4>
                            </a>
                        </div>

                    </div>

                    </div>

           <!-- /. ROW  GENERAL-->
             <div id="titulos-admin">General</div>
          <div class="row text-center pad-top">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-bar-chart fa-5x"></i>
                      <h4>Statistics</h4>
                      </a>
                      </div>


                  </div>

          </div>

                 <!-- /. ROW  -->
				  <div class="row">
                    <div class="col-lg-12 ">
					<br/>
                        <div class="alert alert-danger">
                             <strong>Want More Icons Free ? </strong> Checkout fontawesome website and use any icon <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">Click Here</a>.
                        </div>

                    </div>
          </div>
                  <!-- /. ROW  -->
                 <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
   <footer class="tm-black-bg">
    <div class="container">
      <div class="row">
        <p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name

                | Designed by <a rel="nofollow" href="http://www.templatemo.com" target="_parent">templatemo</a></p>
      </div>
    </div>
  </footer>


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="/static/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="/static/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="/static/js/custom.js"></script>


</body>
</html>