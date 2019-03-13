package com.project;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MySQLAccess {

	public static Connection getConnection() throws Exception {
		// load the MySQL driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookschema", "root", "toor");
		return con;
	}

	public static ArrayList<Discussions> getChats() {
		try {
			Connection con = getConnection();
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from discussion");
			ArrayList<Discussions> data = new ArrayList<>();
			while (resultSet.next()) {
				Discussions obj = new Discussions();
				obj.setUsername(resultSet.getString("username"));
				obj.setMessage(resultSet.getString("message"));
				obj.setPosted_on(resultSet.getDate("posted_on"));
				data.add(obj);
			}
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean insertUser(String username, String password, String email) {
		try {
			Connection con = getConnection();
			String query = "insert into users(username, password, email) values(?,?,?)";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, username);
			statement.setString(2, password);
			statement.setString(3, email);
			statement.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean checkCredentials(String username, String password) {
		try {
			Connection con = getConnection();
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from users");
			while (resultSet.next()) {
				if (resultSet.getString("username").equals(username)
						&& resultSet.getString("password").equals(password))
					return true;
			}
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static ArrayList<Books> getBooksForGenre(String genre) {
		try {
			Connection con = getConnection();
			String query = "select * from bookschema.books where genre = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, genre);
			ResultSet resultSet = statement.executeQuery();
			ArrayList<Books> data = new ArrayList<Books>();
			while (resultSet.next()) {
				Books book = new Books();
				book.setBookname(resultSet.getString("bookname"));
				book.setAuthor_name(resultSet.getString("author"));
				book.setRating(resultSet.getString("rating"));
				book.setGenre(resultSet.getString("genre"));
				book.setPublishedDate(resultSet.getDate("published"));
				book.setDescription(resultSet.getString("description"));
				data.add(book);
			}
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static ArrayList<Books> getBooksByName(String name) {
		try {
			Connection con = getConnection();
			String query = "select * from bookschema.books bookname = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, name);
			ResultSet resultSet = statement.executeQuery();
			ArrayList<Books> data = new ArrayList<Books>();
			while (resultSet.next()) {
				Books book = new Books();
				book.setBookname(resultSet.getString("bookname"));
				book.setAuthor_name(resultSet.getString("author"));
				book.setRating(resultSet.getString("rating"));
				data.add(book);
			}
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static boolean createBook(String bookname, String author, String genre, String description, Date date) {
		try {
			Connection con = getConnection();
			String query = "insert into books(bookname, author, genre, description, published) values(?,?,?,?,?)";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, bookname);
			statement.setString(2, author);
			statement.setString(3, genre);
			statement.setString(4, description);
			statement.setDate(5, date);
			statement.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// Close the resultSet
	private void close() {
		try {
//	      if (resultSet != null) {
//	        resultSet.close();
//	      }

//	      if (statement != null) {
//	        statement.close();
//	      }

//	      if (connect != null) {
//	        connect.close();
//	      }
		} catch (Exception e) {

		}
	}
}
