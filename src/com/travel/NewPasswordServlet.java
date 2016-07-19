package com.travel;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

@SuppressWarnings("serial")
public class NewPasswordServlet extends HttpServlet {
	@SuppressWarnings("unused")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
	{
		//response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String pass = request.getParameter("pass1");
		String email=request.getParameter("email");
		boolean check=false;
		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
		Entity user = new Entity("User");
		Query query=new Query("User");
		PreparedQuery preparedQuery=ds.prepare(query);
		Iterable<Entity> iterable=preparedQuery.asIterable();
		for(Entity e:iterable)
		{
			if(e.getProperty("Email").equals(email))
			{
				out.println("<html><body><script>");
				out.println("alert('Password changed successfully');");
				out.println("</script></body></html>");
				RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
				check=true;
				break;
			}
		}
		if(check==false)
		{
				out.println("<html><body><script>");
				out.println("alert('E-mail id does not exists');");
				out.println("</script></body></html>");
		}
	}
}