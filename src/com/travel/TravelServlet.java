package com.travel;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class TravelServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
		Cookie c = new Cookie("user", "name");
		response.addCookie(c);
		out.println("<P>");
	    out.print("<form action=\"");
	    out.print(response.encodeURL("register"));
	    out.print("\" ");
	    out.println("method=POST>");
	    out.println("<input type=submit value=\"Click Me\">");
	    out.println("</form>");
}
}	
