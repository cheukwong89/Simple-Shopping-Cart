<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"  %>
<%@ page import="java.sql.DriverManager"  %>
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.ResultSet"  %>
<%@ page import="java.sql.Statement"  %>
<%@ page import= "javax.servlet.RequestDispatcher" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>newaccount</title>

</head>
<body>

   <h2>
   <%
      String regusername = request.getParameter("regusername");
   	  String regpassword = request.getParameter("regpassword");
   	  String regpassword2 = request.getParameter("regpassword2");
   	  
   	  if(regpassword.equals(regpassword2)){
   	  	Class.forName("com.mysql.jdbc.Driver");
   	  	Connection con2 = DriverManager.getConnection("jdbc:mysql://172.99.96.76/956744_marlabs","956744_root","Marlabs12java");
   	  	Statement sm2 = con2.createStatement();
   	  	ResultSet rs=sm2.executeQuery("select * from User where username='"+regusername+"'");
   	  	if(rs.next()){ 
   	  		request.setAttribute("regerrmsg", "Username already exists!");
      		RequestDispatcher dispatch = request.getRequestDispatcher("register.jsp") ;
		  	dispatch.forward(request, response);
      	}
   	  	else{
   	  		PreparedStatement ps = con2.prepareStatement("insert into User (userid,username,upassword) values (?,?,?)");
   	  		ps.setString(1,regusername);
   	  		ps.setString(2,regusername);
   	  		ps.setString(3,regpassword);
   	  		ps.executeUpdate();
   	  		request.setAttribute("errmsg", "Successfully registered!");
		  	RequestDispatcher dispatch = request.getRequestDispatcher("Login.jsp") ;
	  		dispatch.forward(request, response);
      	}
   	  }
   	  else
   	  {
      	request.setAttribute("regerrmsg", "Check password!");
      	RequestDispatcher dispatch = request.getRequestDispatcher("register.jsp") ;
      	dispatch.forward(request, response);  
   	  }
   	  
   
   %>
   
   
   
</h2>

</body>
</html>