<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
background-image: url(admin.jpg); /*You will specify your image path here.*/

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
<body bgcolor="orange">
 
<center>   
<p> you entered a wrong username or password</p>
<p> please  try again</p>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <a href="login.jsp" class="btn btn-success btn-lg btn-block btn-huge" style="color: blue; background-color: yellow">please login again</a>
        </div>
        
       
    </div>
</div>
</body>
</html>