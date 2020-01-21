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
.container {
	max-width: 800px;
	padding: 50px 70px;
	background-color: transparent;
	border-radius: 10px;
	opacity: 0.9;
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
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="container">
				<form action="/addHotel" method="post" onsubmit="return validate()"
					id="form">
					<h2>Hotel Data Page</h2>
					<div>
						<label>Select State :</label> <select name="stateId"
							id="companyStatus" data-toggle="dropdown" style="width: 200px"
							size="1">
							<option value=" ">select the state
								<c:forEach var="company" items="${ states}">
									<option value="${company.stateId}">${company.stateName}</option>
								</c:forEach>
						</select>
					</div>
					<br>
					<div>
						<label>Select Tourism Place :</label> <select name="tourismId"
							id="modelStatus" data-toggle="dropdown" style="width: 200px"
							size="1">

						</select>
					</div>
					<div class="form-group">
						<label for="hotelName">Hotel Name :</label> <input type="text"
							class="form-control item" name="hotelName" id="hotelName">
					</div>
					<div class="form-group">
						<label for="price">Hotel Price :</label> <input type="text"
							class="form-control item" name="price" id="price">
					</div>
					<div>
						<button type="submit" class="btn-success create button">Submit</button>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
</body>
</html>