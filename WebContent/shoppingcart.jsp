<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.team2.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language="javascript">
	    function delcfm() {
	        if (!confirm("Confirm to Delete?")) {
	            window.event.returnValue = false;
	        }
	    }
   </script>
<body>
	<div id="header">																																																																								
		<div id="header_inside">
			<img src="http://www.dazhuoge.me/wp-content/uploads/2016/01/headerpic.png">
			<ul id="menu">
				<li><a href="Home.jsp" class="but1_active">Home Page</a></li>
				<li><a href="youraccount.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="WishlistServlet" class="but1_active">Your Lists</a></li>
				<li><a href="shoppingcart.jsp" class="but1_active">Cart</a></li>
			</ul>
		</div>
	</div>

<h1>My Shopping Cart</h1>

<hr>
<div id="shopping">
   <form action="" method="">		
			<table>
				<tr>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Operation</th>
				</tr>
				<% 
				   if(request.getSession().getAttribute("cart")!=null)
				   {
				%>
				     <% 
				         Cart cart = (Cart)request.getSession().getAttribute("cart");
				         HashMap<Product,Integer> goods = cart.getItems();
				         Set<Product> items = goods.keySet();
				         Iterator<Product> it = items.iterator();
				         
				         while(it.hasNext())
				         {
				            Product i = it.next();
				     %> 
				<tr name="products" id="product_id_1">
					<td class="name"><%=i.getName() %></td>
					<td class="number"><%=i.getPrice() %></td>
					<td class="price" id="price_id_1">
						<span><%=i.getPrice()*goods.get(i) %></span>
						<input type="hidden" value="" />
					</td>
					<td class="number">
                     	<%=goods.get(i)%>					
					</td>                        
                    <td class="delete">
					  <a href="servlet/CartServlet?action=delete&id=<%=i.getId()%>" onclick="delcfm();">Delete</a>					                  
					</td>
				</tr>
				     <% 
				         }
				     %>
				
			</table>
			 <div class="total"><span id="total">Total：$ <%= cart.calTotalPrice() %> </span></div>
			  <% 
			    }
				   else{
			        	 out.println("<h3>Shopping Cart is Empty!</h3>");
			         }
			 %>
			<div class="button"><input type="submit" value="" /></div>
		</form>
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


</body>
</html>