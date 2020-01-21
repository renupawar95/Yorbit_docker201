<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<style>

body
{
	background-color: black;
}
* {
	margin: 0;
	padding: 0;
}

.container1 {
	width: 100%;
	/* background-color: #fab696; */
	position: relative;
	padding: 50px 0;
}

.nav-header {
	width: 100%;
	height: 100px;
	background-color: #2d334a;
}

.form {
	width: 100%;
	display: flex;
	justify-content: center;
}

.error {
	color: red;
	/* background-color: #acf; */
}

.form1 {
	width: 600px;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 12px 12px 12px #2d334a;
	background-color: white;
	border: 2px solid #835f4f;
}

#dateDiv {
	color: red;
	font-weight: bold;
}

#genderDiv {
	color: red;
	font-weight: bold;
}

#fudDiv {
	color: red;
	font-weight: bold;
}
  .my-img {
            margin-top:45%;
            width: 150px;
            height: 300px;
        }
        .img-2 {
            width: 50px;
            height: 60px;
        }
        
        #emailDiv {
	color: red;
	font-weight: bold;
}

</style>
</head>

<body>
	<div class="container1">

		<div class="form">
			<form action="" method="post" class="form1">
			<img alt="" src="/resources/icons8-traveler-100.png" class="img-2">&emsp13;
				<label
					style="font-style: italic; font-size: 20px; font-family: cursive; color: darkorange">kalinga</label><label
					style="font-style: italic; font-size: 30px; font-family: cursive; color: #4f98ca">Travels</label>
				<h3>Create Your Account</h3>
				<br>
				<div class="row">
					<div class="col-md-8">

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
								<div id="dateDiv"></div>
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
							&emsp; <input type="checkbox" onclick="myFunction()">&nbsp;Show
							Password
						</div>
						<div class="form-group">

							<input type="email" class="form-control item" id="emailId"
								placeholder="Customer Email" name="emailId">
								<div id="emailDiv"></div><br> 
								
							<input
								type="text" class="form-control item" id="phoneNo"
								placeholder="Phone Number" name="phoneNo"><br>

						</div>

						<div class="form-group">

							<label>Gender :&nbsp;</label> <label><input type="radio"
								name="gender" id="customerGenderMale" value="male">&nbsp;Male</label>&nbsp;&nbsp;
							<label><input type="radio" name="gender"
								id="customerGenderFemale" value="Female">&nbsp;Female</label>&nbsp;&nbsp; <label><input
								type="radio" name="gender" id="customerGenderOthers"
								value="Others">&nbsp;Others</label>
							<!-- <span id="rad2" class="text-danger font-weight-bold"></span> -->
							<div id="genderDiv"></div>



						</div>


						<div class="form-group">

							<label>Food Preferance :&nbsp;</label><label></label> <label><input
								type="radio" name="foodType" id="customerFoodPreferanceVeg"
								value="Veg">&nbsp;Veg</label>&nbsp;&nbsp; <label><input type="radio"
								name="foodType" id="customerFoodPreferanceNonVeg"
								value="Non-Veg">&nbsp;Non-Veg</label>
							<!-- <span id="rad2" class="text-danger font-weight-bold"></span> -->
							<div id="fudDiv"></div>
						</div>

						<div class="form-group">
							<lable>Select the Hobbies :</lable>
							<div class="form-check">
								<label><input type="checkbox" value="cricket"
									id="hoobies" name="hoobies">&nbsp;Cricket</label>
							</div>
							<div class="form-check">
								<label><input type="checkbox" value="volleyball"
									name="hoobies">&nbsp;Volley Ball</label>
							</div>

							<div class="form-check">
								<label><input type="checkbox" value="tabletennis"
									name="hoobies">&nbsp;Table Tennis</label>
							</div>
						</div>


						<button id="button1" style="background-color: black" type="submit"
							class="btn btn-primary btn-block" onclick="form.action='/addCustomer'">Sign Up</button><br>
							
						<a href="/">Go Back To Home Page</a>	
					</div>
					<div id="img1" class="col-md-4">
						<img alt="" src="/resources/icons8-traveler-2.png" class="my-img">
					</div>
				</div>
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
        $conv.validator.addMethod("alphabetsnspace", function (value, element) {
            return this.optional(element) || /^[a-zA-Z ]*$/.test(value);
        });
        $conv.validator.addMethod("pattern", function (value, element) {
            return this.optional(element) || /^.*(?=.{4,10})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&]).*$/
                .test(value);
        });

 
          // $('#date').onchange(function () {
        //     var GivenDate = $('#date').val();
        //     console.log(GivenDate);


        //     var CurrentDate = new Date();
        //     GivenDate2 = new Date(GivenDate);

        //     if (GivenDate2 > CurrentDate) {
        //         $('#date').show();
        //         $('#date').html('Invalid Date');
        //         $('#date').focus();
        //     }

        // });

        let btn = document.querySelector("#button1");
        let genDiv = document.getElementById("genderDiv");
            
        let fDiv = document.getElementById("fudDiv");

        btn.addEventListener('click', () => {

            let g1 = document.getElementById("customerGenderMale").checked ;
            let g2 = document.getElementById("customerGenderFemale").checked ;
            let g3 = document.getElementById("customerGenderOthers").checked ;
             
            if (g1 == false && g2 == false && g3 == false) {

                genDiv.innerHTML = 'Please selet gender';
            }

            else{
                genDiv.innerHTML = '';
            }

            let f1 = document.getElementById("customerFoodPreferanceVeg").checked ;
            let f2 = document.getElementById("customerFoodPreferanceNonVeg").checked;
             
            if (f1 == false && f2 == false ) {

                fDiv.innerHTML = 'Please selet food preferance';
            }

             else{
                fudDiv.innerHTML = '';
            }



        })

        let date1 = document.querySelector("#dob");
        let dateDiv1 = document.getElementById("dateDiv");
        date1.addEventListener('change', () => {

            var GivenDate = $('#dob').val();



            var CurrentDate = new Date();
            GivenDate2 = new Date(GivenDate);
            /* console.log(GivenDate2);
            console.log(CurrentDate); */
            if (GivenDate2 >= CurrentDate) {
                console.log("error");
                console.log(GivenDate2);
                console.log(CurrentDate);
                dateDiv1.innerHTML = 'invalid date';
            }
            else
            	{
            	dateDiv1.innerHTML = '';
            	}
        })
        
        $('#emailId').keyup(function() 
			{
			//var checkinDate = $('#checkinDate').val();
			var emailId = $(this).val();
			console.log(emailId);
			let emailDiv1 = document.getElementById("emailDiv");
			$.ajax({
					type : 'GET',
					url : window.location.origin
							+ '/rest/getAllEmails/'+emailId,
						
					success : function(result) 
					{
						console.log(result);
						
							if(result == true)
								{
									emailDiv1.innerHTML = 'email already exists';
								}
							else
								{
									emailDiv1.innerHTML = '';
								}
						
					}
				})
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
					min:21
				},

				
				hoobies : {
					required : true,
					minlength: 2,
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