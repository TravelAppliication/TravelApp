<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
     background-image: url("background.jpg");
     background-repeat: no-repeat;
     background-size: cover;
    }
.logout {
margin-left: 1270px;
margin-top: -200px;
height: 30px;
border-radius: 4px;
border: 1px solid #3079ed;
background-color: #4d90fe;
color: white;
font-weight: bold;
}
.dropdown {
	font-size: 15px;
	color: purple;
}
h1 {
	font-size: 20px;
	font-style: inherit;
	color:purple;
}
radio:HOVER {
	font : bold 25px garamond; 
}
</style>
<% 
response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server 
response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance 
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility 
%>
<%if(session.getAttribute("mailid")==null)
{
response.sendRedirect("login.jsp");
}
%>
<%
String umail= (String) session.getAttribute("mailid");
out.println("welcome "+ umail);
%>
</head>
<body>
<form action = "/session" method = "post">
<input type ="submit" value = "Logout" onclick="window.location.href='index.html'" class ="logout" width="48" height="48"/>
<img src = "logo.png" style="width:170px; height:80px;">
<hr/>
<h1>Select the Place:</h1>
<input type = "radio" name = "place" id = "tamilnadu" onclick = "window.location.href='tamilnadu.jsp'"> Tamil Nadu <br>
<input type = "radio" name = "place" id = "delhi"> Delhi <br>
<input type = "radio" name = "place" id = "mumbai"> Mumbai <br>
<input type = "radio" name = "place" id = "kerala"> Kerala <br>
<input type = "radio" name = "place" id = "hyderabad"> Hyderabad <br>
<input type = "radio" name = "place" id = "karnataka"> Karnataka 
</form>
</body>
</html>