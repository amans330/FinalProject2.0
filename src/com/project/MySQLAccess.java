package com.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class MySQLAccess {

	private static Connection connect = null;
	  private static Statement statement = null;
	  private PreparedStatement preparedStatement = null;
//	  private ResultSet resultSet = null;

	  final private String host = "xxxxxxxxxxxxxxxxxxxxxxxx";
	  final private String user = "xxxxxxxx";
	  final private String passwd = "xxxxxxxxxxx";
	  
	  public static Connection establishConnection() {
		  try {
			  //load the MySQL driver
			  Class.forName("com.mysql.jdbc.Driver").newInstance();
			  // Setup the connection with the DB
			  connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookschema?"
							  + "user=root&password= toor");
			  return connect;
		  } catch (Exception e) {
			  return null;
		  }
	  }
	  
	  public static ResultSet getusers() {
		  ResultSet resultSet = null;
		  
		// Statements to issue SQL queries to the database
	      try {
			statement = connect.createStatement();
			resultSet = statement
					.executeQuery("select * from users");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      return resultSet;
	      // Result set get the result of the SQL query
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

	      if (statement != null) {
	        statement.close();
	      }

	      if (connect != null) {
	        connect.close();
	      }
	    } catch (Exception e) {

	    }
	  }
}
