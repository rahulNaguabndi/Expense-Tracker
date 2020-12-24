<!DOCTYPE html>
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-bar w3-top w3-black w3-large" style="z-index:4">
  <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i> �Menu</button>
  
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
   
    <a href="preprofile.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>� profile managment</a>
    <a href="settings.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-cogs" aria-hidden="true"></i>� settings managment</a>
    <a href="graph.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-signal" aria-hidden="true"></i>� show analysis</a>
    <a href="llmm.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-lock" aria-hidden="true"></i>� change password</a>
     <a href="logout.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-sign-out" aria-hidden="true"></i>� logout</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>� Close Menu</a>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"></a><i class="fa fa-plus-circle w3-xxxlarge" aria-hidden="true"></i></i></div>
        <div class="w3-right">
        </div>
        <div class="w3-clear"></div>
       <h4> <a href="addincome.jsp" class="btn btn-success btn-lg btn-block btn-huge" style="color: yellow;text-decoration:none">add income</a></h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left">
        <i class="fa fa-plus-square w3-xxxlarge" aria-hidden="true"></i></i>
        </div>
        <div class="w3-right">
         
        </div>
        <div class="w3-clear"></div>
              <h4> <a href="addexpense.jsp" class="btn btn-success btn-lg btn-block btn-huge" style="color: yellow;text-decoration:none">add expense</a></h4>
        
        
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-cogs  w3-xxxlarge" aria-hidden="true"></i></i></div>
        <div class="w3-right">
        </div>
        <div class="w3-clear"></div>
       <h4> <a href="settings.jsp" class="btn btn-success btn-lg btn-block btn-huge" style="color: red;text-decoration:none;" >settings</a></h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-sign-out w3-xxxlarge" aria-hidden="true"></i></div>
        <div class="w3-right">
        
        </div>
        <div class="w3-clear"></div>
                     <h4> <a href="logout.jsp" class="btn btn-success btn-lg btn-block btn-huge" style="color: blue; background-color: yellow;text-decoration:none">logout</a></h4>
      </div>
    </div>
  </div>

  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      
     
    </div>
  </div>
  <hr>

  <hr>


 
  <!-- Footer -->
 
  <!-- End page content -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}
</script>
<%
String username=session.getAttribute("username").toString();
//System.err.println(username);
//session.setAttribute("usr",username);
%>

</body>
</html>
	