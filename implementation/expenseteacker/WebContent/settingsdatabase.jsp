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
<%  String a1=request.getParameter("username");
    System.err.println(a1);
   /// long amount=Integer.parseInt(request.getParameter("amount"));
    long food=Integer.parseInt(request.getParameter("food"));
    long travel=Integer.parseInt(request.getParameter("travel"));
    long medical=Integer.parseInt(request.getParameter("medical"));
    long loan=Integer.parseInt(request.getParameter("loan"));
    long shopping=Integer.parseInt(request.getParameter("shopping"));
    long education=Integer.parseInt(request.getParameter("education"));
    long others=Integer.parseInt(request.getParameter("others"));
  //  String a = request.getParameter("category"); 

   
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
		PreparedStatement st = con.prepareStatement("UPDATE setting SET food = ?,  travel = ?, medical =? ,loan= ? , shopping =? ,education =? ,otherss =? WHERE username= ?");
		st.setLong(1, food);
		st.setLong(2, travel);
		st.setLong(3, medical);
		st.setLong(4, loan);
		st.setLong(5, shopping);
		st.setLong(6, education);
		st.setLong(7, others);
		st.setString(8, a1);
		int i = st.executeUpdate();
	    if (i > 0) 
	    { response.sendRedirect("cvc.jsp");
	    
	    	
	    
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