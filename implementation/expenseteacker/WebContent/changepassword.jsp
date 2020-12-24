<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%String l_id = session.getAttribute("username").toString();
//String l_id="RAHUL";
			
			String query="select * from signup where username = '";
			query=query+l_id;
			String k="'";
			query=query+k;
			String name=null;
			String password="hh";
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
				password=i.getString("pwd");
				System.err.println(password);
				String k1="";
					String d=password;
					
					char c1;
					for(int i4=0; i4<d.length();i4++){
					c1=d.charAt(i4);
					if(!(c1==' ')){
						c1=(char) (c1-5);
						k1=k1+c1;
					}
					
					}
				
				password=k1;
				System.err.println(k1);
			
				}
			} catch (Exception e2) {
				System.out.println(e2);
			}
		%>     

<!------ Include the above in your HEAD tag ---------->
<html lang="en">
    <head> 
<script>

	function validate() {
		window.history.forward();
	}
		var o = document.myForm.oldpassword.value;
		if (o == ""){
            alert ("Enter Password");
			return false;
		}
		if(!/^((\w)*[A-Z]+(\w)*[0-9]+(\w)*)|((\w)*[0-9]+(\w)*[A-Z]+(\w)*)$/.test(o)) {
			alert("Invalid Password");
			return false;
		}
		if(o.length<6){
			alert("password not valid");
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
		var ll = <%=password%>;
		alert(ll);
		var k = "ipgg";
		o = k+o;
		alert(o);
		if(!(o.match(ll))) {
			alert("Passwords not matched");
			return false;
		}
		return veri();
		
	
	}
	function veri(){
		var o = document.myForm.oldpassword.value;
		if (o == ""){
            alert ("Enter Password");
			return false;
		}
		var ll = <%=password%>;
		alert(ll);
		var k = "ipgg";
		o = k+o;
		alert(o);
		if(!(o.match(ll))) {
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
					<form action="pass.jsp" method="post" name ="myForm" onsubmit="return validate()"  >
					
					<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">username</label>
							<div class="cols-sm-10">
							
								<div class="input-group">
									<!--  --><span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										 <input type="text" class="form-control" name="username" id="username"  value="<%=l_id%>" placeholder="Enter your username" readonly/>
								</div>
							</div>
						</div>
						
					
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
							
								<div class="input-group">
									<!--  --><span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
										 <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								 <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
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