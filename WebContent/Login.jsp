<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="header">																																																																								
		<div id="header_inside">
			<img src="http://www.dazhuoge.me/wp-content/uploads/2016/01/headerpic.png"/>
			<ul id="menu">
				<li><a href="Home.jsp" class="but1_active">Home Page</a></li>
				<li><a href="youraccount.jsp" class="but1_active">Hello, Your account</a></li>
				<li><a href="WishList.jsp" class="but1_active">Your Lists</a></li>
				<li><a href="shoppingcart.jsp" class="but1_active">Cart</a></li>
			</ul>
		</div>
	</div>
<%
    String msg =""; 
    String msg2 = (String)request.getAttribute("errmsg");
    if(msg2 != null)
    {
    	msg = msg2;
    }    
%>
<div id = "form" align = "center">
<h2><font color="red"> <%= msg %>  </font></h2>

  <form action="Loggedin.jsp" method="post">
    
  	<br> Enter Username : <input type="text" name="username">
  	<br> Enter Password : <input type="password" name="password">
    <br> New customer? <a href = register.jsp>Register now!</a>
    <br> <input type="submit" value="Login">
  </form>
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