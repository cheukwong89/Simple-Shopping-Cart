<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="WEB-INF/database.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Amazon</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="header">																																																																								
		<div id="header_inside">
			<img src="data:image/png;base64,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" alt="setalpm" width="999" height="222" border="0" usemap="#Map" /><br />																																										
			<ul id="menu">
				<li><a href="index.jsp" class="but1_active">Home Page</a></li>
				<li><a href="login.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="list.jsp" class="but1_active">Your Lists</a></li>
				<li><a href="cart.jsp" class="but1_active">Cart</a></li>
			</ul>
		</div>
	</div>
	<div id="wrapper">																																																																											
		<div id="content_inside">
			<div id="sidebar">
				<h3>Brands</h3><br />																																																																		
				<ul id="list">
					<li class="color"><a href="Home.jsp?brand=Champion">Champion</a></li>
					<li><a href="Home.jsp?brand=Nike">Nike</a></li>
					<li class="color"><a href="Home.jsp?brand=Under%20Armour">Under Armour</a></li>
					<li><a href="Home.jsp?brand=La%20Isla">La Isla</a></li>
					<li class="color"><a href="Home.jsp?brand=Glamorise">Glamorise</a></li>
					<li><a href="Home.jsp?brand=Fruit%20of%20the%20Loom">Fruit of the Loom</a></li>
					<li class="color"><a href="Home.jsp">All</a></li>
				</ul>
			</div>
			<div id="main_block">
				<div id="item">
					<% String pid=request.getParameter("pid"); %>
					<d:database pid="<%=pid %>"/> 
				</div>	
				<div id="item">
					<br>Qty:
					<select>
					<%
						for (int i=1;i<=30;i++){
						out.println("<option value="+i+">"+i+"</option>");
						}	
					%>
					</select>
					<br><input type="submit" value="Add To Cart" onclick="window.location.href='cart.jsp'">
					<br><input type="submit" value="Add To Lists" onclick="window.location.href='wishlist.jsp'">
				</div>	
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="footer_inside">
			<ul class="footer_menu">
				<li><a href="">Home Page</a>|</li>
				<li><a href="">About Us</a>|</li>
				<li><a href="">News &amp; Events</a>|</li>
				<li><a href="">Services</a>|</li>
				<li><a href="">My Account</a>|</li>
				<li><a href="">Contacts</a></li>
			</ul><br /><br />
			<p>Copyright &copy;. All rights reserved. Design NeiXiang Group</p>					                                                                                                                                                                                                          <div class="inner_copy"><a href="http://smashinghub.com/10-best-free-website-platforms-for-creating-online-portfolio-in-2015.htm">0 best free website platforms for creating online portfolio</a></div>																																																						
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
