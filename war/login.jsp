<!DOCTYPE html>
<html>
<head>
<title>Travel login page</title>
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
.log {
font-size:25px;
background-image:url("greyhound-travel-passes-hop-on-hop-off-km-austraia-oz-epic-gap-year-1 (1).jpg");
background-repeat: no-repeat;
height:667px;
width:100%;
background-size:cover;
}
.user{
width:500px;
margin:0 auto;
text-align:center;
padding-top:80px;
}
.user label{
text-align:center;
display:block;
float:left;
width:175px;
}

.border{
border-width:10px;
background-color:rgba(211, 211, 211, 0.42);
}

.button {
font: bold 20px garmond;

}
.pass{
font-size:20px;
}
</style>
</head>
<body>
<div class= "log">
<a class="back" href="index.html">Back</a><br><br>
<form class="user" action = "/validate" method = "post">
<img src = "logo.png" style="width:170px; height:80px;">
<fieldset class="border">
<label>Email:</label> 
<input type = "email" name = "email" id = "email" placeholder = "Enter Email Id" required><br><br>
<label>Password:</label> 
<input type = "password" name = "password" id = "password" placeholder = "Enter password" required><br><br>
<a class="pass" href="forget.jsp">Forgot Password?</a><br><br>
<input type = "submit" class="button" value = "Login">
</fieldset>
</form>
</div>
</body>
</html>