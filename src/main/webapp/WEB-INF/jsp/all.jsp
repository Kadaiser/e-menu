	<%@ page pageEncoding="UTF-8"%>

        <!-- /. NAV TOP  -->
	<%@ include file="../jspf/navTopAdmin.jspf" %>	
	<script type="text/javascript">
//Funcion ajax encargada de rellenar la lista con la busqueda
	$(document).ready(function(){
		$("#search").keyup(function(){
			var texto=$(this).val();
			
		});
	}); 

</script>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
          <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Search User</h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <h5>Search user</h5>
                       <div class="input-group">
                            <c:if test="${usuarios[0].roles=='RESTAURANT'}" >
                                <form action="buscarUser" method="get">
                            		<input type="hidden" id="what" name="what" value="res"/>
                            		<input type="text" class="form-control" id="search" name="search" placeholder="Username" />
                                  	<input type="submit" id="boton-buscar" name="boton-buscar" value="Buscar">		
                            	</form>
                            </c:if>
                            <c:if test="${usuarios[0].roles=='USER'}">
                                <form action="buscarUser" method="get">
                            		<input type="hidden" id="what" name="what" value="user"/>
                            		<input type="text" class="form-control" id="search" name="search" placeholder="Username" />
                                  	<input type="submit" id="boton-buscar" name="boton-buscar" value="Buscar">		
                            	</form>
                            </c:if>
                       		
                       </div>
                    </div>

                </div>
                <!-- /. ROW  -->
                <hr>
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h5>Table  Sample</h5>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Email</th>
                                        <c:if test="${usuarios[0].roles!='RESTAURANT'}">
                                        		<th>Nacimiento</th>
                                        </c:if>
                                        <th>Rol</th>
                                    </tr>
                                </thead>
                                <tbody>
                               		<c:forEach var="u" items="${usuarios}">
                                		<tr>
                                        	<td> <c:out value="${u.id}"/> </td>
                                        	<td> <c:out value="${u.name}"/> </td>
                                        	<td> <c:out value="${u.mail}"/> </td>
                                        	<c:if test="${u.roles!='RESTAURANT'}">
                                        		<td> <c:out value="${u.bornDate}"/> </td>
                                        	</c:if>
                                        	<td> <c:out value="${u.roles}"/> </td>
                                    	</tr>
                                	</c:forEach>
                                    
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>





            </div>
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


</body>
</html>