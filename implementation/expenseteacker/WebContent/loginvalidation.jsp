<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h1 {
	color: red;
	vertical-align: middle;
}

div {
	margin-top: 50px;
	margin-bottom: 50px;
}

a:link, a:visited {
	border: 4px solid black;
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
			String l_id = request.getParameter("username");
			String l_phone_no = request.getParameter("Password");
			String s=l_phone_no;
			String k1 = null;
			char c;
			for(int i=0; i<s.length();i++){
			c=s.charAt(i);
			c=(char) (c+5);
			k1=k1+c;
			}
			l_phone_no=k1;
			System.err.println(l_phone_no);
			String query="select * from signup where username = '";
			query=query+l_id;
			String k="'";
			query=query+k;
			String query2=" and pwd = '";
			query=query+query2;
			query=query+l_phone_no+k;
			out.println(l_id);
			out.println(l_phone_no);
			System.err.println(query);

				try{
					System.err.println(query);
		    	  session.setAttribute("username",l_id);
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
				PreparedStatement st = con.prepareStatement(query);
				
				//st.setString(1, l_id);
				//st.setString(2, l_phone_no);
				
				 int l=0;
				 
				
				ResultSet i = st.executeQuery();
				while(i.next()){
					l=l+1;
				}
			    if (l>0) 
			    {
			        
			       response.sendRedirect("cvc.jsp");
			      
			    } 
			    else
			    {
			        response.sendRedirect("error.jsp");

			    }
				//st.setString(1, l_id);
				// st.setString(2, l_phone_no);

				//System.err.println("After Set" + st.toString());

				//ResultSet result = st.executeQuery();
				//System.err.print("result");
				//	int i = st.executeUpdate();
				//if (result.next()) {
				//	System.err.print("IN SIDE IF");

				//	response.sendRedirect("cvc.jsp");

			//	}

			} catch (Exception e2) {
				System.out.println(e2);
			}
		%>
	
</body>
</html>