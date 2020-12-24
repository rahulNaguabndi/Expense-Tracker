  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
<%
%>

<script>
	function validate() {
		var name = document.myForm.name.value;
		if (name == ""){
            alert ("Enter Name");
			return false;
		}
		if(!/^[a-zA-Z]*$/.test(name)) {
			alert("Invalid");
			return false;
		}
		var dob = document.myForm.dob.value;
		if (dob == ""){
            alert ("Enter DateOfBirth");
			return false;
		}
		if(!/^([0][1-9]|[12][0-9]|[3][01])[\/\-]([0][1-9]|[1][012])[\/\-](199[0-9]|20[0-9][0-9])$/.test(dob)) {
			alert("Invalid DOB");
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
		var gender = document.myForm.gender.value;
		if (gender == ""){
            alert ("Enter Gender");
			return false;
		}
		if(!/^[M]|[F]$/.test(gender)) {
			alert("Invalid Gender");
			return false;
		}
		var mobile = document.myForm.mobile.value;
		if (mobile == ""){
            alert ("Enter Mobile Number");
			return false;
		}
		if(!/^[7-9]{1}[0-9]{9}$/.test(mobile)) {
			alert("Invalid Mobile Number");
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
<style>
body {
background-image: url(expenses.jpg); /*You will specify your image path here.*/

-moz-background-size: cover;
-webkit-background-size: cover;
background-size: cover;
background-position: top center !important;
background-repeat: no-repeat !important;
background-attachment: fixed;
}
h1{color: white;
vertical-align: middle;}
div {
  
    margin-top: 50px;
    margin-bottom: 50px;
   }
a:link, a:visited {
    border:4px solid black;
    background-color: red;
    color: black;
    padding: 14px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
a:hover, a:active {
    background-color: red;
}
</style>
</head>
<body>
<center>
<form action="entryintodatabase.jsp" method="POST" name="myForm" onsubmit="return validate()">
	 Name:
	<div class="form-goup">
	<span class="input-group-addon"><i class="fa fa-mobile" aria-hidden="true"></i></i></i></span>
		   <input type="text" name="name">
	</div>
	<div>
	
	DOB:	        <input type="text" name="dob"><i class="fa fa-times"></i></input</div>
	<div>
	Age:	        <input type="text" name="age"></div>
	<div>
	Gender:         <input type="text" name="gender"></div>
	<div>
	Mobile:         <input type="text" name="mobile"></div>
	<div>
	Email:          <input type="text" name="email"></div>
	<div>
	UserID: 	    <input type="text" name="userid"></div>
	
	<input type="submit" value="submit" name="submit_btn"></div>
</form>
</body>
</html>