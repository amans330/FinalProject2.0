package com.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainListener..
 */
@WebServlet("/MainListener")
public class MainListener extends HttpServlet {
	private static Connection connect = null;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainListener() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Books> data;
		if(request.getHttpServletMapping().getPattern().contains("Search")){
			String searchstring = request.getParameter("searchstring"); 
			data = MySQLAccess.getBooksByName(searchstring);
		}else {
			String genre = request.getParameter("genre"); 
			
			data = MySQLAccess.getBooksForGenre(genre);
		}
		request.setAttribute("booklist", data);
		request.getRequestDispatcher("/genre.jsp").forward(request, response);;
//		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getHttpServletMapping().getPattern().contains("RegisterUser")) {
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			boolean done = MySQLAccess.insertUser(username, password, email);
			if(done == true) {
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.include(request, response);
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
				response.getWriter().println("<font color=red>Cannot create User. Try again.</font>");
				rd.include(request, response);
			}
		}
		
		if(request.getHttpServletMapping().getPattern().contains("MyLogin")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if(MySQLAccess.checkCredentials(username, password) == true) {
				request.setAttribute("username", username);
				request.getRequestDispatcher("/index.jsp").forward(request, response); 
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				response.getWriter().println("<font color=red>Wrong user name or password </font>");
				rd.include(request, response);
			}
		}

	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
