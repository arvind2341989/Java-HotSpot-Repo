<!-- HEADER NAVIGATION BAR START -->
		<%@page import="in.javahotspot.entity.User"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
  			<div class="container-fluid">
    			<!-- Brand and toggle get grouped for better mobile display -->
    			<div class="navbar-header">
      				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        				<span class="sr-only">Toggle navigation</span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
      				</button>
      				<a class="navbar-brand" href="home">Java HotSpot</a>
    			</div>

    			<!-- Collect the nav links, forms, and other content for toggling -->
    			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      				<ul class="nav navbar-nav">
        				<li class="active"><a href="home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span><span class="sr-only">(current)</span></a></li>
        				<li><a href="javatutorial/index">Java SE</a></li>
        				<li><a href="javaeetutorial/index">Java EE</a></li>
        				<li><a href="#">Spring</a></li>
        				<li><a href="#">Hibernate</a></li>
        				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More Tutorials <span class="caret"></span></a>
          					<ul class="dropdown-menu">
            					<li><a href="jdbctutorial/index">JDBC</a></li>
          					</ul>
        				</li>
        				<li><a href="codingground">Coding Ground</a></li>
      				</ul>
      				<% 
      					User user = (User)session.getAttribute("USERDATA");
    					if(user == null) {
      				%>
	      				<form class="navbar-form navbar-right">
	        				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#loginModal">Login</button>
	        				<button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#registerModal">Register</button>
	      				</form>
      				<% 
    					} else {
      				%>
      					<ul class="nav navbar-nav navbar-right">
        					<li class="dropdown">
          						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="label label-primary">Welcome <%= user.getFirstName() + " " + user.getLastName() %> <span class="caret"></span></span></a>
          						<ul class="dropdown-menu">
						            <li><a href="#">Profile</a></li>
						            <li role="separator" class="divider"></li>
						            <li><a href="logout">Logout</a></li>
						      	</ul>
        					</li>
      					</ul>	
      				<% 
    					}
      				%>
    			</div><!-- /.navbar-collapse -->
  			</div><!-- /.container-fluid -->
		</nav>
		<!-- HEADER NAVIGATION BAR END -->