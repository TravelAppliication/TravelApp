
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
margin:0px;
}
body {
background-image: url("aWzmylZ.jpg");
background-repeat: no-repeat;
background-size: cover;
height:667px;
}
.back{
float:right;
margin-top:48px;
margin-right: 50px;
text-decoration:none;
color:black;
font-size:25px;
}
h1 {
	text-align: center;
	margin-top: 100px;
	font-size: 40px;
}
.logout {
	margin-top: 50px;
	margin-right: 50px;
	height: 30px;
	border-radius: 4px;
	border: 1px solid #3079ed;
	background-color: #101646;
	color: white;
	float:right;
	font-weight: bold;
}
</style>
</head>
<body>
<header>
<form method="post" action="/session" >
<input type ="submit" value = "Logout" class ="logout" />
</form>
</header>
<div class= "log">
<a class="back" href="booking.jsp">Back</a><br><br>
<form  method = "post">
<img src = "logo.png" style="width:170px; height:80px;">
<hr/>
<h1> Your Booking was successfully completed!!! </h1>
</form>
</div>

</body>
</html>