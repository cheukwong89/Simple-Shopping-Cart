<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="w" uri="WEB-INF/mywishlist.tld" %>
    <%@ taglib prefix="d" uri="WEB-INF/database.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WishList</title>
</head>
<body>
<div id="header">																																																																								
		<div id="header_inside">
			<img src="http://www.dazhuoge.me/wp-content/uploads/2016/01/headerpic.png"/>
			<ul id="menu">
				<li><a href="Home.jsp" class="but1_active">Home Page</a></li>
				<li><a href="Login.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="WishList.jsp" class="but1_active">Your Lists</a></li>
				<li><a href="shoppingcart.jsp" class="but1_active">Cart</a></li>
			</ul>
		</div>
	</div>
<h1>WishList</h1>
<%
	String userid = (String)session.getAttribute("userid");
	if(userid == null){
		response.sendRedirect("Login.jsp");
	}
	String pid = request.getParameter("pid");
%>
<w:mywishlist pid = "<%=pid%>" userid = "<%=userid%>"/>
	<div id="footer">
		<div id="footer_inside">
			<ul class="footer_menu">
				<li><a href="index.html">Home Page</a>|</li>
				<li><a href="index2.html">About Us</a>|</li>
				<li><a href="index2.html">News &amp; Events</a>|</li>
				<li><a href="index2.html">Services</a>|</li>
				<li><a href="index2.html">My Account</a>|</li>
				<li><a href="index2.html">Contacts</a></li>
			</ul><br /><br />
			<p>Copyright &copy;. All rights reserved. Designed by NeiXiang Group</p>					                                                                                                                                                                                                          <div class="inner_copy"><a href="http://smashinghub.com/10-best-free-website-platforms-for-creating-online-portfolio-in-2015.htm">0 best free website platforms for creating online portfolio</a></div>																																																						
		</div>
	</div>
    <map name="Map">
       <area shape="rect" coords="78,45,312,119" href="index.html">
       <area shape="poly" coords="670,87,719,78,727,123,677,130" href="#">
       <area shape="poly" coords="776,124,818,152,793,189,751,160" href="#">
       <area shape="poly" coords="834,52,885,61,878,105,828,96" href="#">
	</map>
</body>
</html>