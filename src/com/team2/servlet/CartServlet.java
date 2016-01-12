package com.team2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team2.Cart;
import com.team2.ConnectionManager;
import com.team2.Product;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
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
		/*System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("action"));
		System.out.println(request.getParameter("num"));
		if (request.getParameter("action").equals("add")) {
			boolean isAdded = addToCart(request, response);
			if (isAdded) {
				System.out.println("Added item");
			} else {
				System.out.println("Item not added successfully");
			}
		}*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(request.getParameter("action")!=null)
		{
			this.action = request.getParameter("action");
			if(action.equals("add")) 
			{
				if(addToCart(request,response))
				{
					request.getRequestDispatcher("/success.jsp").forward(request, response);
				}
				else
				{
					request.getRequestDispatcher("/failure.jsp").forward(request, response);
				}
			}
			if(action.equals("show"))
			{
				request.getRequestDispatcher("/shoppingcart.jsp").forward(request, response);
			}
			if(action.equals("delete"))
			{
				if(deleteFromCart(request,response))
				{
					request.getRequestDispatcher("/shoppingcart.jsp").forward(request, response);
				}
				else
				{
					request.getRequestDispatcher("/shopping.jsp").forward(request, response);
				}
			}
		}
	}
	
	private boolean addToCart(HttpServletRequest request, HttpServletResponse response)
	{
		String id = request.getParameter("id");
		int number = Integer.parseInt(request.getParameter("num"));
		Product product = new Product();
		product.setId(id);
		
		ResultSet rs = null;
		
		try {
			Connection conn = ConnectionManager.getMysqlConnection();
			String sql = "select * from Product where pid = ?;";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			if (rs != null && rs.next()) {
				product.setName(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				product.setBrand(rs.getString(5));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
						
		if(request.getSession().getAttribute("cart")==null)
		{
			Cart cart = new Cart();
			request.getSession().setAttribute("cart",cart);
		}
		Cart cart = (Cart)request.getSession().getAttribute("cart");
		if(cart.addItemsInCart(product, Integer.parseInt(request.getParameter("num"))))
		{
			request.getSession().setAttribute("cart",cart);
			return true;
		}
		else
		{
			return false;
		}
		
	}
	
	private boolean deleteFromCart(HttpServletRequest request, HttpServletResponse response)
	{
		String id = request.getParameter("id");
		Cart cart = (Cart)request.getSession().getAttribute("cart");
	    Product product = new Product();
	    product.setId(id);
	    if(cart.removeItemsFromCart(product))
	    {
	    	return true;
	    }
	    else
	    {
	    	return false;
	    }
	}

}
