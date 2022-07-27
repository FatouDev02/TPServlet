<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
<link rel="stylesheet" type="text/css" href="./css/inscrire.css">
</head>
<body>


<form action="/MOnservletJSP/serve" method="post">


<h2>  <legend> Page d'inscription </legend> </h2>
		
		<div class="mesdiv"> 
		
		<div class="form-group">
          <label for="nom">Nom</label> <br/> 
          <input type="text" class="form-control" name="nom"  placeholder="Entrer votre nom"> 
        </div>
        
        <div class="form-group">
          <label for="prenom">Prénom</label> 
          <input type="text" class="form-control" name="prenom" aria-describedby="emailHelp" placeholder="Entrer votre prenom">
        </div>
        
        <div class="form-group">
          <label for="pseudo">Pseudo</label> 
          <input type="text" class="form-control" name="pseudo" aria-describedby="emailHelp" placeholder="Enter votre pseudo">
        </div>
        
        <div class="form-group row">
          <label for="email">Email </label> 
          <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Entrer votre email">
        </div>
       
        <div class="form-group">
          <label for="password">Mot de passe </label>  
          <input type="password" class="form-control" name="password" aria-describedby="emailHelp" placeholder="Entrer votre mot de passe ">
        </div>
        
        <div class="form-group">
          <label for="password">Confirmer </label>  
          <input type="password" class="form-control" name="password2" aria-describedby="emailHelp" placeholder="Confirmer votre mot de passe">
        </div>
        <% if(request.getAttribute("erreur") != null) {%>
        	<p> <%= request.getAttribute("erreur") %></p>
        <%} %>
		<input type="submit" class="btn btn-dark mb-2" id="btn" value="Envoyer">
		</div>
	
    
	
</form>

</body>
</html>







