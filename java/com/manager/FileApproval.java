package com.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.Dbconnection;

/**
 * Servlet implementation class FileApproval
 */
@WebServlet("/FileApproval")
public class FileApproval extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileApproval() {
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
		
		String filename=request.getParameter("filename");
		String encrypteddata=request.getParameter("encryptedData");
		String mid=request.getParameter("mid");
		
		HttpSession session=request.getSession();
        String client=(String)session.getAttribute("client");
        
		
		String insert="insert into requestfiles (filename,encrypt_data,cemail,privatekey,managerid) values(?,?,?,?,?)";
		try {
			Connection connection= Dbconnection.getconnection();
			PreparedStatement preparedStatement= connection.prepareStatement(insert);
			preparedStatement.setString(1, filename);
			preparedStatement.setString(2, encrypteddata);
			preparedStatement.setString(3, client);
			preparedStatement.setString(4, "pending");
			preparedStatement.setString(5, mid);
			int result= preparedStatement.executeUpdate();
			if(result!=0)
			{
				response.sendRedirect("RequestHome.jsp");
			}
			else
			{
			    PrintWriter writer=response.getWriter();
			    writer.println("<center><h2> Sorry request for the file has been Declined!!. Please try again!!");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
