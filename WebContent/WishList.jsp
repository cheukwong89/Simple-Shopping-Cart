<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="w" uri="WEB-INF/mywishlist.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WishList</title>
</head>
<body>
<h1>WishList</h1>
<%
	String userid = (String)session.getAttribute("userid");
	if(userid == null){
		response.sendRedirect("Login.jsp");
	}
%>
<w:mywishlist/>
</body>
</html>