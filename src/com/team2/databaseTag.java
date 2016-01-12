
package com.team2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class databaseTag extends TagSupport{
	private String pid;
	private String brand;
	PreparedStatement ps;
	Statement stmt;
	Connection conn;
	ResultSet rs;
	//productDetail d;
	public void setPid(String pid){
		this.pid=pid;
	}
	public String getPid(){
		return pid;
	}
	
	public int doStartTag() throws JspException {
	JspWriter out=pageContext.getOut();
	try{
		conn=ConnectionManager.getMysqlConnection();
		if(brand==null||brand.equals("all")){
			System.out.print(brand+"1");
			if(pid==null){
				String query="select * from Product";
				stmt=conn.createStatement();
				rs=stmt.executeQuery(query);
				while(rs.next()){
					out.println("<div class='item'>");
					out.println("<img src="+rs.getString(4)+" alt='' width='202' height='173' /><br />");
					out.println("<span>$"+rs.getDouble(3)+"</span><a href='index2.jsp?pid="+rs.getString(1)+"' class='view'>View</a><a href='CartServlet?id="+rs.getString(1)+"&num=1&action=add' class='buy'>Add to cart</a>");
					out.println("</div>");	
				}
			
			}
			else{
				String query="select * from Product where pid=?";
				ps=conn.prepareStatement(query);
				ps.setString(1, pid);
				rs=ps.executeQuery();
				if(rs.next()){
					out.println("<h4>"+rs.getString(2)+"</h4><br />");
					out.println("<div class='big_view'>");
					out.println("<img src='"+rs.getString(4)+"' alt='' width='311' height='319' /><br />");
					out.println("<span>$"+rs.getDouble(3)+"</span>");
					out.println("</div>");	
				}
			}
		}
		else{
			System.out.print(brand+"2");
			String query="select * from Product where brand=?";
			ps=conn.prepareStatement(query);
			ps.setString(1, brand);
			rs=ps.executeQuery();
			while(rs.next()){
				out.println("<div class='item'>");
				out.println("<img src="+rs.getString(4)+" alt='' width='202' height='173' /><br />");
				out.println("<span>$"+rs.getDouble(3)+"</span><a href='index2.jsp?pid="+rs.getString(1)+"' class='view'>View</a><a href='#' class='buy'>Add to cart</a>");
				out.println("</div>");	
			}
		}
		
	}
	catch(Exception e){
		
	}
	return SKIP_BODY;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}

}
