<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>

</head>
<center>
<body bgcolor="khaki">

        <%

            session.invalidate();

        %>


      <!-- <h1><font color="Red">You are Sucessfully logged out...</font></h1>-->

        <h1><a href="index.jsp">CONFIRMLOGOUT</a></h1>

    </body>
    </center>

</html>