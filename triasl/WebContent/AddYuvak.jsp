<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD Yuvak</title>
</head>
<body>

<form action= "YuvakData.jsp">
    <input type = "submit" value = "Go Back">
</form>

	<form method = "try">

			<table border="0">
				<td>FirstName</td>
				<td><input type="text" name="firstName"
					placeholder="Enter your FirstName"></td>
				</tr>
				<tr>
					<td>LastName</td>
					<td><input type="text" name="lastName"
						placeholder="Enter your LastName"></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address"
						placeholder="Enter your Full Address"></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" name="age" placeholder="Enter your Age"></td>

				<tr> <td><input type="submit" value="submit"></td></tr>
			</table>
	</form>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>


	<%
		try {
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String address = request.getParameter("address");
			String age =request.getParameter("age");
			
			Class.forName("com.mysql.jdbc.Driver");  

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
			Statement stmt = conn.createStatement();

			String sql1 = " Insert Into yuvaks (FirstName, LastName, Address, Age) values ('" +  firstName + "','" + lastName + "','" + address + "','" + age + "')";
			String sql2 = "Delete from yuvaks where FirstName = 'null' and LastName = 'null' and Address = 'null' and Age = 'null'";
			int rows1 = stmt.executeUpdate(sql1);
			int rows2= stmt.executeUpdate(sql2);

			//out.println(rows + " rows added to the table.");
			%></br><% 
			//response.sendRedirect("YuvakData.jsp"); 
			conn.close();
		}

		catch (Exception ex) {
			out.println("Error: " + ex.getMessage());
		}
	%>
	
</body>
</html>