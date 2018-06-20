<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Java EE Tutorial - Session Management - Part 1</title>
		
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/javahotspot.css">
		<link rel="stylesheet" href="resources/fontawesome-free-5.0.9/web-fonts-with-css/css/fontawesome-all.css">
		<link rel="stylesheet" href="resources/prism/prism.css">
		
		
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
					<jsp:include page="NavigationBar.jsp"/>
				</div>
  				<div class="col-xs-12 col-md-8">
  					<div class="panel panel-primary">
					 	<div class="panel-heading">
					    	<h3 class="panel-title">Session Management - Part 1</h3>
					  	</div>
					  	<div class="panel-body">
					 		<ul class="nav nav-tabs" role="tablist">
						    	<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Explanation</a></li>
						    	<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Examples</a></li>
						  	</ul>
						  	<div class="tab-content">
						    	<div role="tabpanel" class="tab-pane active" id="home">
						    		<br/>
						    		<blockquote><p>What is a Session?</p></blockquote>
						    		<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> A Session refers to a particular time period spent by a client on the server. For e.g.</div>
						    		<blockquote><p>Why Managing Session?</p></blockquote>
									<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> In a Web Application, we need to manage/maintain the Session for a Client in order keep track of its data & activities.</div>
									<blockquote><p>How to Manage Session?</p></blockquote>
									<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> There are 4 Session Management Techniques available: 
										<ul>
											<li>Http Session</li>
											<li>Cookie</li>
											<li>URL Rewriting</li>
											<li>Hidden Form Field</li>
										</ul>
									</div>
									<blockquote><p>Http Session</p></blockquote>
									<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> An HttpSession is a virtual area created on the server for a client.</div>
									<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> An HttpSession is created on 1st request for every single client.</div>
									<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> An HttpSession is used by adding/storing data of the client which needs to be tracked.</div>
									<div class="alert alert-info" role="alert"><i class="fas fa-hand-point-right"></i> JEE API provides an interface named HttpSession available in javax.servlet.http package whcih is used to represent & manipulate HttpSession from Web Components.</div>
						    	</div>
						    	<div role="tabpanel" class="tab-pane" id="profile">
						    	<br/>
						    	<h5>HomePage.html</h5>
						    	<pre><code class="language-html"><!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>
		<a href="LoginForm.html">Login</a>
	</h2>
</body>
</html>--></code></pre>

<h5>LoginForm.html</h5>
						    	<pre><code class="language-html"><!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>
		<form action="LoginProcess.jsp" method="post">
			Email<input type="text" name="f1"/><br/>
			Password<input type="password" name="f2"/><br/>
			<input type="submit" value="Login">
		</form>
	</h2>
</body>
</html>--></code></pre>
						    	</div>
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
		<script src="resources/prism/prism.js"></script>
	</body>
</html>