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
<title>Insert title here</title>
</head>
<body bgcolor="66BB99">

   <h2>
   <%
      String username = request.getParameter("username");
   	  String password = request.getParameter("password");
   	  // response.sendRedirect("");
   	  session.setAttribute("username", username);
   	  session.setAttribute("password", password);
   	  Class.forName("com.mysql.jdbc.Driver");
   	  Connection con = DriverManager.getConnection("jdbc:mysql://172.99.96.76/956744_marlabs","956744_root","Marlabs12java");
   	  Statement sm = con.createStatement();
   	  ResultSet rs=sm.executeQuery("select * from User where username='"+username+"'"+"and upassword='"+password+"'");
   	  if(rs.next()){ 
   		  session.setAttribute("userid", rs.getString(1));   		  
      }
   	  else{
   	      request.setAttribute("errmsg", "Invalid username or password! Try again.");
          //response.sendRedirect("error.jsp");
          RequestDispatcher dispatch = request.getRequestDispatcher("Login.jsp") ;
  		  dispatch.forward(request, response);
      }
   
   %>
   
   
   <br> Welcome, <% out.println(session.getAttribute("username")); %>
   

   <br><a href="WishList.jsp">View wishlist</a>
   <br><a href="logout.jsp">Logout</a>
   
   
</h2>
</body>
</html>