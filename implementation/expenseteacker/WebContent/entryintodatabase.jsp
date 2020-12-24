<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
    String a = "cxc";//request.getParameter("mobile");    
    String b = "cxc";//request.getParameter("name");
    String c="cxc";//request.getParameter("email");
    String d="cxc";//request.getParameter("userid");
    String e="cxc";//request.getParameter("password");
   
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
		PreparedStatement st = con.prepareStatement("insert into userr values(?,?,?)");
		st.setString(1, b);
		st.setString(2, a);
		st.setString(3, e);
		
		int i = st.executeUpdate();
	    if (i > 0) 
	    {
	    	session.setAttribute("staff_id",a);
	     response.sendRedirect("cvc.jsp");
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