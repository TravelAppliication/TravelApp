package com.travel;

import java.io.IOException;
import java.io.PrintWriter;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;


import javax.servlet.*;  
import javax.servlet.http.*; 

@SuppressWarnings("serial")
public class ForgetServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String pass = request.getParameter("password");
		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
		Entity user = new Entity("User");
		user.setProperty("password", pass);
		ds.put(user);
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel='stylesheet' type='text/css' href='Forget.css' />");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class = 'forget'>");
		out.println("<a class='back' href='login.jsp'>Back</a><br><br>");
		out.println("<form class = 'user' method = 'get' action="+response.encodeURL("login.jsp")+">");
		out.println("<img src = 'logo.png' style='width:170px; height:80px;'>");
		out.println("<fieldset class = 'border'>");
		out.println("<label>Email:</label>"); 
		out.println("<input type = 'email' name = 'email'><br><br>");
		out.println("<label>Password:</label>");
		out.println("<input type = 'password' name = 'password'><br><br>");
		out.println("<label>Re-enter Password:</label>");
		out.println("<input type = 'password' name = 'password1'><br><br>");
		out.println("<input type = 'submit' class = 'button' value = 'Submit'>");
		out.println("</fieldset>");
		out.println("</form>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
	    }
	} 
