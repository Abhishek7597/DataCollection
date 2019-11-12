<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register pagepoopp</title>
</head>
<body>
<form action= "Home.jsp">
    <input type = "submit" value = "Go Back">
</form>
	<form action = "UsersData.jsp"><br>
	<table>
	    <tr><td>UserName:</td>
	    <td><input type="text" name="userName"
			placeholder="Enter your UserName"> <br></td></tr>
			
        <tr><td>Password:</td>
	    <td> <input type="password" name="pass"><br></td></tr>
			
	    <tr><td>First Name:</td>
	    <td> <input type= "text" name = "firstName"
	        placeholder="Enter your first name"> <br></td></tr>
	        
	    <tr><td>Last Name:</td>
	    <td><input type = "text" name = "lastName"
	        placeholder= "Enter your last name"><br></td></tr>
	      
	    <tr><td><input type = "submit" value = "submit"></td></tr>
	 </table>
     </form> 
</table>
</body>
</html>