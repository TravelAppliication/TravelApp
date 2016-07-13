<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign up page</title>
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

<script type="text/javascript">
function checkValidate()
{
	var text = document.getElementById("name").value;
	var letter = /^[a-zA-Z]+$/;
	if(!letter.test(text)) {
		alert("Enter the proper detail");
		return false;
	}
	var fpassword = document.f1.password.value;
	var spassword = document.f1.password1.value;
	if(!(spassword==fpassword))
	{
		alert("Password should be same");
		return false;
	}
	else
		{
			return true;
		}
}
function validate() {  
	var msg;  
	if(document.f1.password.value.length<8){  
	msg="Enter 8 characters";  
	}  
	else {
		msg=null;
	}
	document.getElementById('location').innerText=msg;  
	 }  
</script>
<body>
<div class="sign">
<a class="back" href="index.html">Back</a><br><br>
<form name = "f1" class="user" onsubmit="return checkValidate()" method = "post" action="/register">
<img src = "logo.png" style="width:170px; height:80px;">
<fieldset class="border">
<label> Name: </label><input type="text" name="name" id="name" required placeholder = "Enter Name"> <br><br>
<label> Email: </label><input type="email" name="email" id="email" required placeholder = "Enter Email"><br><br>
<label> Password: </label>
<input type="password" name="password" class = "pass" onkeyup = "validate()" id="password" required placeholder = "Enter Password">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="location" ></span><br><br>  
<label>Re-Enter Password: </label> <input type="password" name="password1" id="repass" required placeholder = "Re-Enter Password"><br><br>
<label>Gender: </label><input type="radio" name="gender" id="gender" required> Male
<input type="radio" name="gender"> Female<br><br>
<label>Mobile Number:</label> <input type="number" name="mobileno" id="mobnumber" required placeholder = "Enter Mobile Number"><br><br>
<div class="button">
<input type="submit" value="Sign Up">
<input type = "reset" value = "Reset">
</div>
</fieldset>
</form>
</div>
</body>
</html>