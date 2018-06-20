<!DOCTYPE html>

<%@ page import="java.util.Set" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.LinkedHashMap" %>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<title>Test Results</title>
		
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/bootstrap-reboot.css">
		<link rel="stylesheet" href="resources/css/fontawesome-all.css">
	</head>
	<body>
		<table class="table table-bordered">
  			<tbody>
<% 
	LinkedHashMap<String, String> testResults = (LinkedHashMap<String, String>)session.getAttribute("TESTRESULTS");
	Set<Map.Entry<String, String>> set = testResults.entrySet();
	int counter = 1;
	for(Map.Entry<String, String> entry : set) {
		String specification = entry.getKey();
		String message = entry.getValue();
		if(message.startsWith("SATISFIED")) {
%>
			<tr class="bg-success">
			<th scope="row"><span class='glyphicon glyphicon-thumbs-up' aria-hidden='true'></span> <%= specification %></th>
<% 
		} else {
%>
			<tr class="bg-danger">
			<th scope="row"><span class='glyphicon glyphicon-thumbs-down' aria-hidden='true'></span> <%= specification %></th>
<% 
		}
%>
			      <td><%= message %></td>
			</tr>
<% 			
		counter++;
	}
%>
			</tbody>
		</table>
		
		<script src="resources/js/jquery-3.3.1.js"></script>
    	<script src="resources/js/popper.js"></script>
    	<script src="resources/js/bootstrap.js"></script>
	</body>
</html>	