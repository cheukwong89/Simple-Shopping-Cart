<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Your WishList</title>
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
	String userid = (String)session.getAttribute("userid");
	if(userid == null){
		response.sendRedirect("Login.jsp");
	}
	String pid = request.getParameter("pid");
%>
<%
	ResultSet rset = (ResultSet)request.getAttribute("resultset");
	if(rset == null){
		out.println("<h4>There is not item in your list!</h4>");
	}
	else{
		out.println("<h3><a href='EditWishlist.jsp'>Edit your List</a></h3>");
	while(rset.next()){
		out.println("<h4>"+rset.getString(2)+"</h4><br />");
		out.println("<div class='big_view'>");
		out.println("<img src='"+rset.getString(4)+"' alt='' width='311' height='319' /><br />");
		out.println("<span>$"+rset.getDouble(3)+"</span>");
		out.println("</div><br>");
	}
	}
%>

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

</body>
</html>