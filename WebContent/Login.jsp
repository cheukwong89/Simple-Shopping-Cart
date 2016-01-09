<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="66BB99">
<%
    String msg =""; 
    String msg2 = (String)request.getAttribute("errmsg");
    if(msg2 != null)
    {
    	msg = msg2;
    }    
%>
<h2><font color="red"> <%= msg %>  </font></h2>

  <form action="Loggedin.jsp" method="post">
    
  	<br> Enter Username : <input type="text" name="username">
  	<br> Enter Password : <input type="password" name="password">
     
    <br> <input type="submit" value="Submit">
  </form>


</body>
</html>