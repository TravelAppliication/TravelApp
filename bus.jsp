<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
}

body {
	background-image: url("aWzmylZ.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: 667px;
}

.back {
	float: right;
	margin-top: 30px;
	margin-right: 50px;
	text-decoration: none;
	color: black;
	font-size: 25px;
}

fieldset {
	width: 240px;
	margin: 20px auto;
}

.box {
	width: 20px;
	height: 20px;
}

h1 {
	margin: 10px auto;
	text-align: center;
}

.fun {
	height: 35px;
	width: 80px;
	border-radius: 4px;
	border: 1px solid #3079ed;
	background-color: rgba(9, 11, 37, 0.73);
	color: white;
	font-size: 18px;
	float: right;
	margin-right: 645px;
}

.seat {
	width: 150px;
	position: relative;
	bottom: 150px;
	left: 400px;
	float: right;
}

</style>
<script type="text/javascript">
	function validateSeat() 
	{

		var checks = document.getElementsByName('seat[]');
		var hasChecked = false;
		var count = 0;
		var val = 400;
		var price;
		for (var i = 0; i < checks.length; i++) 
		{
			if (checks[i].checked) 
			{
				hasChecked = true;
				count++;	
			}
			
		}
		price = count*val;
		alert("Total seats selected: " +count+"\n"+ "Total cost: " +price);
		if (hasChecked == false) 
		{
			alert("Please select at least one seat.");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<div class="log" id = "book">
		<a class="back" href="seat.jsp">Back</a><br>
		<br>
		<form name="form1" method="post" action="booking.jsp">
			<img src="logo.png" style="width: 170px; height: 80px;">
			<hr />
			<h1>Seats Availabe: 40</h1>
			<fieldset>
				<input type="checkbox" class="box" name="seat[]"> 
				<input type="checkbox" class="box" name="seat[]"> 
				<input type="checkbox" class="box" name="seat[]"> 
				<input type="checkbox" class="box" name="seat[]"> 
				<input type="checkbox" class="box" name="seat[]"> 
				<input type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"><br> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]">
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"><br><br><br> 
				<input type="checkbox" class="box" name="seat[]">
				<input type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"><br> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]"> 
				<input	type="checkbox" class="box" name="seat[]">
			</fieldset>
			<input type="submit" class="fun" value="Proceed"
				onclick="return validateSeat()">
			<fieldset class="seat">
				<input type="checkbox" class = "box" value="booked" checked> Booked Seat <br>
				<input type="checkbox" class = "box" value="ubooked"> Available Seat
			</fieldset>
		</form>
	</div>
</body>
</html>