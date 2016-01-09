/**
 * 
 */
package com.team2;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import com.team2.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author Zhuo Wang
 *
 */
public class WishList extends TagSupport{
	/**
	 * 
	 */
	private String userid;
	private String pid;
	PreparedStatement ps;
	ResultSet rset;
	private static final long serialVersionUID = 2L;
	
	public ResultSet executeSQL (String pid, Connection c){
		this.setPid(pid);
		ResultSet result = null;
		String query = "selct * from WishList where pid = ";
		try{
			PreparedStatement sql = c.prepareStatement(query + pid);
			result = sql.executeQuery();		
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public int doStartTag() throws JspException {
		try{
			Connection conn =  ConnectionManager.getMysqlConnection();
			JspWriter out=pageContext.getOut();
//			rset = executeSQL(pid, conn);
			String insertQ = "insert into Wishlist (userid, pid) values(?,?)";
			ps = conn.prepareStatement(insertQ);
			ps.setString(1, userid);
			ps.setString(2, pid);
			ps.execute();

			String query="select * from Product where pid in (select pid from Wishlist where userid=?)";
			ps=conn.prepareStatement(query);
			ps.setString(1, userid);
			rset=ps.executeQuery();
			while(rset.next()){
				out.println("<h4>"+rset.getString(2)+"</h4><br />");
				out.println("<div class='big_view'>");
				out.println("<img src='"+rset.getString(4)+"' alt='' width='311' height='319' /><br />");
				out.println("<span>$"+rset.getDouble(3)+"</span>");
				out.println("</div>");	
			}
		}catch(Exception e){
			e.printStackTrace();
		}
			return SKIP_BODY;
		}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	/**
	 * @return the pid
	 */
	public String getPid() {
		return pid;
	}

	/**
	 * @param pid the pid to set
	 */
	public void setPid(String pid) {
		this.pid = pid;
	}

}
