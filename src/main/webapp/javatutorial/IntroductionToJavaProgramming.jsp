<!DOCTYPE html>
<%@ page import="in.javahotspot.entity.User" %>
<%@ page import="java.util.Date" %>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<title>Java Tutorial - Introduction To Java Programming</title>
		
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/bootstrap-reboot.css">
		<link rel="stylesheet" href="resources/css/fontawesome-all.css">
		<link rel="stylesheet" href="resources/css/javahotspot.css">
	</head>
	<body>
		<!-- HEADER NAVIGATION BAR START -->
		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>
  			<a class="navbar-brand" href="">Java HotSpot</a>

  			<div class="collapse navbar-collapse" id="navbarToggler">
    			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			    	<li class="nav-item active">
			        	<a class="nav-link" href="index"><i class="fa fa-home"></i> <span class="sr-only">(current)</span></a>
			      	</li>
      				<li class="nav-item">
        				<a class="nav-link" href="javatutorial">JSE</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="#">JEE</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="#">Spring</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="#">Hibernate</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="codemarathon">Code Marathon</a>
      				</li>
    			</ul>
    			<% 
    				User user = (User)session.getAttribute("USERDATA");
    				if(user == null) {
    			%>
    			<form class="form-inline my-2 my-lg-0">
      				<button class="btn btn-outline-light btn-sm my-2 my-sm-0" type="button" style="margin-right: 5px;" data-toggle="modal" data-target="#loginModal">Login</button>
      				<button class="btn btn-outline-light btn-sm my-2 my-sm-0" type="button" data-toggle="modal" data-target="#registerModal">Register</button>
    			</form>
    			<% 
    				} else {
    			%>
    			<span class="navbar-text">
      				Welcome <%= user.getFirstName() + " " + user.getLastName() %>
    			</span>
    			<% 
    				}
    			%>
  			</div>
		</nav>
		<!-- HEADER NAVIGATION BAR END -->
		
		<!-- LOGIN MODAL START -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  			<div class="modal-dialog modal-dialog-centered" role="document">
    			<div class="modal-content">
      				<div class="modal-header bg-primary">
        				<h5 class="modal-title" id="exampleModalLongTitle">Welcome Java HotSpotter</h5>
        				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
        				</button>
      				</div>
      				<div class="modal-body">
        				<form>
  							<div class="form-group">
    							<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-envelope"></i></div>
        							</div>
        							<input type="text" class="form-control" id="p1" placeholder="Username" value="arvind2341989@hotmail.com">
      							</div>
						  	</div>
						  	<div class="form-group">
						    	<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-key"></i></div>
        							</div>
        							<input type="password" class="form-control" id="p2" placeholder="Password" value="12345">
      							</div>
						  	</div>
						</form>
      				</div>
      				<div class="modal-footer">
        				<button type="button" class="btn btn-primary" id="loginButton">Login</button>
        				<span id="loginResults"></span>
      				</div>
    			</div>
  			</div>
		</div>
		<!-- LOGIN MODAL END -->
		
		<!-- REGISTER MODAL START -->
		<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  			<div class="modal-dialog modal-dialog-centered" role="document">
    			<div class="modal-content">
      				<div class="modal-header bg-primary">
        				<h5 class="modal-title" id="exampleModalLongTitle">Become a Java HotSpotter</h5>
        				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
        				</button>
      				</div>
      				<div class="modal-body">
        				<form>
        					<div class="form-group">
    							<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-user"></i></div>
        							</div>
        							<input type="text" class="form-control" id="firstName" placeholder="First Name">
      							</div>
						  	</div>
						  	<div class="form-group">
    							<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-user"></i></div>
        							</div>
        							<input type="text" name="lastName" class="form-control" id="lastName" placeholder="Last Name">
      							</div>
						  	</div>
  							<div class="form-group">
    							<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-envelope"></i></div>
        							</div>
        							<input type="text" name="emailAddress" class="form-control" id="emailAddress" placeholder="Email Address">
      							</div>
						  	</div>
						  	<div class="form-group">
						    	<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-key"></i></div>
        							</div>
        							<input type="password" name="password" class="form-control" id="password" placeholder="Password">
      							</div>
						  	</div><div class="form-group">
						    	<div class="input-group mb-2">
        							<div class="input-group-prepend">
          								<div class="input-group-text"><i class="fa fa-key"></i></div>
        							</div>
        							<input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Confirm Password">
      							</div>
						  	</div>
						</form>
      				</div>
      				<div class="modal-footer">
        				<button type="button" class="btn btn-primary" id="registerButton">Register</button>
        				<span id="registrationResults"></span>
      				</div>
    			</div>
  			</div>
		</div>
		<!-- REGISTER MODAL END -->
		
		<!-- CONTENT START -->
		<div class="container">
			<h1 class="display-4">Java Tutorial</h1>
			<nav>
  				<div class="nav nav-tabs" id="nav-tab" role="tablist">
    				<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
    				<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</a>
    				<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a>
  				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
  				<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
  					Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur nostrud minim non minim occaecat. Amet duis do nisi duis veniam non est eiusmod tempor incididunt tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.
  				</div>
  				<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
  					Nulla est ullamco ut irure incididunt nulla Lorem Lorem minim irure officia enim reprehenderit. Magna duis labore cillum sint adipisicing exercitation ipsum. Nostrud ut anim non exercitation velit laboris fugiat cupidatat. Commodo esse dolore fugiat sint velit ullamco magna consequat voluptate minim amet aliquip ipsum aute laboris nisi. Labore labore veniam irure irure ipsum pariatur mollit magna in cupidatat dolore magna irure esse tempor ad mollit. Dolore commodo nulla minim amet ipsum officia consectetur amet ullamco voluptate nisi commodo ea sit eu.
  				</div>
  				<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
  					Sint sit mollit irure quis est nostrud cillum consequat Lorem esse do quis dolor esse fugiat sunt do. Eu ex commodo veniam Lorem aliquip laborum occaecat qui Lorem esse mollit dolore anim cupidatat. Deserunt officia id Lorem nostrud aute id commodo elit eiusmod enim irure amet eiusmod qui reprehenderit nostrud tempor. Fugiat ipsum excepteur in aliqua non et quis aliquip ad irure in labore cillum elit enim. Consequat aliquip incididunt ipsum et minim laborum laborum laborum et cillum labore. Deserunt adipisicing cillum id nulla minim nostrud labore eiusmod et amet. Laboris consequat consequat commodo non ut non aliquip reprehenderit nulla anim occaecat. Sunt sit ullamco reprehenderit irure ea ullamco Lorem aute nostrud magna.
  				</div>
			</div>
		</div>
		<!-- CONTENT END -->
		
		<!-- FOOTER NAVIGATION BAR START -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="margin-top: 10px;">
    		<span class="navbar-text">
    			CopyRight@2018. All Rights Reserved.
  			</span>
  		</nav>
		<!-- FOOTER NAVIGATION BAR END -->
		
		<script src="resources/js/jquery-3.3.1.js"></script>
    	<script src="resources/js/popper.js"></script>
    	<script src="resources/js/bootstrap.js"></script>
    	<script src="resources/js/ace-builds/src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
		<script src="resources/js/javahotspot.js"></script>
	</body>
</html>