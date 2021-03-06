<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Java EE Tutorial - HomePage</title>
		
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/javahotspot.css">
		<link rel="stylesheet" href="resources/fontawesome-free-5.0.9/web-fonts-with-css/css/fontawesome-all.css">
	</head>
	<body>
		<!-- HEADER NAVIGATION BAR START -->
		<%@ include file="../NavigationBar.jsp" %>
		<!-- HEADER NAVIGATION BAR END -->
		
		<!-- MODALS START -->
		<%@ include file="../Modals.jsp" %>
		<!-- MODALS END -->
		 
		<!-- JUMBOTRON START -->
		<div class="container">
			<div class="jumbotron">
  				<h1>Java EE Tutorial</h1>
			</div>
		</div>
		<!-- JUMBOTRON END -->
		
		<!-- CONTENT START -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-md-4">
					<%@ include file="NavigationBar.jsp" %>
				</div>
  				<div class="col-xs-12 col-md-8">
  					<div class="panel panel-primary">
					 	<div class="panel-heading">
					    	<h3 class="panel-title">Introduction to Java EE</h3>
					  	</div>
					  	<div class="panel-body">
					 		<ul class="nav nav-tabs" role="tablist">
						    	<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Explanation</a></li>
						    	<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Examples</a></li>
						  	</ul>
						  	<div class="tab-content">
						    	<div role="tabpanel" class="tab-pane active" id="home">
						    		<br/>
						    		<div class="alert alert-info" role="alert"><i class="fas fa-cog fa-spin"></i> JEE aka Java EE aka Java Platform, Enterprise Edition</div>
									<div class="alert alert-info" role="alert"><i class="fas fa-cog fa-spin"></i> Technically Speaking, a Method is a collection of java statements which are meant to be executed in order to perform an operation.</div>
						    	</div>
						    	<div role="tabpanel" class="tab-pane" id="profile">bbbb</div>
						  	</div>
					    
					  	</div>
					</div>
  				</div>
			</div>
		</div>
		<!-- CONTENT END -->
		
		<!-- FOOTER START -->
		<%@ include file="../Footer.jsp" %>
		<!-- FOOTER END -->
		
		<script src="resources/js/jquery-3.3.1.js"></script>
    	<script src="resources/js/bootstrap.js"></script>
		<script src="resources/js/javahotspot.js"></script>
	</body>
</html>