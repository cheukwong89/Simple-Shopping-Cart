package com.team2.servlet;

import com.team2.ConnectionManager;
import com.team2.beans.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WishlistServlet
 */
@WebServlet("/WishlistServlet")
public class WishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishlistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PreparedStatement ps;
		ResultSet rset = null;
		WishlistBean wb = new WishlistBean();
		String pid = request.getParameter("pid");
		String userid = (String)request.getSession().getAttribute("userid");
		String dpid = request.getParameter("productid");
		String action = request.getParameter("action");
		request.setAttribute("pid", pid);
		request.setAttribute("userid", userid);
		if(userid == null){
			RequestDispatcher requestDispatcher;
			requestDispatcher = request.getRequestDispatcher("Login.jsp");
			requestDispatcher.forward(request, response);
		}
		wb.setPid(pid);
		wb.setPid(userid);
//		PrintWriter pw = response.getWriter();
//		pw.println("pid" + pid);
//		pw.println("userid" + userid);
		
		try{
			Connection conn =  ConnectionManager.getMysqlConnection();
//			rset = executeSQL(pid, conn);
			if(pid != null){
			String insertQ = "insert into Wishlist (userid, pid) values(?,?)";
			ps = conn.prepareStatement(insertQ);
			ps.setString(1, userid);
			ps.setString(2, pid);
			ps.execute();
			request.getSession().setAttribute("pid", null);
			}
			if(dpid != null){
				String deleteQ = "delete from Wishlist where pid = ?, userid=?";
				ps = conn.prepareStatement(deleteQ);
				ps.setString(1, dpid);
				ps.setString(2, userid);
				ps.execute();
			}

			String query="select * from Product where pid in (select pid from Wishlist where userid=?)";
			ps=conn.prepareStatement(query);
			ps.setString(1, userid);
			rset=ps.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		request.setAttribute("resultset", rset);
		
		RequestDispatcher requestDispatcher;
		requestDispatcher = request.getRequestDispatcher("WishList.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
