<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
     background-image: url("aWzmylZ.jpg");
     background-repeat: no-repeat;
     background-size: cover;
     height:651px;
    }
.logout {
margin-left: 1270px;
margin-top: -200px;
height: 35px;
border-radius: 4px;
border: 1px solid #3079ed;
background-color: rgba(9, 11, 37, 0.73);;
color: white;
font-weight: bold;
}
.heading {
font-size: 20px;
}
.fun {
height: 35px;
width: 80px;
border-radius: 4px;
border: 1px solid #3079ed;
background-color: rgba(9, 11, 37, 0.73);
color: white;
font-size:18px;
}
</style>
<script type="text/javascript">
function same() {
	var places1 = document.getElementById("place").value;
	var places2 = document.getElementById("places").value;
	console.log(places1);
	console.log(places2);
	if(places1 == places2) {
		alert("Select different places");
		return false;
	}
}
</script>
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
<body style = "font-size:20px">
<form action = "/session" method = "post">
<input type ="submit" value = "Logout" onclick="window.location.href='index.html'" class ="logout" width="48" height="48"/>
<img src = "logo.png" style="width:170px; height:80px;">
<hr/>
<div class = "heading"><h1>From
&nbsp;&nbsp;&nbsp;
<select id = "place" required>
<option></option>
<option value="Ariyalur">Ariyalur</option>
<option value="Chennai">Chennai</option>
<option value="Coimbatore">Coimbatore</option>
<option value="Cuddalore">Cuddalore</option>
<option value="Dharmapuri">Dharmapuri</option>
<option value="Dindigul">Dindigul</option>
<option value="Erode">Erode</option>
<option value="Kanchipuram">Kanchipuram</option>
<option value="Kanyakumari">Kanyakumari</option>
<option value="Karur">Karur</option>
<option value="Madurai">Madurai</option>
<option value="Nagapattinam">Nagapattinam</option>
<option value="Namakkal">Namakkal</option>
<option value="Perambalur">Perambalur</option>
<option value="Pudukkottai">Pudukkottai</option>
<option value="Ramanathapuram">Ramanathapuram</option>
<option value="Salem">Salem</option>
<option value="Sivaganga">Sivagangai</option>
<option value="Thanjavur">Thanjavur</option>
<option value="The Nilgiris">The Nilgiris</option>
<option value="Theni">Theni</option>
<option value="Thoothukudi">Thoothukudi</option>
<option value="Tiruchirappalli">Tiruchirappalli</option>
<option value="Tirunelveli">Tirunelveli</option>
<option value="Tiruppur">Tiruppur</option>
<option value="Tiruvallur">Tiruvallur</option>
<option value="Tiruvannamalai">Tiruvannamalai</option>
<option value="Tiruvarur">Tiruvarur</option>
<option value="Vellore">Vellore</option>
<option value="Vilupuram">Vilupuram</option>
<option value="Viruthunagar">Viruthunagar</option>
</select>

&nbsp;&nbsp;&nbsp;To 
&nbsp;&nbsp;&nbsp; 
<select id = "places" required>
<option></option>
<option value="Ariyalur">Ariyalur</option>
<option value="Chennai">Chennai</option>
<option value="Coimbatore">Coimbatore</option>
<option value="Cuddalore">Cuddalore</option>
<option value="Dharmapuri">Dharmapuri</option>
<option value="Dindigul">Dindigul</option>
<option value="Erode">Erode</option>
<option value="Kanchipuram">Kanchipuram</option>
<option value="Kanyakumari">Kanyakumari</option>
<option value="Karur">Karur</option>
<option value="Madurai">Madurai</option>
<option value="Nagapattinam">Nagapattinam</option>
<option value="Namakkal">Namakkal</option>
<option value="Perambalur">Perambalur</option>
<option value="Pudukkottai">Pudukkottai</option>
<option value="Ramanathapuram">Ramanathapuram</option>
<option value="Salem">Salem</option>
<option value="Sivaganga">Sivagangai</option>
<option value="Thanjavur">Thanjavur</option>
<option value="The Nilgiris">The Nilgiris</option>
<option value="Theni">Theni</option>
<option value="Thoothukudi">Thoothukudi</option>
<option value="Tiruchirappalli">Tiruchirappalli</option>
<option value="Tirunelveli">Tirunelveli</option>
<option value="Tiruppur">Tiruppur</option>
<option value="Tiruvallur">Tiruvallur</option>
<option value="Tiruvannamalai">Tiruvannamalai</option>
<option value="Tiruvarur">Tiruvarur</option>
<option value="Vellore">Vellore</option>
<option value="Vilupuram">Vilupuram</option>
<option value="Viruthunagar">Viruthunagar</option>
</select>
</h1></div>
</form>
&nbsp;&nbsp;&nbsp;
<form action="seat.jsp">
<input type = "submit" class = "fun" value = "Submit" onclick = "return same()">
</form>
</body>
</html>
