<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  


<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:out value="${'-------setDataSource--------'}"></c:out><br>
<sql:setDataSource var="db" 
driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost/ismartdb"
user="root" password="12345"/>
connection established
<!-- ---------------------------------------------------------------------- -->
<br><br>
<%-- <c:out value="${'-----query------' }"/><br><br>
<sql:query  dataSource="${db}" var="rs">
select * from student;</sql:query>
<table border="2" width="100%">  
<tr>  
<th>Student ID</th>  
<th>Name</th>  
<th>Class</th>  
<th>DOB</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.sid}"/></td>  
<td><c:out value="${table.sname}"/></td>  
<td><c:out value="${table.sclass}"/></td>  
<td><c:out value="${table.sdob}"/></td>  
</tr>  
</c:forEach>  
</table> 
<br><br>--%>
<!-- ---------------------------------------------------------------------- -->
<%-- 
<c:out value="${'-----Update------' }"/><br><br>

<sql:update dataSource="${db}" var="count">
insert into student values(188,"setpal",9,"2001-08-12");
</sql:update>
<sql:query  dataSource="${db}" var="rs">
select * from student;</sql:query>
<table border="1" width="100%">  
<tr>  
<th>Student ID</th>  
<th>Name</th>  
<th>Class</th>  
<th>DOB</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.sid}"/></td>  
<td><c:out value="${table.sname}"/></td>  
<td><c:out value="${table.sclass}"/></td>  
<td><c:out value="${table.sdob}"/></td>  
</tr>  
</c:forEach>  
</table>--%>
<!-- ---------------------------------------------------------------------- -->
<%--
<c:out value="${'------param---------' }"/><br><br>
 <c:set var= "stdid" value="188"/>
 <sql:update dataSource="${db}" var="count">
 delete from student where sid =?
 <sql:param value="${stdid}"/>
 </sql:update>

<sql:query  dataSource="${db}" var="rs">
select * from student;</sql:query>
<table border="1" width="100%">  
<tr>  
<th>Student ID</th>  
<th>Name</th>  
<th>Class</th>  
<th>DOB</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.sid}"/></td>  
<td><c:out value="${table.sname}"/></td>  
<td><c:out value="${table.sclass}"/></td>  
<td><c:out value="${table.sdob}"/></td>  
</tr>  
</c:forEach>  
</table>
--%>


<!-- ---------------------------------------------------------------------- -->
<%--
<c:out value="${'------dateParam---------' }"/><br><br>
  <%
  Date tempDoB = new Date();  
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy/mm/dd"); 
 tempDoB=formatter.parse("1992/05/08");
int studentId = 109;%>
   
<sql:update dataSource="${db}" var="count">  
   update student set sdob = ? WHERE sid = ?
   <sql:dateParam value="<%=tempDoB%>" type="DATE" />  
   <sql:param value="<%=studentId%>" />  
</sql:update>  
   
<sql:query dataSource="${db}" var="rs">  
   SELECT * from Student;  
</sql:query>  
<table border="1" width="100%">  
<tr>  
<th>Student ID</th>  
<th>Name</th>  
<th>Class</th>  
<th>DOB</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.sid}"/></td>  
<td><c:out value="${table.sname}"/></td>  
<td><c:out value="${table.sclass}"/></td>  
<td><c:out value="${table.sdob}"/></td>  
</tr>  
</c:forEach>  
</table>

--%>
<!-- ---------------------------------------------------------------------- -->
<%-- 
 <c:out value="${'---------transaction-----------' }"/> <br><br>
 <% Date tempDoB = new Date();  
 SimpleDateFormat formatter = new SimpleDateFormat("yyyy/mm/dd"); 
tempDoB=formatter.parse("1992/05/08");
int studentId = 109; %>  
<sql:transaction dataSource="${db}">  
   <sql:update var="count"> 
   update student set sname='getterpal' where sid=109
     
   </sql:update>  
   <sql:update var="count">  
     update student set sname='setterpal' where sid=104
   </sql:update>  
   <sql:update var="count">  
     INSERT INTO Student   
     VALUES (158,"wetpal",9,"2001-02-12");  
   </sql:update>  
</sql:transaction>
<sql:query dataSource="${db}" var="rs">  
   SELECT * from Student;  
</sql:query>  
<table border="1" width="100%">  
<tr>  
<th>Student ID</th>  
<th>Name</th>  
<th>Class</th>  
<th>DOB</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.sid}"/></td>  
<td><c:out value="${table.sname}"/></td>  
<td><c:out value="${table.sclass}"/></td>  
<td><c:out value="${table.sdob}"/></td>  
</tr>  
</c:forEach>  
</table>
 --%>
 
</body>
</html>