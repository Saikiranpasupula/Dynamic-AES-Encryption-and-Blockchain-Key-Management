package com.client;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.Dbconnection;

/**
 * Servlet implementation class FileSearch
 */
@WebServlet("/FileSearch")
public class FileSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Retrieve the search keyword from the user input
        String searchKeyword = request.getParameter("search");
        HttpSession session=request.getSession();
        String client=(String)session.getAttribute("client");
        // Query the database for files containing the search keyword
        String searchQuery = "SELECT  data,sha_256,managerid FROM fileupload WHERE filename= '"+searchKeyword+"'";

        try (Connection connection = Dbconnection.getconnection();
             PreparedStatement preparedStatement = connection.prepareStatement(searchQuery)) {

            
            

            ResultSet resultSet = preparedStatement.executeQuery();
            
            // Check if there are results and display them
            if (resultSet.next()) {
               
                String fileData = resultSet.getString("data").substring(0, 10);
                String encrypted=resultSet.getString("sha_256");
                String mid=resultSet.getString("managerid");
               
                request.setAttribute("filedata", fileData);
                request.setAttribute("mid", mid);
                
                if (request.getParameter("download") != null) {
                    request.setAttribute("EncryptedData", encrypted); // SHA-256 hash
                }


            } else {
                // If no results found, show an appropriate message
                request.setAttribute("message", "No files found matching the search term.");
            }

            // Forward back to the same page to display the result
            request.getRequestDispatcher("/FileSearch.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().append("Error occurred: ").append(e.getMessage());
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
