<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Coding Ground - HomePage</title>
		
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/javahotspot.css">
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
  				<h1>Coding Ground</h1>
  				<p>Java-Based Coding Challenges</p>
			</div>
		</div>
		<!-- JUMBOTRON END -->
		
		<!-- CONTENT START -->
		<div class="container">
			<div class="table-responsive">
				<table class="table table-bordered table-hover text-center">
			    	<thead>
			      		<tr class="bg-primary">
			        		<th class="text-center">#</th>
			        		<th class="text-center">Challenge Name</th>
			        		<th></th>
			        		<th class="text-center">Difficulty Level</th>
			        		<th class="text-center">Attempts So Far</th>
			        		<th class="text-center">Success Rate</th>
			      		</tr>
			    	</thead>
			    	<tbody>
			      		<tr>
			        		<td><span class="badge">1</span></td>
			        		<td><span class="label label-primary">Sum Of Digits</span></td>
			        		<td><a class="btn btn-danger btn-xs" href="challenge1" role="button">Attempt Now</a></td>
			        		<td><span class="label label-info">Easy</span></td>
			        		<td><span class="label label-warning">1000</span></td>
			        		<td><span class="label label-success">100%</span></td>
			      		</tr>
			      		<tr>
			        		<td><span class="badge">2</span></td>
			        		<td><span class="label label-primary">Difference Of Digits</span></td>
			        		<td><a class="btn btn-danger btn-xs" href="challenge2" role="button">Attempt Now</a></td>
			        		<td><span class="label label-info">Easy</span></td>
			        		<td><span class="label label-warning">1000</span></td>
			        		<td><span class="label label-success">100%</span></td>
			      		</tr>
			    	</tbody>
				</table>
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