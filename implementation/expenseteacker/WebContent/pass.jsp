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
String c=request.getParameter("username");
String d=request.getParameter("password");
String e=request.getParameter("confirm");
if(d.equals(e)){
	
	String k = null;
	char c1;
	for(int i=0; i<d.length();i++){
	c1=d.charAt(i);
	c1=(char) (c1+5);
	k=k+c1;
	}
d=k;
}
String query="UPDATE signup SET pwd ='";
String k="'";
query=query+d;
query=query+k;
String q2=" WHERE username ='";
query=query+q2;
query=query+c;
query=query+k;


try{
	session.setAttribute("username",c);
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
	PreparedStatement st = con.prepareStatement(query);
	//st.setString(1, d);
	//st.setString(2, c);
	int i = st.executeUpdate();
    if (i > 0) 
    { response.sendRedirect("login.jsp");    	
    
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