<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="WEB-INF/database.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Amazon</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">																																																																								
		<div id="header_inside">
			<img src="http://www.dazhuoge.me/wp-content/uploads/2016/01/headerpic.png" alt="setalpm" width="999" height="222" border="0" usemap="#Map" /><br />																																										
			<ul id="menu">
				<li><a href="Home.jsp" class="but1_active">Home Page</a></li>
				<li><a href="youraccount.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="WishlistServlet" class="but1_active">Your Lists</a></li>
				<li><a href="CartServlet?action=show" class="but1_active">Cart</a></li>
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
					<li class="color"><a href="Home.jsp?brand=all">All</a></li>
				</ul>
			</div>
			<div id="main_block">
				<div class="about">
					<p>All results for "sports bra" </p>
				</div>

				<div id="items">
				<%! String brands; %>
				<% if(request.getParameter("brand")!=null){
					brands=request.getParameter("brand");	
					}
					%>
				<d:database brand="<%=brands%>"/>
				</div>
			</div>
		</div>
	</div>
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
			<p>Copyright &copy;. All rights reserved. Design by NeiXiang Group</p>					                                                                                                                                                                                                          <div class="inner_copy"><a href="http://smashinghub.com/10-best-free-website-platforms-for-creating-online-portfolio-in-2015.htm">0 best free website platforms for creating online portfolio</a></div>																																																						
		</div>
	</div>
</body>
</html>