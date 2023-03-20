<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FunctionTag</title>
</head>
<body style="color: white; background-color: black">
<c:out value="${'-----------contains--------------'}"></c:out><br><br>
<c:set var="String" value="Welcome to eidiko"></c:set>
<c:if test="${fn:contains(String,'eidiko')}">
<p>Found eidiko String</p><br><br>
</c:if>
<c:out value="${'------------containsIgnoreCase-------------'}"></c:out><br><br>

<c:set var="String" value="Welcome to javatpoint"/>  
  
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if> 
<br>
<c:out value="${'-----------endsWiths--------------'}"></c:out><br>

<c:set var="String" value="Welcome to JSP programming"></c:set>
<c:if test="${fn:endsWith(String,'programming')}">
<p>String ends with programming<p>

</c:if>
<c:if test="${fn:endsWith(String,'JSP' )}">
<p>String ends with JSP<p>
</c:if><br>
<c:out value="${'----------escapeXml--------------'}"></c:out><br>
<c:set var="string1"  value="That is to be my first life" />
<c:set var="string2" value="This is <xyz>my second life </xyz"></c:set>

<p>With 'escapeXml() Function:</p>
<p>string-1 : ${fn:escapeXml(string1)}</p>
<p>string-2 : ${fn:escapeXml(string2)}</p>

<p>Without escapeXml() Function:</p>
<p>string-1: ${string1 }</p>
<p>string-2: ${string2 }</p>
<br><br>
<c:out value="${'--------indexOf------------'}"></c:out><br>
<c:set var="string1" value="it is first String"></c:set>
<c:set var="string2" value="it is<b>second String</b>"></c:set>

<p>Index-1: ${fn:indexOf(string1,"first")}</p>
<p>Index-2: ${fn:indexOf(string2,"second")}</p>
<br>
<c:out value="${'---------trim----------'}"></c:out><br>

<c:set var="str1" value="Welcome to JSP         programming         "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  
<p>String1 before triming: ${str1 }</p>
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p>  
<br>
<c:out value="${'---------startsWith----------'}"></c:out><br>
<c:set var="msg" value="Your Empno is 55"></c:set>
This String Starts with "Your": ${fn:startsWith(msg,'Your')}<br><br>
This String Starts with "Empno":${fn:startsWith(msg,'Empno')}
<br><br>
<c:out value="${'-------split---------'}"></c:out><br>
<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
  
<p>String-3 : ${str3}</p>  
<c:set var="str4" value="${fn:split(str3, ' ')}" />  
<c:set var="str5" value="${fn:join(str4, '-')}" />  
  
<p>String-5 : ${str5}</p>  
<br><br>
<c:out value="${'--------toLowerCase----------'}"></c:out><br>
<c:set var="s1" value="Welcome to JSP Program"></c:set>
${fn:toLowerCase("Hello,")}
${fn:toLowerCase(s1)}
<br><br>
<c:out value="${'--------toUpperCase----------'}"></c:out><br>
<c:set var="org" value="eidiko"></c:set>
<c:set var="ceo" value="srinivasa Bandaru" ></c:set>
Hi,This is ${fn:toUpperCase(org)} org founded by ${fn:toUpperCase(ceo) }
<br><br>
<c:out value="${'---------substring----------'}"></c:out><br>
<c:set var="s1" value="This is the First String."></c:set>
${fn:substring(s1, 5, 17) }
<br><br>
<c:out value="${'-----------substringAfter--------'}"></c:out><br>
<c:set var="s1" value="ram charan" />
<p>Actual String: <c:out value="${s1 }"/><br>
 After:${fn:substringAfter(s1,"ram") }</p>
<br><br>
<c:out value="${'---------substringBefore-------'}"></c:out><br>
<c:set var="s1" value="ram charan" />
<p>Actual String: <c:out value="${s1 }"/><br>
After: ${fn:substringBefore(s1,"charan") }
<br><br></p>

<c:out value="${'-----length----------'}"></c:out><br>
<c:set var="str1" value="This is first string"/>  

Length of the String-1 is: ${fn:length(str1)}<br> 
<br><br>
<c:out value="${'------replace---------'}"></c:out><br>
<c:set var="author" value="Ramesh Kumar"/>  
<c:set var="string" value="pqr xyz abc PQR"/>  
${fn:replace(author, "Ramesh", "Suresh")}  
${fn:replace(string, "pqr", "hello")}  
<br><br>


</body>
</html>