<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>

	<%
		try {
			String userName = request.getParameter("userName");
			String password = request.getParameter("pass");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			
			Class.forName("com.mysql.jdbc.Driver");  

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
			Statement stmt = conn.createStatement();

			String sql = " Insert Into user (userId, password, FirstName, LastName ) values ('" +  userName + "','" + password + "','" + firstName + "','" + lastName + "')";
			int rows = stmt.executeUpdate(sql);

			//out.println(rows + " rows added to the table.");
			response.sendRedirect("Home.jsp"); 
			conn.close();
		}

		catch (Exception ex) {
			out.println("Error: " + ex.getMessage());
		}
	%>
   

</body>
</html>