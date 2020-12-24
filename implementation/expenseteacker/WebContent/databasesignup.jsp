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
    String b = request.getParameter("email");
    String c=request.getParameter("username");
    String d=request.getParameter("password");
    String e=request.getParameter("confirm");
    String mno="0";
    int mn=10;
    if(d.equals(e)){
    	
		String k = null;
		char c1;
		for(int i=0; i<d.length();i++){
		c1=d.charAt(i);
		c1=(char) (c1+5);
		k=k+c1;
		}
   d=k;
	try{
		session.setAttribute("username",c);
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
		PreparedStatement st = con.prepareStatement("insert into signup values(?,?,?,?)");
		PreparedStatement st1 = con.prepareStatement("insert into expenses values(?,?,?,?,?,?,?,?,?)");
		PreparedStatement st2 = con.prepareStatement("insert into setting values(?,?,?,?,?,?,?,?)");

		st.setString(1, a);
		st.setString(2, b);
		st.setString(3, c);
		st.setString(4, d);
		st1.setString(1, a);
		st1.setString(2, mno);
		st1.setString(3, mno);
		st1.setString(4, mno);
		st1.setString(5, mno);
		st1.setString(6, mno);
		st1.setString(7, mno);
		st1.setString(8, mno);
		st1.setString(9, mno);
		st2.setString(1, a);
		st2.setInt(2, mn);
		st2.setInt(3, mn);
		st2.setInt(4, mn);
		st2.setInt(5, mn);
		st2.setInt(6, mn);
		st2.setInt(7, mn);
		st2.setInt(8, mn);
		
		
	
		int i1=st1.executeUpdate();
		int i2=st2.executeUpdate();
		
		int i = st.executeUpdate();
	    if (i > 0) 
	    { response.sendRedirect("persnoldetails.jsp");
	    	session.setAttribute("username",a);
	    
	    } 
	    else
	    {
        	response.sendRedirect("error.jsp");
	    }
	    } catch (Exception e2) 
		{
			System.out.println(e2);
		}
    }
%>

</body>
</html>