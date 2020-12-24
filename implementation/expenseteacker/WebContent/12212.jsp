<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%

    String c=request.getParameter("username");
    String d=request.getParameter("email");
  
	try{
		session.setAttribute("username",c);
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
		PreparedStatement st = con.prepareStatement("select * from signup where username=? and email=? ");
		st.setString(1, c);
		st.setString(2, d);
		
	
		int i = st.executeUpdate();
	  /*  if (i < 0) 
	    { response.sendRedirect("error.jsp");
	    	
	    
	    } */
	 
	    } catch (Exception e2) 
		{
			System.out.println(e2);
		}
    %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
<script >
function validate() {
	var k = i;
	if (k<0){
        alert ("invalid username or email");
		return false;}

}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		  <meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="signup.css" rel="stylesheet">

		<!-- Website Font style -->
	      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css"> 
		<!-- Google Fonts -->
		 <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		 <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
					<form action="SendMail1" method="post" onsubmit="return validate()" >
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" id="username" name="username" class="form-control" placeholder="username" required autofocus>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" id="email" name="email" class="form-control" placeholder="email" required autofocus>
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
