package com.manager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.Dbconnection;

/**
 * Servlet implementation class MLogin
 */
@WebServlet("/MLogin")
public class MLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		session.setAttribute("email", emailid);
		
		String select="select * from mregistration where emailid=? && password=?";
		
		Connection connection = null;
	    PreparedStatement preparedStatement = null;
        ResultSet resultSet=null;
        
        try {
			connection = Dbconnection.getconnection();
			preparedStatement= connection.prepareStatement(select);
			preparedStatement.setString(1, emailid);
			preparedStatement.setString(2, password);
			resultSet= preparedStatement.executeQuery();
			
			if(resultSet.next())
		    {
				 
				 response.sendRedirect("MHome.jsp"); 
		    }
		    
	 	   else
		  {  
				response.sendRedirect("MLogin.html");
		  }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
