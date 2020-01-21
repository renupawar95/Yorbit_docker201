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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap"
	rel="stylesheet">


<style>
body {
	background-color: #e5dfdf;
	font-family: 'Titillium Web', sans-serif;
}

html {
	font-family: 'Titillium Web', sans-serif;
}

.container {
	/* max-width: 100%; */
	padding: 50px 70px;
	/* background-size: 100%; */
	/* border-radius: 10px; */
	opacity: 1.0;
}

#logout {
	padding-top: 0;
	margin-left: 1000px;
}

.table-data {
	/* margin-left: 15%;
	margin-right: 15%; */
	
}

th {
	color: #3282b8;
}

.sidebar {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidebar a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidebar a:hover {
	color: #f1f1f1;
}

.sidebar .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

.openbtn {
	font-size: 20px;
	cursor: pointer;
	background-color: #111;
	color: white;
	padding: 10px 15px;
	border: none;
}

.openbtn:hover {
	background-color: #444;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
	display: inline-block;
	position: fixed;
}
</style>

</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#companyStatus')
								.click(
										function() {
											var stateId = $(this).val();
											$
													.ajax({
														type : 'GET',
														url : window.location.origin
																+ '/rest/loadTourismPlacesByState/'
																+ stateId,
														success : function(
																result) {
															var s = '';
															for (var i = 0; i < result.length; i++) {
																s += '<option value="' +result[i].tourismId+'">'
																		+ result[i].tourismName
																		+ '</option>';
															}
															$('#modelStatus')
																	.html(s);

														}

													});
										});
					});
</script>
<body>
	<div id="mySidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()";>x</a>
		<a href="/viewProfile">View Profile</a> <a href="/viewdata">View
			Bookings</a> <a href="/register">ADMIN PAGE </a> <a href="/logout">Log
			Out</a>
	</div>

	<div id="main">
		<button class="openbtn" onclick="openNav()"
			style="color: red; font-size: 50px;">=</button>
	</div>
	<div class="container">
		<div style="color: white; font-size: 30px">
			<b style="letter-spacing: 2px;" class="animated fadeInDown"><span
				style="color: #ad62aa;">BOOKING JUST CLICKS AWAY</span></b>
		</div>
		<!-- <a href="/" id="logout" style="color: white; font-size: 25px;">Logout</a> -->
		<form action="/getHotels" method="post" onsubmit="return validate()"
			id="form">

			<%-- <br>
			<div>
				<label style="color: white">Select State : </label>&nbsp; <select
					name="stateId" id="companyStatus"
					class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					style="width: 300px; height: 50px;" size="0">
					<option value="">Select State</option>
					<c:forEach var="u" items="${ states}">
						<option value="${u.stateId}">${u.stateName}</option>
					</c:forEach>
				</select> &nbsp;&nbsp;&nbsp;<label style="color: white">Select
					Tourism Place :</label>&nbsp; <select name="tourismId" id="modelStatus"
					class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					style="width: 300px; height: 50px;" size="1">

				</select>
			</div>
			<br> --%>

			<br>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="" style="color: #be9fe1; letter-spacing: 1px;">SELECT
							STATE</label> <select name="stateId" id="companyStatus"
							class="dropdown-toggle form-control" data-toggle="dropdown"
							style="width: 300px; height: 50px;" size="0">
							<option value="">Select State</option>
							<c:forEach var="u" items="${ states}">
								<option value="${u.stateId}">${u.stateName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label style="color: #be9fe1; letter-spacing: 1px;">SELECT
							PLACE :</label> <select name="tourismId" id="modelStatus"
							class="dropdown-toggle form-control" data-toggle="dropdown"
							style="width: 300px; height: 50px;" size="1">
							<option value="">Select Place</option>
						</select>
					</div>
				</div>
			</div>

			<div>
				<button type="submit" class="btn btn-success">Get Hotels</button>
				&nbsp;&nbsp; <a href="/loginpage"></a>

				<button class="btn btn-dark">
					<a href="/loginpage" style="text-decoration: none; color: white;">Home</a>
				</button>
				&nbsp;&nbsp;
			</div>
		</form>
		<br> <br>


		<c:if test="${hotels != null }">

			<div class="table-data">
				<table id="table1" class="table table-hover" width="70%"
					cellpadding="2">
					<tr>
						<th>HOTEL NAME</th>
						<th>HOTEL PRICE / day</th>
						<th>HOTEL AVGRATING</th>
						<th>BOOK</th>
						<th>HOTEL REVIEWS</th>
					</tr>
					<c:forEach var="hotel" items="${hotels}">
						<tr class="info">
							<td>${hotel.hotelName}</td>
							<td>${hotel.price}</td>
							<td>${hotel.avgRating}</td>
							<td><a href="/book/${hotel.hotelId}">Book</a>
							<td><a href="/view/${hotel.hotelId}">Reviews</a>
						</tr>

					</c:forEach>
				</table>
			</div>
		</c:if>
	</div>

	<br>
	<br>
	<br>


	<%-- <c:if test="${hotels != null }">

			<div class="table-data">
				<table id = "table1" class="table table-dark table-striped" border="2" width="70%"
					cellpadding="2">
					<tr>
						<th>HOTEL NAME</th>
						<th>HOTEL PRICE / day</th>
						<th>BOOK</th>
						<th>HOTEL REVIEWS</th>
					</tr>
					<c:forEach var="hotel" items="${hotels}">
						<tr class="info">
							<td>${hotel.hotelName}</td>
							<td>${hotel.price}</td>
							<td><a href="/book/${hotel.hotelId}">Book</a>
							<td><a href="/view/${hotel.hotelId}">Reviews</a>
						</tr>

					</c:forEach>
				</table>
			</div>
		</c:if>
			</div> --%>

	<script type="text/javascript">
		$('#companyStatus').click(function() {
			$('#table1').hide()

		});

		function openNav() {
			document.getElementById("mySidebar").style.width = "250px";
			document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
			document.getElementById("mySidebar").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
		}
	</script>
</body>
</html>
