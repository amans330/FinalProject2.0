package com.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MySQLAccess {

//	private static Connection connect = null;
//	  private static Statement statement = null;
	private PreparedStatement preparedStatement = null;

	public static Connection getConnection() throws Exception {
		// load the MySQL driver
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookschema", "root", "toor");
		return con;
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
	
	public static ArrayList<Books> getBooksForGenre(String genre){
		try {
			Connection con = getConnection();
			String query = "select * from bookschema.books natural join bookschema.genre where genre_name = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, genre);
			ResultSet resultSet = statement.executeQuery();
			ArrayList<Books> data = new ArrayList<Books>();
			while(resultSet.next()) {
				Books book = new Books();
				book.setBookname(resultSet.getString("bookname"));
				book.setAuthor_name(resultSet.getString("author"));
				book.setRating(resultSet.getString("rating"));
				data.add(book);
			}
			return data;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static ArrayList<Books> getBooksByName(String name){
		try {
			Connection con = getConnection();
			String query = "select * from bookschema.books bookname = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, name);
			ResultSet resultSet = statement.executeQuery();
			ArrayList<Books> data = new ArrayList<Books>();
			while(resultSet.next()) {
				Books book = new Books();
				book.setBookname(resultSet.getString("bookname"));
				book.setAuthor_name(resultSet.getString("author"));
				book.setRating(resultSet.getString("rating"));
				data.add(book);
			}
			return data;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

//	  public void readDataBase() throws Exception {
//		  
//	    try {
//	      // This will load the MySQL driver, each DB has its own driver
//	      Class.forName("com.mysql.jdbc.Driver");
//	      
//	      // Setup the connection with the DB
//	      connect = DriverManager
//	          .getConnection("jdbc:mysql://" + host + "/feedback?"
//	              + "user=" + user + "&password=" + passwd );
//
//	      // Statements allow to issue SQL queries to the database
//	      statement = connect.createStatement();
//	      // Result set get the result of the SQL query
//	      resultSet = statement
//	          .executeQuery("select * from feedback.comments");
//	      writeResultSet(resultSet);
//
//	      // PreparedStatements can use variables and are more efficient
//	      preparedStatement = connect
//	          .prepareStatement("insert into  feedback.comments values (default, ?, ?, ?, ? , ?, ?)");
//	      // "myuser, webpage, datum, summary, COMMENTS from feedback.comments");
//	      // Parameters start with 1
//	      preparedStatement.setString(1, "Test");
//	      preparedStatement.setString(2, "TestEmail");
//	      preparedStatement.setString(3, "TestWebpage");
//	      preparedStatement.setDate(4, new java.sql.Date(2009, 12, 11));
//	      preparedStatement.setString(5, "TestSummary");
//	      preparedStatement.setString(6, "TestComment");
//	      preparedStatement.executeUpdate();
//
//	      preparedStatement = connect
//	          .prepareStatement("SELECT myuser, webpage, datum, summary, COMMENTS from feedback.comments");
//	      resultSet = preparedStatement.executeQuery();
//	      writeResultSet(resultSet);
//
//	      // Remove again the insert comment
//	      preparedStatement = connect
//	      .prepareStatement("delete from feedback.comments where myuser= ? ; ");
//	      preparedStatement.setString(1, "Test");
//	      preparedStatement.executeUpdate();
//	      
//	      resultSet = statement
//	      .executeQuery("select * from feedback.comments");
//	      writeMetaData(resultSet);
//	      
//	    } catch (Exception e) {
//	      throw e;
//	    } finally {
//	      close();
//	    }
//
//	  }

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
