package com.travel;

import java.io.IOException;
import java.io.PrintWriter;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;

import javax.servlet.*;  
import javax.servlet.http.*; 

@SuppressWarnings("serial")
public class ValidateServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
	{
		response.setContentType("text/html");
		
			String email = request.getParameter("email");
			String pass = request.getParameter("password");
			DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
			Query q = new Query("User");
		    PreparedQuery pq = ds.prepare(q);
		    Iterable<Entity> it = pq.asIterable();
		    boolean valid = false;
		    for(Entity ent: it)
		    {
		    	
		    	if(ent.getProperty("Email").equals(email) && ent.getProperty("Password").equals(pass))
		    	{
		    		valid = true;
		    	}
		    }
		    if(valid)
		    {
		    	HttpSession session = request.getSession();
		    	String uemail = request.getParameter("email");
		    	session.setAttribute("mailid",uemail);
		    	response.sendRedirect("home.jsp");
		    }
		    else
		    {
		    PrintWriter out = response.getWriter(); 
		    out.println("<html><head><script>window.alert('Enter Valid Mail Id and Password');</script></head></html>");
		    RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
		    dis.forward(request, response);
		    }
		}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
	{
		doPost(request,response);
	}
}


			
		
