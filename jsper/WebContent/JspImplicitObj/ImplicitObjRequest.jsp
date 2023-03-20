<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% out.print("ismartsha using 'out' Object"); %>

<br>
<% String naam=request.getParameter("nam");
out.print("Welcome "+naam+" using Request");%>



</body>
</html>