<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<html lang="en">
    <head> 
<script>
	function validate() {
		var name = document.myForm.name.value;
		if (name == ""){
            alert ("Enter Name");
			return false;
		}
		if(!/^[a-zA-Z ]*$/.test(name)) {
			alert("Invalid");
			return false;
		}

		var age = document.myForm.age.value;
		if (age == ""){
            alert ("Enter Age");
			return false;
		}
		if(!/^([1-9]|[1-9][0-9]|100)$/.test(age)) {
			alert("Invalid Age");
			return false;
		}
		var mobile = document.myForm.mobileno.value;
		if (mobile == ""){
            alert ("Enter Mobile Number");
			return false;
		}
		if(!/^[7-9]{1}[0-9]{9}$/.test(mobile)) {
			alert("Invalid Mobile Number");
			return false;
		}
		if(mobile.length<10){
			alert("Minimum 10 characters");
			return false;
		}
		var gender = document.myForm.gender.value;
		if (gender == ""){
            alert ("Enter Gender");
			return false;
		}
		if(!/^[M]|[F]$/.test(gender)) {
			alert("Invalid Gender");
			return false;
		}
	
		var email = document.myForm.email.value;
		if (email == ""){
            alert ("Enter EmailID");
			return false;
		}
		if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(email)) {
			alert("Invalid Email Address");
			return false;
		}
		var userid = document.myForm.userid.value;
		if (userid == ""){
            alert ("Enter UserID");
			return false;
		}
		if(!/^[a-zA-Z0-9]+[\.-]?(\w)*$/.test(userid)) {
			alert("Invalid UserID");
			return false;
		}
		var pswd = document.myForm.password.value;
		if (pswd == ""){
            alert ("Enter Password");
			return false;
		}
		if(!/^((\w)*[A-Z]+(\w)*[0-9]+(\w)*)|((\w)*[0-9]+(\w)*[A-Z]+(\w)*)$/.test(pswd)) {
			alert("Invalid Password");
			return false;
		}
		if(pswd.length<6){
			alert("Minimum 6 characters");
			return false;
		}
		var repswd = document.myForm.retype_password.value;
		if (repswd == ""){
            alert ("Enter Retype-Password");
			return false;
		}
		if(!repswd.match(pswd)) {
			alert("Passwords not matched");
			return false;
		}
	}
</script>
		  <meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="signup.css" rel="stylesheet">

		<!-- Website Font style -->
	      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css"> 
		<!-- Google Fonts -->
		 <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		 <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>


	</head>
	<body>

	
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
					<form action="detailsdatabase.jsp" method="post" name ="myForm" onsubmit="return validate()"  >
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your full Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
								    <input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="age" class="cols-sm-2 control-label">Your age</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-cogs" aria-hidden="true"></i></span>
									 <input type="text" class="form-control" name="age" id="age"   placeholder="Enter your age"/>
								</div>
							</div>
							
						</div>

						<div class="form-group">
							<label for="mobileno" class="cols-sm-2 control-label">Mobile no</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-mobile " aria-hidden="true"></i></span>
									 <input type="text" class="form-control" name="mobileno"   placeholder="Enter your mobile no"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="gender" class="cols-sm-2 control-label">gender</label>
							<div class="cols-sm-10">
							
								<div class="input-group">
									<!--  --><span class="input-group-addon"><i class="fa fa-venus-mars" aria-hidden="true"></i></span>
										 <input type="text" class="form-control" name="gender" id="gender"  placeholder="Enter your gender"/>
								</div>
							</div>
						</div>
						<center>
                         <input type="submit" value="submit" name="submit_btn" color="red"></center>
						
						</div>

						

					</form>
				</div>
			</div>
		</div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>