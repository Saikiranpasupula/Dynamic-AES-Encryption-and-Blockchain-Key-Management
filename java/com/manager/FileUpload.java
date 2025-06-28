package com.manager;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.websocket.Session;

import com.bean.RandomStringGenerator;
import com.database.Dbconnection;
import com.file.AESKeyGeneration;
import com.file.SHA256Genearation;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/upload")
@MultipartConfig
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUpload() {
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
		
        Part filePart = request.getPart("file"); 
        String filename = request.getParameter("filename");

        HttpSession session = request.getSession();
        String mid = (String) session.getAttribute("email");

        // Read file content directly into memory (as text)
        StringBuilder stringBuilder = new StringBuilder();
        String line;
        InputStream fileContent = filePart.getInputStream(); // Get InputStream only once

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(fileContent))) {
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line).append("\n");
            }
        }

        // Convert file content to string
        String fileData = stringBuilder.toString();
     

        try {
        	PrintWriter out=response.getWriter();
            
            fileContent.close(); 
            fileContent = filePart.getInputStream(); 

            String sha256Hash = SHA256Genearation.calculateSHA256(fileContent);
            
            String fid=RandomStringGenerator.generateRandomString(5);
            // Step 2: Generate AES key
            SecretKey secretKey = AESKeyGeneration.generateAESKey(256);  // You can use 128 or 192 as well
            String hexKey = AESKeyGeneration.bytesToHex(secretKey.getEncoded());
            String newKey = hexKey.substring(0, 16); // Use the first 16 bytes for the AES key

            // Step 3: Insert data into the database
            String insert = "INSERT INTO fileupload (fileid, filename, sha_256, managerid, aes_key, data,privatekey) VALUES (?, ?, ?, ?, ?,?,?)";
            Connection connection = Dbconnection.getconnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, fid);
            preparedStatement.setString(2, filename);
            preparedStatement.setString(3, sha256Hash);
            preparedStatement.setString(4, mid);
            preparedStatement.setString(5, newKey);
            preparedStatement.setString(6, fileData);
            preparedStatement.setString(7, "pending");
            

            int result = preparedStatement.executeUpdate();
            if (result != 0) {
                response.sendRedirect("fsucess.jsp");
            } else {
                out.println("<h3>File Not Uploaded Please try again </h3>");
            }

        } catch (Exception e) {
            // Catch any exception and print the stack trace
            e.printStackTrace();
        }
	}
}
