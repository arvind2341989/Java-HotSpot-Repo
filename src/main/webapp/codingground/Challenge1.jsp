<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Coding Ground - Challenge 1</title>
		
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
  				<h1>Sum Of Digits</h1>
  				<p>Welcome to Coding Ground.</p>
			</div>
		</div>
		<!-- JUMBOTRON END -->
		
		<!-- CONTENT START -->
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="panel panel-default">
						<div class="panel-heading">
							<ul class="nav nav-tabs" role="tablist">
  								<li role="presentation" class="active"><a href="#problemStatement" aria-controls="problemStatement" role="tab" data-toggle="tab">Problem Statement</a></li>
  								<li role="presentation"><a href="#codeEditor" aria-controls="codeEditor" role="tab" data-toggle="tab">Code Editor</a></li>
							</ul>
						</div>
						<!-- Tab panes -->
						<div class="panel-body">
  							<div class="tab-content">
    							<div role="tabpanel" class="tab-pane active" id="problemStatement">
									<div class="alert alert-info" role="alert">
										<p class="lead">Write Java Code to find out the Sum of Digits of a Two-digit number.</p>
									</div>
									<div class="alert alert-info" role="alert">
										<b>SPECIFICATIONS:</b>
										<ol>
											<li>Define a Java Class by the name SumOfDigits.</li>
											<li>Define a method by the name getSumOfDigits in the class. The method must have one parameter of type int & the method return type must be int.</li>
											<li>If the given parameter value lies in between 10 & 99, then return the sum of digits. For e.g. if value is 37, then return 10.</li>
											<li>If the given parameter value is negative, then return -1.</li>
											<li>If the given parameter value is greater than 99, then return -2.</li>
											<li>If the given parameter value is in between 0 to 9, then return -3.</li>
										</ol>
									</div>
  								</div>
    							<div role="tabpanel" class="tab-pane" id="codeEditor">
											    						<div id="editor">class SumOfDigits {
	public int getSumOfDigits(int number) {
		if(number < 0) {
			return -1;
		}
		if(number > 99) {
			return -2;
		}
		if(number > 0 && number < 10) {
			return -3;
		}
														
		int firstDigit = number / 10;
		int secondDigit = number % 10;
		int sumOfDigits = firstDigit + secondDigit;
													
		return sumOfDigits;
	}	
}	
																		</div>
    							</div>
    						</div>
    					</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel panel-default">
  						<div class="panel-heading">
    						<button type="button" id="compileButton" onclick="compileSourceCode('SumOfDigits')" class="btn btn-primary btn-block">Compile Source Code</button>
  						</div>
					  	<div class="panel-body">
					    	
					    	<p id="loading"></p>
					    	<p id="compiling"></p>
					    	<p id="compilationResults"></p>
					  	</div>
					</div>
					<div class="panel panel-default">
  						<div class="panel-heading">
    						<button type="button" id="testCodeButton" onclick="testCode('SumOfDigits')" class="btn btn-primary btn-block" disabled="disabled">Test Code</button>
  						</div>
					  	<div class="panel-body">
					    	<p id="testResults"></p>
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
    	<script src="resources/js/ace-builds/src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
		<script src="resources/js/javahotspot.js"></script>
		<script>setUpCodeEditor()</script>
		<script>
		onVisibilityChange(function(visible) {
		    console.log('the page is now', visible ? 'focused' : 'unfocused');
		});
		</script>
	</body>
</html>