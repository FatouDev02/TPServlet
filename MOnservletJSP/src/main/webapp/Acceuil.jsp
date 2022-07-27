<%@page import="com.test.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<link rel="stylesheet" type="text/css" href="./css/accueil.css">
</head>
<body>
		 
<h3> Bonjour ${Ps} </h3>
<p> Liste des  Utilisateurs</p>

<table>
<tr>
<td>Nom </td>
<td>Prenom</td>
<td>Pseudo </td>
<td>Email</td>
</tr>

   <%
   	   List<User>  users = (ArrayList<User>)session.getAttribute("liste");
   		for(User user : users) {
   			%>
   			
   			<tr>
			<td><% out.print(user.getNom());%> </td>
			<td><% out.print(user.getPrenom());%> </td>
			
			<td><% out.print(user.getPseudo());%> </td>
			
			<td><% out.print(user.getEmail());%> </td>
			
			
			</tr>
   			<%
   		}
   			%>
   		
</table>




<form action="/MOnservletJSP/sserve" method="post">

<input type="submit" value="Logout"  class="btn btn-dark mb-2" id="btn">
	
</form>


</body>
</html>