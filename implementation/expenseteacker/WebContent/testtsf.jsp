<!DOCTYPE html>
<%
long food=52;
long food1=10;
long income=1000;

%>
<html>
<head>
<script>
function myFunction() {
    var greeting;
    var amount=<%=food%>;
    var percentage=<%=food1%>;
    var income=<%=income%>;
    var limit=income*percentage;
    limit=limit/100;
    
    var limit2 = limit*90;
    limit2=limit2/100;
    
    var limit1 = limit/2;
    
    
    
    if (limit < amount) {
        greeting = limit;
        alert("100per");
    } 
    else if (limit2 < amount) {
        greeting = limit2;
        alert("90per");
    } 
    else if (limit1 < amount) {
        greeting = limit1;
        alert("50per");
    } 
    else {
        greeting = "Good evening";
        alert("goodeve");
    }
    document.getElementById("demo").innerHTML = greeting;
}
</script>

</head>
<body>

<p>Click the button to get a time-based greeting:</p>

<button onclick="myFunction()">Try it</button>

<p id="demo"></p>



</body>
</html>
