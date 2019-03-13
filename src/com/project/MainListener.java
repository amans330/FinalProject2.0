package com.project;

import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

/**
 * Servlet implementation class MainListener..
 */
@WebServlet("/MainListener")
public class MainListener extends HttpServlet {
	private HttpSession session;
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
		if(sessionActive(session)) {
			if(request.getHttpServletMapping().getPattern().contains("getChats")) {
				ArrayList<Discussions> data = MySQLAccess.getChats();
				request.setAttribute("chatList", data);
				request.getRequestDispatcher("/community.jsp").forward(request, response);
			}
			
			if(request.getHttpServletMapping().getPattern().contains("Search")){
				String searchstring = request.getParameter("searchstring"); 
				ArrayList<Books> data = MySQLAccess.getBooksByName(searchstring);
				request.setAttribute("booklist", data);
				request.getRequestDispatcher("/genre.jsp").forward(request, response);
			}
			
			if(request.getHttpServletMapping().getPattern().contains("MyServlet")) {
				String genre = request.getParameter("genre"); 
				ArrayList<Books> data = MySQLAccess.getBooksForGenre(genre);
				request.setAttribute("booklist", data);
				request.getRequestDispatcher("/genre.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
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
				session = request.getSession(); 
				session.setAttribute("username", username);
				request.setAttribute("username", username);
				request.getRequestDispatcher("/index.jsp").forward(request, response); 
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				response.getWriter().println("<font color=red>Wrong user name or password </font>");
				rd.include(request, response);
			}
		}
		
		if(sessionActive(session)) {
			
			if(request.getHttpServletMapping().getPattern().contains("postComment")) {
				String comment = request.getParameter("comment");
				String username = session.getAttribute("username").toString();
				// create a java calendar instance
				Calendar calendar = Calendar.getInstance();

				// get a java date (java.util.Date) from the Calendar instance.
				// this java date will represent the current date, or "now".
				java.util.Date currentDate = calendar.getTime();

				// now, create a java.sql.Date from the java.util.Date
				java.sql.Date date = new java.sql.Date(currentDate.getTime());
				MySQLAccess.insertComment(username, comment, date);
				boolean flag = false;
				if(flag == true) {
					RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
					rd.include(request, response);
				}else {
					RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
					rd.include(request, response);
				}
			}
			
			if(request.getHttpServletMapping().getPattern().contains("publishbook")) {
				if(!sessionActive(session))
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				String bookname = request.getParameter("bookname");
				String author = request.getParameter("author");
				String genre = request.getParameter("genre");
				String description = request.getParameter("description");
				String stringdate = request.getParameter("publisheddate");
				Date javadate;
				boolean flag = false;
				try {
					javadate = new SimpleDateFormat("dd-MM-yyyy").parse(stringdate);
					java.sql.Date sqlDate = new java.sql.Date(javadate.getTime());
					flag = MySQLAccess.createBook(bookname, author, genre, description, sqlDate);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				if(flag == true) {
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				}else {
					RequestDispatcher rd = request.getRequestDispatcher("/publish.jsp");
					response.getWriter().println("<font color=red>Cannot publish book. Try again.</font>");
					rd.include(request, response);
				}
			}
		}else {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
	
	protected boolean sessionActive(HttpSession session) {
		if(session== null)
			return false;
		return true;
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
