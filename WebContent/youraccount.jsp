<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>youraccount</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">																																																																								
		<div id="header_inside">
			<img src="http://www.dazhuoge.me/wp-content/uploads/2016/01/headerpic.png"/>
			<ul id="menu">
				<li><a href="Home.jsp" class="but1_active">Home Page</a></li>
				<li><a href="youraccount.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="WishlistServlet" class="but1_active">Your Lists</a></li>
				<li><a href="shoppingcart.jsp" class="but1_active">Cart</a></li>
			</ul>
		</div>
	</div>
<%
if (session.getAttribute("username")==null){
	response.sendRedirect("Login.jsp");
}
%>	
	
<h2 align = "center">
   
   <br> Welcome, <% out.println(session.getAttribute("username")); %>
   

   <br><a href="WishlistServlet">View wishlist</a>
   <br><a href="logout.jsp">Logout</a>
   </h2>

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