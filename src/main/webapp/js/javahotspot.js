var editor1, editor2;

function setUpCodeEditor() {
	editor1 = ace.edit("editor");
	editor1.setTheme("ace/theme/eclipse");
	editor1.session.setMode("ace/mode/java");
	    		
	/*editor2 = ace.edit("editor2");
	editor2.setTheme("ace/theme/eclipse");
	editor2.session.setMode("ace/mode/java");*/
}

$(document).ready(function() {
	$("#loginButton").click(function(){
		$.post("login", 
    			{ 
    				emailAddress: $("#p1").val(),
    				password: $("#p2").val()
    			}, 
    			function(data2, status2) {
    				if(data2 == "null") {
    					$("#loginResults").html("<span class='alert alert-danger'>Invalid Access.</span>");
    					$("#p1").val("");
    					$("#p2").val("");
    				} else {
    					$("#loginResults").html("<span class='alert alert-success'>Authentication Successful. Please wait.....redirecting to site home.....</span>");
    					setTimeout(function(){
    						$(window).attr("location","home");
    					}, 2000);
    				}
    			});
    });
	
	$("#registerButton").click(function(){
		$.post("register", 
    			{ 
    				firstName: $("#firstName").val(),
    				lastName: $("#lastName").val(),
    				emailAddress: $("#emailAddress").val(),
    				password: $("#password").val()
    			}, 
    			function(data, status) {
    				if(data == "true") {
    					$("#registrationResults").html("<span class='alert alert-success'>Registration Successful. Please wait.....redirecting to site home.....</span>");
    					setTimeout(function(){
    						$(window).attr("location","home");
    					}, 2000);
    				} else {
    					$("#registrationResults").html("<span class='alert alert-danger'>Registration Not Successful. Try Again after sometime.</span>");
    				}
    			});
	});	
	
	$("#testCodeButton").prop('disabled', true);
});

function compileSourceCode(challengeName) {
	$("#loading").html("");
	$("#compiling").html("");
	$("#compilationResults").html("");
	
	$("#compileButton").prop('disabled', true);
	$("#testCodeButton").prop('disabled', true);
	
	$("#loading").html("Saving Source File: <kbd>" + challengeName + ".java</kbd>");
	
	/*setTimeout(function(){
		$("#compiling").html("Compiling Source File: <kbd>javac " + challengeName + ".java</kbd>");
	}, 2000);*/
	$("#compiling").html("Compiling Source File: <kbd>javac " + challengeName + ".java</kbd>");
		
	/*setTimeout(function(){
		$.ajax({
		 url: "compile",
		 data: {
			 editor1Content: editor1.getValue(),
			 className: challengeName + ".java"
		 },
		 type: "GET",
		 })
		 .done(function(data) {
			 if(data.trim() === "OK") {
				 var successText = "Compilation Results: <span class='label label-success'>Compilation Successful  <span class='glyphicon glyphicon-thumbs-up' aria-hidden='true'></span></span>";
				 $("#compilationResults").html(successText);
				
				 $("#testCodeButton").prop('disabled', false);
			 } else {
				 var failureText = "Compilation Results: <span class='label label-danger'>Compilation Failed  <span class='glyphicon glyphicon-thumbs-down' aria-hidden='true'></span></span>";
				 $("#compilationResults").html(failureText + "<br/><br/>" + data);
				 
				 $("#testCodeButton").prop('disabled', true);
			 }
			 
			 $("#compileButton").prop('disabled', false);
		});
	}, 4000);*/
	$.ajax({
		 url: "compile",
		 data: {
			 editor1Content: editor1.getValue(),
			 className: challengeName + ".java"
		 },
		 type: "GET",
		 })
		 .done(function(data) {
			 if(data.trim() === "OK") {
				 var successText = "Compilation Results: <span class='label label-success'>Compilation Successful  <span class='glyphicon glyphicon-thumbs-up' aria-hidden='true'></span></span>";
				 $("#compilationResults").html(successText);
				
				 $("#testCodeButton").prop('disabled', false);
			 } else {
				 var failureText = "Compilation Results: <span class='label label-danger'>Compilation Failed  <span class='glyphicon glyphicon-thumbs-down' aria-hidden='true'></span></span>";
				 $("#compilationResults").html(failureText + "<br/><br/>" + data);
				 
				 $("#testCodeButton").prop('disabled', true);
			 }
			 
			 $("#compileButton").prop('disabled', false);
		});
}

function testCode(challengeName) {
	$.ajax({
		url: "testcode",
		data: {
			challengeName: challengeName
		 },
		type: "GET",
	})
	.done(function(data) {
		$("#testResults").html(data);
	});
}

function onVisibilityChange(callback) {
    var visible = true;

    if (!callback) {
        throw new Error('no callback given');
    }

    function focused() {
        if (!visible) {
            callback(visible = true);
        }
    }

    function unfocused() {
        if (visible) {
            callback(visible = false);
        }
    }

    // Standards:
    if ('hidden' in document) {
        document.addEventListener('visibilitychange',
            function() {(document.hidden ? unfocused : focused)()});
    }
    if ('mozHidden' in document) {
        document.addEventListener('mozvisibilitychange',
            function() {(document.mozHidden ? unfocused : focused)()});
    }
    if ('webkitHidden' in document) {
        document.addEventListener('webkitvisibilitychange',
            function() {(document.webkitHidden ? unfocused : focused)()});
    }
    if ('msHidden' in document) {
        document.addEventListener('msvisibilitychange',
            function() {(document.msHidden ? unfocused : focused)()});
    }
    // IE 9 and lower:
    if ('onfocusin' in document) {
        document.onfocusin = focused;
        document.onfocusout = unfocused;
    }
    // All others:
    window.onpageshow = window.onfocus = focused;
    window.onpagehide = window.onblur = unfocused;
};