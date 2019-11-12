<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>YuvakDATA</title>
</head>
<body>
 <center> <h1>Yuvak List</h1> </center>
 <table align = "center" cellpadding = "5" cellspacing = "5" border = "5">
 <tr> 
    <td><b>NO.</b></td>
	<td><b>FirstName</b></td>
	<td><b>LastName</b></td>
	<td><b>Address</b></td>
	<td><b>Age</b></td>
	<td><b>Edit</b></td>
	<td><b>Delete</b></td>
 </tr>
 
 <%@ page import="java.sql.*"%>
 <%@ page import="javax.sql.*"%>

	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");  

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
			Statement stmt = conn.createStatement();

			String sql = "select * from yuvaks";
			ResultSet rows = stmt.executeQuery(sql);

			while(rows.next())
			{
				String num = rows.getString("Id");
	%>
	      <tr>
	            <td> <%= rows.getString("Id") %> </td>
				<td> <%= rows.getString("FirstName") %> </td>
				<td> <%= rows.getString("LastName") %> </td>
				<td> <%= rows.getString("Address") %> </td>
				<td> <%= rows.getString("Age") %> </td>
				<td>  <a href="Edit.jsp">Edit</a> </td>
				<td>  <a href="deleteProduct?code=${product.code}">Delete</a> </td>
	      </tr>
	     
	<%			
			}
			conn.close();
		}

		catch (Exception ex)
	    {
			out.println("Error: " + ex.getMessage());
		}
	%>
 
    </table>
</body>
</html>