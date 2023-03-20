<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! 
int pageCount=0;
void addCount()
{
	pageCount++;
}
%>
<% addCount(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>Heading 2</h2>
<p>This site has been visited <%=pageCount %> times....!</p>

</center>
</body>
</html>