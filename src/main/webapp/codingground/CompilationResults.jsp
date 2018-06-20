<%@ page import="java.util.ArrayList, java.util.Iterator" %>

<% 
	ArrayList<String> arrayList = (ArrayList)session.getAttribute("COMPILATIONERRORS");
	if(arrayList != null) {
		Iterator it = arrayList.iterator();
		while(it.hasNext()) {
%>
			<%= it.next() %><br/>
<%
		}
	} else {
%>
		OK
<%
	}
%>