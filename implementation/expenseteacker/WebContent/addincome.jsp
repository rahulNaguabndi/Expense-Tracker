<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@page import="java.sql.*,java.util.*"%>
		<%
			String l_id = session.getAttribute("username").toString();
			
			String query="select * from expenses where username = '";
			query=query+l_id;
			String k="'";
			query=query+k;
			String name=null;
			long travel=0;
			long medical=0;
			long food=0;
			long loan=0;
			long shopping=0;
			long education=0;
			long others=0;
			long income=0;
			String gender=null;
				try{
					System.err.println(query);
		    	  session.setAttribute("username",l_id);
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
				PreparedStatement st = con.prepareStatement(query);
				 int l=0;
				ResultSet i = st.executeQuery();
				if(i.next()){
				income=i.getLong("income");	
				food=i.getLong("food");
				travel=i.getLong("travel");
				medical=i.getLong("medical");
				loan=i.getLong("loan");
				shopping=i.getLong("shopping");
				education=i.getLong("education");
				others=i.getLong("otherss");
				l=l+1;
				}
			} catch (Exception e2) {
				System.out.println(e2);
			}
		%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function validate() {
	var x = document.myForm.amount.value;
	if((isNaN(x))) {
		alert("you have to enter only numbers");
		return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body background="expenses.jpg">
<center>
<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form action="addincomedatabase.jsp" method="post" name="myForm" accept-charset="utf-8" class="form" role="form" onsubmit="return validate()" > 
                   <br>
                    <br>
                     <br>
                      <br>
                       <br>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <input type="text" name="username" value="<%=l_id%>" class="form-control input-lg" placeholder="username"  size="40"/>                        </div>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" name="amount" value="" class="form-control input-lg" placeholder="your income" size="40"  a/> </div>
                    </div>
                        
                    <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="income" value="<%=income %>" class="form-control input-lg" placeholder="food" readonly />                        </div>
                    </div>
                    <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="food" value="<%=food %>" class="form-control input-lg" placeholder="food" readonly />                        </div>
                    </div>
                      <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="travel" value="<%=travel %>" class="form-control input-lg" placeholder="travel" readonly />                        </div>
                    </div>
                      <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="medical" value="<%=medical %>" class="form-control input-lg" placeholder="medical" readonly />                        </div>
                    </div>
                      <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="loan" value="<%=loan%>" class="form-control input-lg" placeholder="loan" readonly />                        </div>
                    </div>
                      <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="shopping" value="<%=shopping %>" class="form-control input-lg" placeholder="shopping" readonly />                        </div>
                    </div>
                      <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="education" value="<%=education %>" class="form-control input-lg" placeholder="education" readonly />                        </div>
                    </div>
                      <div class="col-xs-6 col-md-6">
                            <input type="hidden" name="others" value="<%=others %>" class="form-control input-lg" placeholder="others" readonly />                        </div>
                    </div>
                   
                       
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit"> add income</button>
            </form>          
          </div>
</div>            
</div>
</div>
</center>
</body>
</html>