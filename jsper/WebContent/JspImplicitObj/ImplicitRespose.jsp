<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String req=request.getParameter("utub");
String req1=request.getParameter("goog");
String req2=request.getParameter("gmail");

if(req!=null)
{
	response.sendRedirect("http://www.youtube.com");
}
else if(req1!=null)
{
	response.sendRedirect("http://www.google.com");
}
else if(req2!=null){
	response.sendRedirect("http://www.gmail.com");
}

%>
</body>
</html>