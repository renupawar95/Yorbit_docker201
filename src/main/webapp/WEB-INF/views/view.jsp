<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">

<!-- <style>
body {
	background-image:
		url('https://content3.jdmagicbox.com/comp/hyderabad/k8/040pxx40.xx40.151211132125.q3k8/catalogue/nr-bikes-gachibowli-hyderabad-bike-on-rent-harley-davidson-rfr23.jpg?clr=273f3f');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	background-size: 100% 100%;
}
</style> -->
<style>

body {
	background-color: #f9f6f7;
	font-family: 'Titillium Web', sans-serif;
}
html {
			font-family: 'Titillium Web', sans-serif;
		}
.container {
	max-width: 500px;
	margin-top:8%;
	margin-left:15%;
	padding: 50px 70px;
	background-color: transparent;
	border-radius: 10px;
	opacity: 0.9;
}
</style>

</head>
<body>
<div class="container">
	<div class="row">
		<h3 style="color: #ad62aa; font-weight: bold;letter-spacing: 2px;">The BOOKED DETAILS :</h3><br><br><br><br>
			<table class="table table-hover" width="70%"
				cellpadding="2">
				<tr>
					<th>CUSTOMER NAME</th>
					<th>HOTEL NAME</th>
					<th>TOURISM NAME</th>
					<th>BOOK PRICE</th>
					<th>CHECKOUTDATE</th>
					<th>CHECKINDATE</th>
					<th>UPDATE</th>
				</tr>
				<c:forEach var="customer" items="${customers}">
					<tr class="info">
						<td>${customer.firstName}</td>
						<td>${customer.hotel.hotelName}</td>
						<td>${customer.tourism.tourismName}</td>
						<td>${customer.booking.bookingPrice}</td>
						<td>${customer.booking.checkoutDate}</td>
						<td>${customer.booking.checkinDate}</td>
						<td><a href="/update/${customer.customerId}">Update</a>
					</tr>

				</c:forEach>
			</table>
			<button class="btn btn-dark"><a href="/loginpage2" style="text-decoration: none;color: white;">Back</a></button>
		</div>
	</div>
</body>
</html>