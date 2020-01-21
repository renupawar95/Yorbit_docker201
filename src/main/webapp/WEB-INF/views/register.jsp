
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
	integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
	crossorigin="anonymous"></script>
<title>Make my trip</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.container1 {
	width: 100%;
	height: 100vh;
	background-color: #fab696;
	position: relative;
}

.nav-header {
	width: 100%;
	height: 100px;
	background-color: #2d334a;
}

.form {
	border: 2px solid #835f4f;
	width: 500px;
	position: fixed;
	top: 50%;
	left: 50%;
	right: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 12px 12px 12px #2d334a;
	background-color: azure
}

.error {
	color: red;
	/* background-color: #acf; */
}
</style>
</head>

<body>
	<div class="container1">

		<div class="form">
			<form action="" method="post">

				<div class="form-group row">



					<div class="col-xs-6">
						<!-- <label for="ex1">col-xs-2</label> -->

						<input type="text" class="form-control item" id="firstName"
							placeholder="First Name" name="firstName">

					</div>


					<div class="col-xs-6">
						<!-- <label for="ex2">col-xs-3</label> -->
						<input type="text" class="form-control item" id="lastName"
							placeholder="Last Name " name="lastName">

					</div>


				</div>


				<div class="form-group row">
					<div class="col-xs-6">
						<input placeholder="DOB" class="form-control item" type="text"
							onfocusin="(this.type='date')" onfocusout="(this.type='date')"
							id="dob" name="dob">
					</div>

					<div class="col-xs-6">
						<input type="text" class="form-control item" id="age"
							placeholder="Age" name="age">
					</div>
				</div>


				<div class="form-group row">



					<div class="col-xs-6">
						<!-- <label for="ex1">col-xs-2</label> -->

						<input type="password" class="form-control item" id="password"
							placeholder="Password" name="password"><br>
					</div>


					<div class="col-xs-6">
						<!-- <label for="ex2">col-xs-3</label> -->
						<input type="password" class="form-control item"
							id="confirmPassword" placeholder="Confirm "
							name="confirmPassword"><br>
					</div>
					&emsp; <input type="checkbox" onclick="myFunction()">Show
					Password
				</div>
				<div class="form-group">

					<input type="email" class="form-control item" id="emailId"
						placeholder="Customer Email" name="emailId" required><br>


					<input type="text" class="form-control item" id="phoneNo"
						placeholder="Phone Number" name="phoneNo"><br>

				</div>

				<div class="form-group">
					<div class="radio">
						<label>Gender</label> <label><input type="radio"
							name="gender" id="gender" value="male">Male</label> <label><input
							type="radio" name="gender" id="gender" value="Female">Female</label>
						<!-- <span id="rad2" class="text-danger font-weight-bold"></span> -->
					</div>



				</div>


				<div class="form-group">
					<div class="radio">
						<label>Food Preferance :</label><label></label> <label><input
							type="radio" name="foodType" id="foodType" value="Veg">Veg</label>
						<label><input type="radio" name="foodType" id="foodType"
							value="Non-Veg">Non-Veg</label>
						<!-- <span id="rad2" class="text-danger font-weight-bold"></span> -->
					</div>
				</div>

				<div class="form-group">
					<lable>Select the Hobbies :</lable>
					<div class="form-check">
						<label><input type="checkbox" value="cricket" id="hoobies"
							name="hoobies">Cricket</label>
					</div>
					<div class="form-check">
						<label><input type="checkbox" value="volleyball"
							name="hoobies">Volley Ball</label>
					</div>

					<div class="form-check">
						<label><input type="checkbox" value="tabletennis"
							name="hoobies">Table Tennis</label>
					</div>
				</div>


				<button style="background-color: black" type="submit"
					class="btn btn-primary btn-block"
					onclick="form.action='/addCustomer'">Sign Up</button>
			</form>

		</div>
	</div>

	<script>
		function myFunction() {
			var x = document.getElementById("password");
			var y = document.getElementById("confirmPassword");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
			if (y.type === "password") {
				y.type = "text";
			} else {
				y.type = "password";
			}
		}
		$conv = jQuery;
		$conv.validator.addMethod("alphabetsnspace", function(value, element) {
			return this.optional(element) || /^[a-zA-Z ]*$/.test(value);
		});
		$conv.validator
				.addMethod(
						"pattern",
						function(value, element) {
							return this.optional(element)
									|| /^.*(?=.{4,10})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&]).*$/
											.test(value);
						});
		$("form").validate({
			errorClass : 'errors',
			rules : {
				firstName : {
					required : true,
					minlength : 3,
					maxlength : 10,
					alphabetsnspace : true
				},
				lastName : {
					required : true,
					minlength : 3,
					maxlength : 10,
					alphabetsnspace : true
				},
				password : {
					required : true,
					// minlength: 6,
					// maxlength: 10,
					pattern : true
				},
				confirmPassword : {
					required : true,
					equalTo : "#password",
				},
				emailId : {
					required : true,
				},
				dob : {
					required : true,
				},
				age : {
					required : true,
					number : true,
					range : [ 21, 100 ]
				},

				gender : {
					required : true
				},
				foodType : {
					required : true
				},
				hoobies : {
					required : true,
				},
				phoneNo : {
					required : true,
					number : true,
					maxlength : 10
				}
			},
			messages : {
				"firstName" : {
					required : "Please enter  first name",
					alphabetsnspace : "Please Enter Only Letters",
				},
				"lastName" : {
					required : "Please enter last name",
					alphabetsnspace : "Please Enter Only Letters",
				},
				"password" : {
					required : "Please enter password",
					pattern : "Enter a valid password",
				},
				"confirmPassword" : {
					required : "Please re-enter password",
					equalTo : "password did not match"
				},
				"emailId" : {
					required : "Please enter e-mail",
				},
				"phoneNo" : {
					required : "Please enter phone number",
					number : "please enter numbers only"
				},
				"age" : {
					required : "Please enter age",
					number : "please enter numbers only"
				},
				"dob" : {
					required : "Please enter DOB",
				}
			},
			highlight : function(element) {
				$(element).parent().addClass('error')
			},
			unhighlight : function(element) {
				$(element).parent().removeClass('error')
			},
			submitHandler : function(form) {
				form.submit();
			}
		});
	</script>
</body>

</html>