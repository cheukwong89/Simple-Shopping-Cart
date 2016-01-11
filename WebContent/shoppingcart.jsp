<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.team2.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

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
			 %>
			<div class="button"><input type="submit" value="" /></div>
		</form>
	</div>


<%
	
%>


</body>
</html>