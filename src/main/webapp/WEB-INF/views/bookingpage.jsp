<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passenger Data Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
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
<link
	href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap"
	rel="stylesheet">
<!-- <style>
body {
	background-image:
		url('https://media.mnn.com/assets/images/2018/06/nature-phpoto-day-squirrel.jpg.653x0_q80_crop-smart.jpg');
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

lable{
	
}

th
{
	color: #3e206d;
}

.container {
	max-width: 800px;
	padding: 50px 70px;
	/* background-color: fuchsia; */
	border-radius: 10px;
	opacity: 0.9;
}

/* html {
	background-blend-mode: overlay;
	background-color: azure;
	display: inline;
	justify-content: center;
	opacity: 0.9;
}
 */
</style>
</head>
<body>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="container">
				<form action="/bookahotel" method="post"
					onsubmit="return validate()" id="form1">
					<h2
						style="color: #ad62aa; font-weight: bold; letter-spacing: 2px; text-transform: uppercase;">Book
						Hotel</h2>
					<br>


					<div class="form-group row">



						<div class="col-xs-6">

							&emsp;<label for="checkinDate" style="color: #be9fe1;letter-spacing: 1px;">Check In Date :</label> <input
								style="width: 300px; margin-right: 15px; margin-left: 10px;"
								type="date" class="form-control item" name="checkinDate"
								id="checkinDate">

						</div>


						<div class="col-xs-6">
							<label for="checkoutDate" style="color: #be9fe1;letter-spacing: 1px;">Check Out Date:</label> <input style="width: 300px;"
								type="date" class="form-control item" name="checkoutDate"
								id="checkoutDate">
						</div>


					</div>

					<div class="form-group">
						<label for="bookingPrice" style="color: #be9fe1;letter-spacing: 1px;"> The Booking Price For Selected
							Duration Is :</label><input type="number" style="width: 612px;"
							class="form-control item" name="bookingPrice" id="bookingPrice">
					</div>
					<br>

					<div>
						<button id="button1" style="width: 100px; margin-right: 10px;"
							type="submit" class="btn btn-success">Book Now</button>
						<!-- <a href="/">Back To Home Page</a> -->
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>



	<c:if test="${customers != null}">
        <div class="row">
            <div class="container">
                <h3 style="color: #ad62aa; font-weight: bold;letter-spacing: 2px;">The BOOKING DETAILS :</h3>
                <br>
                <table class="table table-hover" width="70%" cellpadding="2">
                    <tr>
                        <th>CUSTOMER NAME</th>
                        <th>HOTEL NAME</th>
                        <th>TOURISM NAME</th>
                        <th>BOOK PRICE</th>
                        <th>CHECKOUTDATE</th>
                        <th>CHECKINDATE</th>
                        <th>FEEDBACK</th>
                    </tr>
					<c:forEach var="customer" items="${customers}">
						<tr class="info">
							<td>${customer.firstName}</td>
							<td>${customer.hotel.hotelName}</td>
							<td>${customer.tourism.tourismName}</td>
							<td>${customer.booking.bookingPrice}</td>
							<td>${customer.booking.checkoutDate}</td>
							<td>${customer.booking.checkinDate}</td>
							<td><a href="/comments/${customer.customerId}">Write
									Comments</a>
						</tr>

					</c:forEach>
				</table>
				<button class="btn btn-dark"><a href="/loginpage2" style="text-decoration: none;color: white;">Back</a></button>
			</div>
		</div>
	</c:if>

	<script type="text/javascript">
		/* $(document).ready(function() 
				{ */
		$('#button1').click(function() {
			//$('#form1').hide()				
		});
		$('#checkoutDate').change(
				function() {
					var checkinDate = $('#checkinDate').val();
					var checkoutDate = $(this).val();
					$.ajax({
						type : 'GET',
						url : window.location.origin + '/rest/getTotalPrice/'
								+ checkinDate + '/' + checkoutDate,
						success : function(result) {

							console.log(result)
							$('#bookingPrice').val(result);
						}
					})
				});
		/* }); */
	</script>
</body>
</html>