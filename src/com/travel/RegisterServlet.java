package com.travel;

import java.io.IOException;
import java.io.PrintWriter;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

import javax.servlet.*;  
import javax.servlet.http.*; 

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
	{
		response.setContentType("text/html");
		 String uname = request.getParameter("name");
			String uemail = request.getParameter("email");
			String upass = request.getParameter("password");
			String ugender = request.getParameter("gender");
			String umobile = request.getParameter("mobileno");
			PrintWriter out = response.getWriter(); 
			out.println("Name:" +uname);
			out.println("Email:" +uemail);
			out.println("Password:" +upass);
			out.println("Gender:" +ugender);
			out.println("Mobile Number:" +umobile);
		    out.println("<P>");
		    out.print("<form action=\"home.jsp");
		    out.print("\" ");
		    out.println("method=POST>");
		    out.println("<input type=submit value=\"Click Me\">");
		    out.println("</form>");
		System.out.println("Entered servlet!");
	    DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
	    Entity e = new Entity("User",request.getParameter("email"));
	    e.setProperty("Name",request.getParameter("name"));
	    e.setProperty("Email",request.getParameter("email"));
	    e.setProperty("Password",request.getParameter("password"));
	    e.setProperty("RePassword",request.getParameter("password1"));
	    e.setProperty("Gender",request.getParameter("gender"));
	    e.setProperty("MobileNo",request.getParameter("mobileno"));
	    RequestDispatcher dis=request.getRequestDispatcher("fetch");
	    dis.forward(request, response);
	    
	    try
	    {
	    	ds.put(e);
	    }
	    catch(Exception ee)
	    {
	    	ee.printStackTrace();
	    }
	}
}