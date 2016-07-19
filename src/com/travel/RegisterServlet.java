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
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upass = request.getParameter("password");
		String umobile = request.getParameter("mobileno");
	    DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
	    Entity e = new Entity("User",request.getParameter("email"));
	    e.setProperty("Name",request.getParameter("name"));
	    e.setProperty("Email",request.getParameter("email"));
	    e.setProperty("Password",request.getParameter("password"));
	    e.setProperty("RePassword",request.getParameter("password1"));
	    e.setProperty("Gender",request.getParameter("gender"));
	    e.setProperty("MobileNo",request.getParameter("mobileno"));
	    
	    String emailid = request.getParameter("email");
		DatastoreService ds1 = DatastoreServiceFactory.getDatastoreService();
		Query q = new Query("User");
	    PreparedQuery pq = ds1.prepare(q);
	    Iterable<Entity> it = pq.asIterable();
	    boolean validate = false;
	    RequestDispatcher disp;
	    for(Entity ent: it)
	    {
	    	
	    	if(ent.getProperty("Email").equals(emailid))
	    	{
	    		validate = true;
	    	}
	    }
	    	if(validate) {
			    out.println("<html><head><script>window.alert('Email Id already exists');</script></head></html>");
			    disp=request.getRequestDispatcher("signup.jsp");
			    disp.forward(request, response);
	    	}
	    	else {
	    		out.println("Name:" +uname);
			    out.println("Email:" +uemail);
			    out.println("password:" +upass);
			    out.println("Mobile:" +umobile);
			    out.println("<html>");
			    out.println("<head>");
			    out.println("<body>");
			    out.println("<form action = 'home.jsp';>");
			    out.println("<input type = 'submit' value = 'Click me'>");
			    out.println("</form>");
			    out.println("</body>");
			    out.println("</head>");
			    out.println("</html>");
			    disp=request.getRequestDispatcher("/fetch");
			    disp.forward(request, response);
			    
	    	}
	    	
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