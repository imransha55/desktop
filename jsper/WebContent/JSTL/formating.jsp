<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <!-- ------------------------parseNumber----------------------------- -->
<%--
<h3>The fmt:parseNumber tag Example is:</h3>  
  
<c:set var="Amount" value="7555.880" />  
  
    <fmt:parseNumber var="j" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  
  <%--integerOnly="true" --%>
  <%--  <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  
    --%>
   
     <!-- ------------------timeZone-------------------------------------- -->
<%--  <c:set var="str" value="<%=new java.util.Date()%>" />  
    <table border="2" width="100%">  
      <tr>  
        <td width="100%" colspan="2" bgcolor="#FF7F50">  
          <p align="center">  
            <b>  
              <font color="#000000" size="6">Formatting:  
              <fmt:formatDate value="${str}" type="both"  
              timeStyle="long" dateStyle="long" />  
              </font>  
            </b>  
          </p>  
        </td>  
      </tr>  
  
      <c:forEach var="zone"  
      items="<%=java.util.TimeZone.getAvailableIDs()%>">  
        <tr>  
          <td width="50%"  bgcolor="#C0C0C0">  
            <c:out value="${zone}" />  
          </td>  
          <td width="50%" bgcolor="#FFEBCD">  
            <fmt:timeZone value="${zone}">  
              <fmt:formatDate value="${str}" timeZone="${zn}"  
              type="both"/>  
            </fmt:timeZone>  
          </td>  
        </tr>  
      </c:forEach>  
    </table>
    
    --%>
    
    <!-- ------------------formateNumber-------------------------------------- -->

<%--<c:set var="Amount" value="9850.14115" />  
    <h3>Formatting of Number: <c:out value="${Amount}"></c:out></h3>  
<p>By currency:  
<fmt:formatNumber value="${Amount}" type="currency" /></p>  
<p>By groupingUsed=true:  
<fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" /></p>  
<p>By maxIntegerDigits=3:  
<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></p>  
<p>By maxFractionDigits=6:  
<fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount}" /></p>  
<p>By maxIntegerDigits=4:  
<fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount}" /></p>  
<p>By ###.###$:  
<fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" /></p>
 --%>
 
 <!-- ------------------parseDate-------------------------------------- -->
<%--  <h3>Parsed Date:</h3>  
<c:set var="date" value="16-08-2016" />  
  
<fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
<p><c:out value="${parsedDate}" /></p>  
 --%>
<!-- ------------------bundle-------------------------------------- -->
<%--
 <!--  default resource bundle in com.ismart.jstl -->  
<fmt:bundle basename="com.ismart.Bundle" prefix="col.">  
   <fmt:message key="Black"/><br/>  
   <fmt:message key="hi"/><br/>    
</fmt:bundle>  
 --%>

<!-- ------------------setBundle-------------------------------------- --> 
<%--
 <!--  default resource bundle in com.ismart.jstl -->
 <fmt:setBundle basename="com.ismart.SetBundle" var="lang"/>  
<fmt:message key="vegetable.Potato" bundle="${lang}"/><br/>  
   <fmt:message key="vegetable.Tomato" bundle="${lang}"/><br/>  
  <fmt:message key="vegetable.Carrot" bundle="${lang}"/><br/> 
  --%>
 
</body>
</html>