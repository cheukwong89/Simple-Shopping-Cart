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
	private String pid = "1";
	private String query;
	private ResultSet rset;
	private static final long serialVersionUID = 2L;
	
	public ResultSet executeSQL (String pid, Connection c){
		this.pid = pid;
		ResultSet result = null;
		query = "selct * from WishList where pid = ";
		try{
			PreparedStatement sql = c.prepareStatement(query + pid);
			result = sql.executeQuery();		
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public int doStartTag() throws JspException {
		Connection conn =  ConnectionManager.getMysqlConnection();
		JspWriter out=pageContext.getOut();
//		rset = executeSQL(pid, conn);

		try{
			PreparedStatement s = conn.prepareStatement("selct * from Wishlist");
			rset = s.executeQuery();
			while(rset.next()){
				out.println("<h1>" + rset.getString(0) + "</h1>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

}
