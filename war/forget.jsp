<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot page</title>
<style type="text/css">
*{
margin:0px;
}
.back{
float:right;
margin-top:30px;
margin-right: 50px;
text-decoration:none;
color:black;
font-size:25px;
}
.user{
width:500px;
margin:0 auto;
text-align:center;
padding-top:80px;
}

.user label{
display:block;
float:left;
width:175px;
}
.pass {
margin:5px;
}

.border{
border-width:10px;
background-color:rgba(211, 211, 211, 0.42);
}
.sign {

font-size: 20px;
background: url("greyhound-travel-passes-hop-on-hop-off-km-austraia-oz-epic-gap-year-1 (1).jpg");
background-repeat: no-repeat;
background-size:cover;
height:667px;

}
.button {
font: bold 20px garmond;
}
</style>
</head>
<body>
<div class = "sign">
<a class="back" href="login.jsp">Back</a><br><br>
<form class = "user" action="/newPassword" method="post">
<img src="logo.png" style="width:170px;height:80px;"><br><br>
<fieldset class = "border">
<label>Email:</label> 
<input type = "email" placeholder="Enter mail id" name = "email"><br><br>
<label>Password:</label>
<input type = "password" placeholder = "Enter Password" name = "pass1"><br><br>
<label>Re-Enter Password:</label>
<input type = "password" placeholder = "Re-Enter Password" name = "pass2"><br><br>
<input type = "submit" class = "button" value = "Submit">
</fieldset><br>

</form>
</div>
</body>
</html>