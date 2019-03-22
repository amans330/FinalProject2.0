Welcome to Munna Book Bhandar

Follow the following steps to run this project on your localhost.

1. Clone the git repository. Or import the git project directly into the eclipse workspace.
2. Download and install java on your system. Configure java path variables accordingly to point to your installed java.
2. Place the mysql-connector-java jar file in the WEB_INF>lib folder.
3. Download the MySQL database. 
4. In the Mysql terminal page, create the schema named bookschema.
5. All the queries can be found in the scrap.txt file
6. In eclipse, configure it to the following:
	a) Database: bookschema
	b) URL: jdbc:mysql://localhost:3306/bookschema
	c) User: root
	d) password: toor
	3306 is the port number.
7. Test the connection (Look for ping successfull message)
8. Start running all the sql queries to create tables in the database by using appropiate insert queries from scrap.txt
9. Download Tomcat Server v9.0 on eclipse. 
10. Right click on the server and create a new project to be run the on server. Follow the steps and select our Project to be 
run on the server on port 8080.
11. Start the server.
12. Put "http://localhost:8080/Finalproject2/" without quotes in your web browser.
13. The project should be up and running.
14. You can start by creating a user by clicking on the "register" link.