<%@ page pageEncoding="UTF-8"%>
           		<!-- Nav Top -->
  	<%@ include file="../jspf/navUser.jspf" %>

        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Mis Restaurantes</h2>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr/>
                 <c:forEach var="r" items="${usuario.favoriteRestaurants}">
                 <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"> <c:out value="${r.name}"/> </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        <div class= "imag-rest">
                                            <img src="${prefix}/img/restaurantes/r-<c:out value="${r.id}"/>.jpg" alt="image" class="img-responsive">
                                        </div>

                                        <div>
                                             Ubicacion:<c:out value="${r.address}"/>
                                        </div>  


                                    </div>
                                </div>
                      </div>
					</c:forEach>
                
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
		    $('a[href^="mis-rest"]').addClass('active-link');
		});
	</script>


</body>
</html>
