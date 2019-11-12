<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn page</title>
</head>
<body>
<form action= "Home.jsp">
    <input type = "submit" value = "Go Back">
</form>

	<form action = "CheckLogin.jsp">
		ID: <br> <input type="text" name="id"
			placeholder="Enter your UserName"> <br> 
			
  Password: <br> <input type="password" name="pass"> <br> <input
			type="submit" value="Log In">

	</form>
	
				


</body>
</html>