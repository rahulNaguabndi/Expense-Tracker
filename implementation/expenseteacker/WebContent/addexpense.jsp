<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@page import="java.sql.*,java.util.*"%>
		<%
			String l_id = session.getAttribute("username").toString();
			//l_id="RAJA";
			String query="select * from expenses where username = '";
			String query1="select * from setting where username = '";
			query=query+l_id;
			query1=query1+l_id;
			String k="'";
			query=query+k;
			query1=query1+k;
			String name=null;
			long travel=0;
			long medical=0;
			long food=0;
			long loan=0;
			long shopping=0;
			long education=0;
			long others=0;
			long income=0;
			long travel1=0;
			long medical1=0;
			long food1=0;
			long loan1=0;
			long shopping1=0;
			long education1=0;
			long others1=0;
			long income1=0;
			long f1=4;
			long t1=0;
			String gender=null;
				try{
					System.err.println(query);
		    	  session.setAttribute("username",l_id);
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "rahul", "rahul");
				PreparedStatement st = con.prepareStatement(query);
				 
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
				System.err.println(income);
				System.err.println(food);
				
				}
				PreparedStatement st1 = con.prepareStatement(query1);
				ResultSet i1 = st1.executeQuery();
				if(i1.next()){
					System.err.println(query1);
					food1=i1.getLong("food");
					System.err.println(f1);
					travel1=i1.getLong("travel");
					medical1=i1.getLong("medical");
					loan1=i1.getLong("loan");
					shopping1=i1.getLong("shopping");
					education1=i1.getLong("education");
					others1=i1.getLong("otherss");
					
					System.err.println(f1);
					 f1= (int)(income*(food1/100));
					 //f2=(int)f1;
					}
				
				
			} catch (Exception e2) {
				System.out.println(e2);
			}
		%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
function validate() {
	var name = document.myForm.category.value;
	var x = document.myForm.amount.value;
	if((isNaN(x))) {
		alert("you have to enter only numbers");
		return false;
	}
	if (name == "food"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=food%>;
		    var l= parseInt(amount) + parseInt(a);
		    amount =l;
		    alert(amount);
		    var percentage=<%=food1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert(limit);
		        alert(amount);
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert(limit2);
		        alert("EXCEED YOUR 90 percent  LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR HALF LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
		    document.getElementById("demo").innerHTML = greeting;
	}
	if (name == "travel"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=travel%>;
		    var l= parseInt(amount) + parseInt(a);
		    amount=l;
		    var percentage=<%=travel1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert("EXCEED YOUR 90% LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR HALF OF LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
	}
	if (name == "shopping"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=shopping%>;
		    amount=amount+a;
		    var l= parseInt(amount) + parseInt(a);
		    amount =l;
		    var percentage=<%=shopping1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert("EXCEED YOUR 90 PERCENT LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR HALF OF  LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
	}
	if (name == "medical"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=medical%>;
		    amount=amount+a;
		    var l= parseInt(amount) + parseInt(a);
		    amount =l;
		    var percentage=<%=medical1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert("EXCEED YOUR 90 PERCENT LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR  HALF OF LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
	}
	if (name == "loan"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=loan%>;
		    amount=amount+a;
		    var l= parseInt(amount) + parseInt(a);
		    amount =l;
		    var percentage=<%=loan1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert("EXCEED YOUR 90 PERCENT LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR HALF OF  LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
	}
	if (name == "education"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=education%>;
		    amount=amount+a;
		    var l= parseInt(amount) + parseInt(a);
		    amount =l;
		    var percentage=<%=education1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert("EXCEED YOUR 90 PERCENT LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR HALF OF LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
	}
	if (name == "others"){
		var a = document.myForm.amount.value;
		 var greeting;
		    var amount=<%=others%>;
		    amount=amount+a;
		    var l= parseInt(amount) + parseInt(a);
		    amount =l;
		    var percentage=<%=others1%>;
		    var income=<%=income%>;
		    var limit=income*percentage;
		    limit=limit/100;
		    
		    var limit2 = limit*90;
		    limit2=limit2/100;
		    
		    var limit1 = limit/2;
		    
		    
		    
		    if (limit < amount) {
		        greeting = limit;
		        alert("EXCEED YOUR LIMIT");
		    } 
		    else if (limit2 < amount) {
		        greeting = limit2;
		        alert("EXCEED YOUR 90 PERCENT LIMIT");
		    } 
		    else if (limit1 < amount) {
		        greeting = limit1;
		        alert("EXCEED YOUR HALF OF LIMIT");
		    } 
		    else {
		        greeting = "Good evening";
		        alert("UPDATED");
		    }
	}
	
}


</script>
  


</head>
<body background="expenses.jpg">

<center>
<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
        
            <form action="addexpensedatabase.jsp" method="post"name="myForm" accept-charset="utf-8" class="form" role="form" onsubmit="return validate()">   
                   <br>
                   <br>
                   <br>
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <input type="text" name="username" value="<%=l_id%>" class="form-control input-lg" placeholder="username" size="40"  />                        </div>
                        <div class="col-xs-6 col-md-6">
                            <input type="text" name="amount" value="" class="form-control input-lg" placeholder="amount"  size="40"/>                        </div>
                    </div>
                        <div class="col-xs-4 col-md-4">
                            <select name="category" class = "form-control input-lg" style="width: 263px;">
<option value="food">food</option>
<option value="travel">travel</option>
<option value="medical">medical</option>
<option value="loan">loan</option>
<option value="shopping">shopping</option>
<option value="education">education</option>
<option value="others">others</option>

</select>  
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
                   
                       
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit"> add expense</button>
            </form>          
          </div>
</div>            
</div>
</div>
</center>
</body>
</html>