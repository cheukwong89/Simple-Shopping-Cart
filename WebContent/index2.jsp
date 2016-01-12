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
 <script language="javascript" type="text/javascript">
					function gotoCart(id){
						window.location.href="CartServlet?pid="+id+"&qty="+document.getElementById("productDetail").value;
					}
				</script>
</head>
<body>
	<div id="header">																																																																								
		<div id="header_inside">
			<img src="http://www.dazhuoge.me/wp-content/uploads/2016/01/headerpic.png" alt="setalpm" width="999" height="222" border="0" usemap="#Map" /><br />																																										
			<ul id="menu">
				<li><a href="Home.jsp" class="but1_active">Home Page</a></li>
				<li><a href="youraccount.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="WishlistServlet" class="but1_active">Your Lists</a></li>
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
					<li class="color"><a href="Home.jsp?brand=all">All</a></li>
				</ul>
			</div>
			<div id="main_block">
				<div id="item">
					<% String pid=request.getParameter("pid"); %>
					<d:database pid="<%=pid %>"/> 
				<div class="choice">
					<br>Qty:
					<select id="productDetail" >
					<%
						for (int i=1;i<=30;i++){
						out.println("<option value="+i+">"+i+"</option>");
						}	
					%>
					</select>
					<br><input type="button" value="Add To Cart" onclick="javascript:gotoCart(<%=pid %>)" style="width:150px" >
					<br><input type="submit" value="Add To Lists" onclick="window.location.href='WishlistServlet?pid=<%=pid%>" style="width:150px" >
				</div>	
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
