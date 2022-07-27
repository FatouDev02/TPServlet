package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.User;


@WebServlet(name="monserve",urlPatterns= {"/serve"})
public class MonServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		}
	
		/**
		* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		*/
		protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
			
			response.setContentType("text/html;charset=UTF-8");
			
				 String nom=request.getParameter("nom");
			     String prenom=request.getParameter("prenom");
			     String pseudo=request.getParameter("pseudo");
			     String email=request.getParameter("email");
			     String password=request.getParameter("password");
			     String password2=request.getParameter("password2");
			     
			     if(nom.trim().equals("") || prenom.trim().equals("") || pseudo.trim().equals("") || email.trim().equals("") || password.trim().equals("") || password2.trim().equals("")) {
			    	 
			    	 request.setAttribute("erreur", "Remplissez tout les champs");
			    	 request.getRequestDispatcher("Inscrire.jsp").forward(request,response);
			    	 
			     } else {
			    	 if(password.equals(password2)) {
			    		 HttpSession session = request.getSession();
					      System.out.println(nom);
					      List<User> arr = (List)session.getAttribute("liste");
					      
					      User list = new User(nom, prenom,pseudo,email,password, password2);
					      if(arr == null) {
					  		
					    	  arr = new ArrayList<User>();
					      }
					     
					      arr.add(list);
					      request.setAttribute("nom", nom);
					      session.setAttribute("liste", arr);
					      request.getRequestDispatcher("Acceuil.jsp").forward(request,response);
			    		 
			    	 } else {
			    		 request.setAttribute("erreur", "vos mot de passe doivent etre identique");
				    	 request.getRequestDispatcher("Inscrire.jsp").forward(request,response);
			    		 
			    	 }
			    	 
			     }
				
			      

		}
}
