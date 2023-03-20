<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CoreTags</title>
</head>
<body style="color: white; background-color: black">
<c:out value="${'---------Out tag------------'}"></c:out><br><br>
<c:out value="${'Welcome you to out tag...!'}"></c:out><br><br>
<c:out value="${'----------set tag--------------'}"></c:out><br><br>

<c:set var="sal" scope="session" value="${16500*12}"></c:set>
<p>your annual Sal is: 
<c:out  value="${sal}"></c:out><br><br>

<c:out value="${'---------remove tag------------'}"></c:out><br><br>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>  <br><br>

<c:out value="${'--------catch tag------------'}"></c:out><br><br>

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>  <br><br>
<c:out value="${'-----------if tag-------------'}"></c:out><br><br>

<c:set var="sal" scope="session" value="${8855*6}"></c:set>
<c:if test="${sal>10000}">
<p>My Sex Months sal is:<c:out value="${sal }"></c:out>
</c:if><br><br>
<c:out value="${'-------------choose tag_when_otherwise--------------'}"></c:out><br><br>

<c:set var="sal" scope="session" value="${2222*12}"></c:set>
<p>Your income:<c:out value="${sal}"/>
<c:choose>
	<c:when test="${sal<=1000 }"> Sal is Not good</c:when>
	<c:when test="${sal>=10000 }">Sal is Good</c:when>
	<c:otherwise>Sal is undetermined</c:otherwise>
</c:choose><br><br>

<c:out value="${'---------forEach-------------'}"></c:out><br><br>

<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach> 
<br><br>
<c:out value="${'----------forTokens-------------'}"></c:out><br><br>

<c:forTokens items="welcome to - ismart-empire" delims="-" var="name">
<c:out value="${name}"></c:out>
</c:forTokens>
<br><br>
<c:out value="${'---------param--------------'}"></c:out><br><br>

<c:url value="/index1.jsp" var="completeURL">
<c:param name="trackingId" value="7555"></c:param>
<c:param name="user" value="ismartsha"></c:param>
</c:url>
<p>Code in comments</p>
${completedURL}
<br><br>
<c:out value="${'-----------redirect-------------'}"></c:out><br><br>

<%--<c:set var="url" value="0" scope="request"></c:set>
<c:if test="${url>1}">
<c:redirect url="http://javatpoint.com"></c:redirect>   
</c:if>
<!--<c:if test="${url<1}">
<c:redirect url="http://facebook.com"/> 

</c:if>--%>
<p>code is in comments</p><br><br>
<c:out value="${'----------URL-----------'}"></c:out><br><br>

<c:url value="/index1.jsp"></c:url><br><br>
<c:out value="${'--------------------------------'}"></c:out><br><br>
</body>
</html>