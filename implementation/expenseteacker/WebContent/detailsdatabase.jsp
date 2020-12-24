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
    String a = request.getParameter("name");    
    String b = request.getParameter("age");
    String c=request.getParameter("mobileno");
    String d=request.getParameter("gender");
    String a1=session.getAttribute("username").toString();
    
   
	try{
		session.setAttribute("username",c);
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
		PreparedStatement st = con.prepareStatement("insert into details values(?,?,?,?,?)");
		st.setString(1, a1);
		st.setString(2, a);
		st.setString(3, b);
		st.setString(4, c);
		st.setString(5, d);
		
		int i = st.executeUpdate();
	    if (i > 0) 
	    { response.sendRedirect("signuplogin.jsp");
	    
	    	
	    
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