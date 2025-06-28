package com.manager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.Dbconnection;



/**
 * Servlet implementation class Registration
 */
@WebServlet("/MRegistration")
public class MRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		
		String name=request.getParameter("name");
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		long mobilenumber=Long.parseLong(request.getParameter("mobilenumber"));
		String gender=request.getParameter("gender");
		Date dateofbirth=Date.valueOf(request.getParameter("dateofbirth"));
		String address=request.getParameter("address");
		
		
		String insert="insert into mregistration (name,emailid,password,mobilenumber,gender,dateofbirth,address) values(?,?,?,?,?,?,?)";
		
		 Connection connection = null;
	     PreparedStatement preparedStatement = null;
		
	     
         try {
			connection = Dbconnection.getconnection();
			preparedStatement= connection.prepareStatement(insert);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, emailid);
			preparedStatement.setString(3, password);
			preparedStatement.setLong(4, mobilenumber);
			preparedStatement.setString(5, gender);
			preparedStatement.setDate(6, dateofbirth);
			preparedStatement.setString(7, address);
			int result=preparedStatement.executeUpdate();
			if(result!=0)
			{
				response.sendRedirect("MLogin.html");
			}
			else
			{
				response.sendRedirect("MRegistration.html");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
