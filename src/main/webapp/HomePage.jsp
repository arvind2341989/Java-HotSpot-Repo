<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>HomePage</title>
		
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/javahotspot.css">
	</head>
	<body>
		<!-- HEADER NAVIGATION BAR START -->
		<%@ include file="NavigationBar.jsp" %>
		<!-- HEADER NAVIGATION BAR END -->
		
		<!-- MODALS START -->
		<%@ include file="Modals.jsp" %>
		<!-- MODALS END -->
		 
		<!-- JUMBOTRON START -->
		<div class="container">
			<div class="jumbotron">
  				<h1>Java HotSpot</h1>
  				<p>One-Stop Portal to learn Java & Java-Based Technologies.</p>
			</div>
		</div>
		<!-- JUMBOTRON END -->
		
		<!-- CONTENT START -->
		<div class="container">
			<div class="row">
	  			<div class="col-xs-6 col-md-3">
	    			<div class="thumbnail">
	      				<img src="resources/images/239X200.svg" class="img-responsive" style="width: 100%"/>
	      				<div class="caption">
	        				<h3>JSE</h3>
	        				<p>Java Platform, Standard Edition aka Java aka Core Java.</p>
	        				<p><a href="javatutorial/index" class="btn btn-primary btn-sm" role="button">Tutorial</a></p>
	      				</div>
	    			</div>
	  			</div>
	  			<div class="col-xs-6 col-md-3">
	    			<div class="thumbnail">
	      				<img src="resources/images/239X200.svg" class="img-responsive" style="width: 100%"/>
	      				<div class="caption">
	        				<h3>Java EE</h3>
	        				<p>Java Platform, Enterprise Edition aka Advanced Java.</p>
	        				<p><a href="javaeetutorial/index" class="btn btn-primary btn-sm" role="button">Tutorial</a></p>
	      				</div>
	    			</div>
	  			</div>
	  			<div class="col-xs-6 col-md-3">
	    			<div class="thumbnail">
	      				<img src="resources/images/239X200.svg" class="img-responsive" style="width: 100%"/>
	      				<div class="caption">
	        				<h3>Spring</h3>
	        				<p>Open Source Java-Based Framework from Pivotal.</p>
	        				<p><a href="#" class="btn btn-primary btn-sm" role="button">Tutorial</a></p>
	      				</div>
	    			</div>
	  			</div>
	  			<div class="col-xs-6 col-md-3">
	    			<div class="thumbnail">
	      				<img src="resources/images/239X200.svg" class="img-responsive" style="width: 100%"/>
	      				<div class="caption">
	        				<h3>Hibernate</h3>
	        				<p>Open Source Java-Based Framework from JBoss.</p>
	        				<p><a href="#" class="btn btn-primary btn-sm" role="button">Tutorial</a></p>
	      				</div>
	    			</div>
	  			</div>
			</div>
		</div>
		<!-- CONTENT END -->
		
		<!-- FOOTER START -->
		<%@ include file="Footer.jsp" %>
		<!-- FOOTER END -->
		
		<script src="resources/js/jquery-3.3.1.js"></script>
    	<script src="resources/js/bootstrap.js"></script>
		<script src="resources/js/javahotspot.js"></script>
	</body>
</html>