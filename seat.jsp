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
.title {
font-size: 20px; 
color: rgba(3, 5, 33, 0.72);
}
fieldset {
 width:1000px;
 margin : 0 auto;
 }
 label {
	margin-left: 350px;
	font-size: 25px;
}
</style>
<script type="text/javascript">
function checkDate() {
	   var selectedText = document.getElementById('date').value;
	   var selectedDate = new Date(selectedText);
	   var now = new Date();
	   if (selectedDate < now) 
	   	{
	    	alert("Date must be in the future");
	    	return false;
	   	}	
	   else 
		{
		   return true;
		}
	 }
</script>
</head>
<body>
<div class= "log">
<a class="back" href="home.jsp">Back</a><br><br>
<form  method = "post" action = "bus.jsp">
<img src = "logo.png" style="width:170px; height:80px;">
&nbsp;&nbsp;&nbsp;<label>Date of Journey </label>
&nbsp;&nbsp;&nbsp;
<input type ="Date" data-date-format="yyyy-mm-dd" id = "date" value = "Journey Date" class = "date" required="required">
<hr/>
<fieldset>
<div class = "busItem">
<h1 class = "title" title = "A/c semi Sleeper">A/C Semi Sleeper
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Boarding Time:05:00AM&nbsp;&nbsp; Drop Time:11:00AM
&nbsp;&nbsp;&nbsp;&nbsp;Fare:Rs.400
&nbsp;&nbsp;&nbsp;&nbsp;Total Seats:40
&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" Value ="View Seat" onclick = "return checkDate()">
</h1>
</div>
</fieldset>
<fieldset>
<div class = "busItem">
<h1 class = "title" title = "Non-A/C Sleeper">Non-A/C Sleeper
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Boarding Time:10:00AM&nbsp;&nbsp; Drop Time:04:00PM
&nbsp;&nbsp;&nbsp;&nbsp;Fare:Rs.400
&nbsp;&nbsp;&nbsp;&nbsp;Total Seats:40
&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" Value ="View Seat" onclick = "return checkDate()">
</h1>
</div>
</fieldset>
<fieldset>
<div class = "busItem">
<h1 class = "title" title = "A/c semi Sleeper">A/C Semi Sleeper
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Boarding Time:12:00PM&nbsp;&nbsp; Drop Time:06:00PM
&nbsp;&nbsp;&nbsp;&nbsp;Fare:Rs.400
&nbsp;&nbsp;&nbsp;&nbsp;Total Seats:40
&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" Value ="View Seat" onclick = "return checkDate()">
</h1>
</div>
</fieldset>
<fieldset>
<div class = "busItem">
<h1 class = "title" title = "Non-A/C Sleeper">Non-A/C Sleeper
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Boarding Time:02:00PM&nbsp;&nbsp; Drop Time:08:00PM
&nbsp;&nbsp;&nbsp;&nbsp;Fare:Rs.400
&nbsp;&nbsp;&nbsp;&nbsp;Total Seats:40
&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" Value ="View Seat" onclick = "return checkDate()">
</h1>
</div>
</fieldset>
<fieldset>
<div class = "busItem">
<h1 class = "title" title = "A/c semi Sleeper">A/C Semi Sleeper
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Boarding Time:04:00PM&nbsp;&nbsp; Drop Time:10:00PM
&nbsp;&nbsp;&nbsp;&nbsp;Fare:Rs.400
&nbsp;&nbsp;&nbsp;&nbsp;Total Seats:40
&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" Value ="View Seat" onclick = "return checkDate()">
</h1>
</div>
</fieldset>
<fieldset>
<div class = "busItem">
<h1 class = "title" title = "A/c Sleeper">A/C Sleeper
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Boarding Time:11:00PM&nbsp;&nbsp; Drop Time:05:00AM
&nbsp;&nbsp;&nbsp;&nbsp;Fare:Rs.400
&nbsp;&nbsp;&nbsp;&nbsp;Total Seats:40
&nbsp;&nbsp;&nbsp;&nbsp;<input type = "submit" Value ="View Seat" onclick = "return checkDate()">
</h1>
</div>
</fieldset>
</form>
</div>
</body>
</html>
