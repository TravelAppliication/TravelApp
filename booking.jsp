<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
margin-top:30px;
margin-right: 50px;
text-decoration:none;
color:black;
font-size:25px;
}
h1 {
font-size: 30px;
text-align: center;
margin-top: 20px;
}
fieldset {
	width:400px;
	margin: 0 auto;
	margin-top: 40px;
	border-width:10px;
	background-color:rgba(211, 211, 211, 0.42);
}
.fun {
	height: 35px;
	width: 155px;
	border-radius: 4px;
	border: 1px solid #3079ed;
	background-color: rgba(9, 11, 37, 0.73);
	color: white;
	font-size: 18px;
	float: right;
	margin-right: 605px;
}

</style>
<script type="text/javascript">
function book()
{
	alert("Thanks for your booking!!!!");	
}
</script>
</head>
<body>
<div class= "log">
<a class="back" href="Bus.jsp">Back</a><br><br>
<form  method = "post" class = "user" onsubmit = "return book()" action = "booked.jsp">
<img src = "logo.png" style="width:170px; height:80px;">
<hr/>
<div class = "booking">
<h1>Bank Details</h1>
<fieldset>
<label> Bank name </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<input type = "text" name = "bname" required placeholder="Enter Bank name"><br><br>
<label> Payment Type </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type = "radio" name = "acctype" required> Credit card
<input type = "radio" name = "acctype"> Savings <br><br>
<label> Card/Account Number </label>
<input type = "text" name = "anumber" required placeholder="Enter account number"> <br><br>
</fieldset> <br>
<input type = "submit" value = "Proceed Payment" class = "fun">
</div>
</form>
</div>
</body>
</html>