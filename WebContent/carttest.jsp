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

<h1>This Page is used to Test Shopping Cart</h1>

<%
	HashMap<Product,Integer> goods = new HashMap<Product, Integer>();
	Product p1 = new Product(1, "AAA", 1.00, 10);
	Product p2 = new Product(2, "BBB", 2.00, 10);
	Product p3 = new Product(1, "CCC", 3.00, 10);
	goods.put(p1, 2);
	goods.put(p2, 3);
	goods.put(p3, 4);
	
	Cart cart = new Cart();
	cart.setItems(goods);
	
	session.setAttribute("cart", cart);
%>

<h2>
<a href="shoppingcart.jsp">Redirect to My Shopping Cart</a>
</h2>

</body>
</html>