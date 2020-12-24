<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h1{color: red;
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
<body bgcolor="green">
<center>

<%@page import="java.sql.*,java.util.*"%>
<%
    String l_id = request.getParameter("staff_id");  
    String l_phone_no = request.getParameter("password"); 
    out.println(l_id);
    out.println(l_phone_no);

    	try{
    		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
		PreparedStatement st = con.prepareStatement("select * from staff_details where staff_id = ? and passsword = ? ");
		
		st.setString(1, l_id);
		st.setString(2, l_phone_no);
		
		 
		 
		
		int i = st.executeUpdate();
	    if (i>0) 
	    {
	        
	       response.sendRedirect("staffaccess.jsp");
	      
	    } 
	    else
	    {
	        response.sendRedirect("error.jsp");

	    }
	    } catch (Exception e2) 
		{
			System.out.println(e2);
		}
		%>
</body>
</html>