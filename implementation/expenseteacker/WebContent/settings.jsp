<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
		<%
			String l_id = session.getAttribute("username").toString();
			
			String query="select * from setting where username = '";
			query=query+l_id;
			String k="'";
			query=query+k;
			String name=null;
			long travel=0;
			long medical=0;
			long food=0;
			long loan=0;
			long shopping=0;
			long education=0;
			long others=0;
			String gender=null;
				try{
					System.err.println(query);
		    	  session.setAttribute("username",l_id);
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
				PreparedStatement st = con.prepareStatement(query);
				 int l=0;
				ResultSet i = st.executeQuery();
				if(i.next()){
				food=i.getLong("food");
				travel=i.getLong("travel");
				medical=i.getLong("medical");
				loan=i.getLong("loan");
				shopping=i.getLong("shopping");
				education=i.getLong("education");
				others=i.getLong("otherss");
				l=l+1;
				}
			} catch (Exception e2) {
				System.out.println(e2);
			}
		%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<html lang="en">
    <head> 
<script>
	function validate() {
		
		var food = document.myForm.food.value;
		var travel = document.myForm.travel.value;
        var education = document.myForm.education.value;
    	var medical = document.myForm.medical.value;
		var loan = document.myForm.loan.value;
        var shopping = document.myForm.shopping.value;
        var others = document.myForm.others.value;
		if((isNaN(food))) {
			alert("you have to enter only numbers");
			return false;
		}
		if((isNaN(travel))) {
			alert("you have to enter only numbers");
			return false;
		}
		if((isNaN(education))) {
			alert("you have to enter only numbers");
			return false;
		}
		if((isNaN(loan))) {
			alert("you have to enter only numbers");
			return false;
		}
		if((isNaN(medical))) {
			alert("you have to enter only numbers");
			return false;
		}
		if((isNaN(shopping))) {
			alert("you have to enter only numbers");
			return false;
		}
		if((isNaN(others))) {
			alert("you have to enter only numbers");
			return false;
		}
		
		var sum=parseInt(food) + parseInt(travel)+parseInt(education) + parseInt(medical)+parseInt(loan) + parseInt(shopping)+parseInt(others);
		if(!(sum < 100)){
			alert("invalid");
			
		}
		var name = document.myForm.name.value;
		if (name == ""){
            alert ("Enter Name");
			return false;
		}
		if(!/^[a-zA-Z]*$/.test(name)) {
			alert("Invalid");
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
		//-------------
		var name = document.myForm.username.value;
		if (name == ""){
            alert ("Enter USER Name");
			return false;
		}
		if(!/^[a-zA-Z]*$/.test(name)) {
			alert("Invalid");
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
		var repswd = document.myForm.confirm.value;
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
					<form action="settingsdatabase.jsp" method="post" name ="myForm" onsubmit="return validate()"  >
	 <input type="hidden" class="form-control" name="username" id="username" value="<%=l_id%>" placeholder="Enter % in food "/>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">food</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-cutlery" aria-hidden="true"></i></span>
								    <input type="text" class="form-control" name="food" id="food" value="<%=food%>" placeholder="Enter % in food "/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">travelling</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
									 <input type="text" class="form-control" name="travel" id="travel" value="<%=travel%>"  placeholder="Enter your Email"/>
								</div>
							</div>
							
						</div>

						<div class="form-group">
							<label for="medical" class="cols-sm-2 control-label">medical</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-heartbeat" aria-hidden="true"></i></span>
									 <input type="text" class="form-control" name="medical" id="medical" value="<%=medical%>" placeholder="Enter your Username"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">loan</label>
							<div class="cols-sm-10">
							
								<div class="input-group">
									<!--  --><span class="input-group-addon"><i class="fa fa-university" aria-hidden="true"></i></i></span>
										 <input type="text" class="form-control" name="loan" id="loan" value="<%=loan%>" placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">shopping</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
								 <input type="text" class="form-control" name="shopping" id="shopping" value="<%=shopping%>" placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
								<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">education</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-mortar-board"></i></span>
								 <input type="text" class="form-control" name="education" id="education" value="<%=education%>" placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
								<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">others</label>
							<div class="cols-sm-10">
								<div class="input-group">
                             <span class="input-group-addon"><i class="fa fa-free-code-camp" aria-hidden="true"></i></span>	
							 <input type="text" class="form-control" name="others" id="others" value="<%=others%>" placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						<input type="submit" value="submit" name="submit_btn" color="">

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