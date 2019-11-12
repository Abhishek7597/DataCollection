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
	<%@ page import="javax.swing.*" %>>

	<%
		try {
			String userName = request.getParameter("id");
			String password = request.getParameter("pass");
			
			
			
			Class.forName("com.mysql.jdbc.Driver");  

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
			Statement stmt = conn.createStatement();

			String sql = "select userId, password from test.user where userId = '" + userName + "' and password = '" + password + "'";
			//select userId, password from test.user where userId = 'Abhishek' and password = 'abhi'
			ResultSet rows = stmt.executeQuery(sql);
      
			
			if(rows.next())
			{
				response.sendRedirect("YuvakData.jsp");
			}
			else
			{   
				 %> <script>
				    alert("Please Enter Velid ID and PASSWORD!");
					</script> <% 
					
			}
			
			conn.close();
		}

		catch (Exception ex) {
			out.println("Error: " + ex.getMessage());
		}
	%>
</body>
</html>