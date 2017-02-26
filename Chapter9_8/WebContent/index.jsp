<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	<h2>Using  jstl url tag just to rewrite not encode:</h2>
	<%--Using <c:url> with a query string it does NOT automatically encode URL--%>
	<c:set  var="last" value="Hidden Cursor" scope="session"/>
	<c:set  var="first" value="Crouching Pixels" scope="session"/>
	
	<%-- Use optional var attribute when you want access to this value later --%>
	<c:url value="/inputComments.jsp?first=${first}&last=${last}" var="inputURL"></c:url>
	This URL using param is: ${inputURL}<br>
	<%-- when you press this link you see space between variables, and you cannot have space in there
	you need encode your URL you rewrite URL, but you need to encode URL to fix this: --%>
	<a href="${inputURL}">Click Here</a>
	<hr><h2>Using jstl url tag as well inside it param tag to encode URL :</h2>
	
	<%-- now we done with c:url tag encode and rewriting --%>
	<c:url value="/inputComments.jsp" var="inputURL2">
		<c:param name="first" value="${first}" />
		<c:param name="last" value="${last}" />
	</c:url>
	This URL using param is: ${inputURL2}<br>
	<a href="${inputURL2}">Click Here</a>
</body>
</html>