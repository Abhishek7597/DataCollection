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
	<%@ page import="javax.swing.*"%>

    <form method = try>

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



	<%
		try {
			
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String address = request.getParameter("address");
			String age =request.getParameter("age");
			
			Class.forName("com.mysql.jdbc.Driver");  

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
			Statement stmt = conn.createStatement();

			String sql = "UPDATE FirstName = '"+firstName+"',LastName = '"+lastName+"',Address = '"+address+"',Age = '"+age+"' where Id = '"+request.getParameter("num")+"'";
			String sql2 = "Delete from yuvaks where FirstName = 'null' and LastName = 'null' and Address = 'null' and Age = 'null'";
			//select userId, password from test.user where userId = 'Abhishek' and password = 'abhi'
			int rows = stmt.executeUpdate(sql);
			int rows2= stmt.executeUpdate(sql2);
			
			conn.close();
		}

		catch (Exception ex) {
			out.println("Error: " + ex.getMessage());
		}
	%>
</body>
</html>