<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap"
	rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body {
	background-color: #f9f6f7;
	font-family: 'Titillium Web', sans-serif;
	padding-top: 30px;
}

html {
	font-family: 'Titillium Web', sans-serif;
}

.glyphicon {
	margin-bottom: 10px;
	margin-right: 10px;
}

small {
	display: block;
	line-height: 1.428571429;
	color: #999;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<div class="well well-sm">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<img src="/resources/img_avatar.png" alt=""
								class="img-rounded img-responsive" />
						</div>
						<div class="col-sm-6 col-md-8">
							<h4 style=" color:#ad62aa; font-weight: bold; letter-spacing: 2px;text-transform: uppercase;">${  customer.firstName}&nbsp;${  customer.lastName}</h4>
							<p style="font-style: italic;letter-spacing: 1px;">
								<i class="glyphicon glyphicon-envelope"></i>${ customer.emailId}
								<br /> <br /> <i class="glyphicon glyphicon-gift"></i>${ customer.dob}</p>
							<!-- Split button -->
							<div class="btn-group">
								<a href="/loginpage2">Back To Home Page</a>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>