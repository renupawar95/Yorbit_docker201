<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=
    , initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Make my trip</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.container1 {
	width: 100%;
	height: 100vh;
	background-color: #1d4d4f;
	position: relative;
}

.nav-header {
	width: 100%;
	height: 100px;
	background-color: #e5dfdf;
}

.form {
	border: 2px solid #835f4f;
	width: 500px;
	position: absolute;
	top: 50%;
	left: 50%;
	right: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 12px 12px 12px #2d334a;
	background-color: #e5dfdf;
}
</style>
</head>

<body>

	<div class="container1">
		<div class="nav-header">
			<img alt="" src="/resources/icons8-traveler-100.png" class="img">&emsp13;<label
				style="font-style: italic; font-size: 40px; font-family: cursive; color: darkorange">book</label><label
				style="font-style: italic; font-size: 50px; font-family: cursive; color: #4f98ca">YourHotel</label>
		</div>
		<div class="form">
			<form action="/login" method="post">
				<p style="text-align: center;">Login To Kalinga Account</p>
				<div class="form-group">
				<div id = "message1" style="color: red;">${message}</div>
					<div class="input-group">

						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input
							data-toggle="tooltip" title="Enter your emailId" id="emailId"
							type="text" class="form-control" name="username"
							placeholder="Customer Email" data-validate="EmailId is required"
							required>
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span> <input
							data-toggle="tooltip" title="Enter Password" id="password"
							type="password" class="form-control" name="password"
							placeholder="Password" data-validate="Password is required"
							required>
					</div>
					<br>
					<input type="checkbox" onclick="myFunction()"><label>&nbsp;Show Password</label>
					
					<br>
				</div>
				<div class="form-group">

					<button style="background-color: black" type="submit"
						class="btn btn-primary btn-block"
						type="submit">Log in</button>
					<!-- <button id="submit1" type="reset" class="btn btn-primary btn-block"
                        onclick="form.action='/validateCustomer'">Reset</button> -->

					<br> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<font color="black">Create
						New Account ?</font>&nbsp; <a id="a1" href="/form3">Sign Up</a> <br>
				</div>

			</form>
		</div>
	</div>

	<script>
	
	function myFunction() {
		var x = document.getElementById("password");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
		
	}
		$("input").focus(function() {
			$("#message1").hide();
			$(this).css("background-color", "#fab696");
		});
		$("input").blur(function() {
			$("#message1").hide();
			$(this).css("background-color", "white");
		});
	</script>
</body>

</html>