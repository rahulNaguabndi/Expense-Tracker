<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body id="myPage">

<!-- Sidebar on click -->
<nav class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge" style="display:none;z-index:2" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-display-topright w3-text-teal">Close
    <i class="fa fa-remove"></i>
  </a>
  <a href="#" class="w3-bar-item w3-button">Link 1</a>
  <a href="#" class="w3-bar-item w3-button">Link 2</a>
  <a href="#" class="w3-bar-item w3-button">Link 3</a>
  <a href="#" class="w3-bar-item w3-button">Link 4</a>
  <a href="#" class="w3-bar-item w3-button">Link 5</a>
</nav>

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-teal"><i class="fa fa-home w3-margin-right"></i>HOME</a>
  <a href="#team" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Team</a>
  <a href="#work" class="w3-bar-item w3-button w3-hide-small w3-hover-white">about</a>
  <a href="#contact" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Contact</a>
    
   
  <a href="signup2.jsp" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search">signup</a>
  <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search">login</a>
 </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
    <a href="#team" class="w3-bar-item w3-button">Team</a>
    <a href="#work" class="w3-bar-item w3-button">Work</a>
    <a href="#pricing" class="w3-bar-item w3-button">Price</a>
    <a href="#contact" class="w3-bar-item w3-button">Contact</a>
    <a href="#" class="w3-bar-item w3-button">Search</a>
  </div>
</div>

<!-- Image Header -->
<div class="w3-display-container w3-animate-opacity">
  <img src="expenses.jpg" alt="boat" style="width:100%;min-height:350px;max-height:600px;">
</div>

<!-- Modal -->
<div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-4 w3-animate-top">
    <header class="w3-container w3-teal w3-display-container"> 
      <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-teal w3-display-topright"><i class="fa fa-remove"></i></span>
      <h4>Oh snap! We just showed you a modal..</h4>
      <h5>Because we can <i class="fa fa-smile-o"></i></h5>
    </header>
    <div class="w3-container">
      <p>Cool huh? Ok, enough teasing around..</p>
      <p>Go to our <a class="w3-text-teal" href="/w3css/default.asp">W3.CSS Tutorial</a> to learn more!</p>
    </div>
    <footer class="w3-container w3-teal">
      <p>Modal footer</p>
    </footer>
  </div>
</div>

<!-- Team Container -->
<div class="w3-container w3-padding-64 w3-center" id="team">
<div class="w3-quarter">
  <img src="vvvv.jpg" alt="Boss" style="width:60%" class="w3-circle w3-hover-opacity">
  <h3>Rahul Nagubandi</h3>
  <p>CODER</p>
</div>

<div class="w3-quarter">
  <img src="2017-07-01 21.03.48.jpg" alt="Boss" style="width:40%" class="w3-circle w3-hover-opacity">
  <h3>M Pranay</h3>
  <p>DOCUMENTATION</p>
</div>

<div class="w3-quarter">
  <img src="IMG_20170809_101817484.jpg" alt="Boss" style="width:40%" class="w3-circle w3-hover-opacity">
  <h3>Rachapudi saketh</h3>
  <p>SCRUM MASTER</p>
</div>

<div class="w3-quarter">
  <img src="IMG_1301.jpg" alt="Boss" style="width:40%" class="w3-circle w3-hover-opacity">
  <h3>Matta Raja</h3>
  <p>TESTER</p>
</div>
<div class="w3-quarter">
  <img src="Screenshot_20180303-192716 (1).png" alt="Boss" style="width:40%" class="w3-circle w3-hover-opacity">
  <h3>Sathvik manyam</h3>
  <p>DESIGNER</p>
</div>

</div>


<!-- Work Row -->
<div class="w3-row-padding w3-padding-64 w3-theme-l1" id="work">
<h2>Our Work</h2>
<p>The main purpose of this application is to track all the expenses made by a user on a day to day basis.The user can generate report of his expenses based on the transaction date of the expenses or category of items</p>
</div>

<!-- Container -->
<div class="w3-container" style="position:relative">
  <a onclick="w3_open()" class="w3-button w3-xlarge w3-circle w3-teal"
  style="position:absolute;top:-28px;right:24px">+</a>
</div>


<!-- Contact Container -->
<div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
 
    <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Contact Us</span></div>
      <h3>Address</h3>
      <p>expense tracker .Inc.</p>
      <p><i class="fa fa-map-marker w3-text-teal w3-xlarge"></i>��coimbatore, india</p>
      <p><i class="fa fa-phone w3-text-teal w3-xlarge"></i>��+91 9003877526</p>
      <p><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>��expensetracker.amrita@gmail.com</p>
    </div>

  
</div>

<!-- Google Maps -->

<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
  <h4>Follow Us</h4>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Facebook"><i class="fa fa-facebook"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Twitter"><i class="fa fa-twitter"></i></a>
  <a class="w3-button w3-large w3-teal" href="javascript:void(0)" title="Google +"><i class="fa fa-instagram"></i></a>
  <a class="w3-button w3-large w3-teal w3-hide-small" href="javascript:void(0)" title="Linkedin"><i class="fa fa-linkedin"></i></a>
  <div style="position:relative;bottom:100px;z-index:1;" class="w3-tooltip w3-right">
    <span class="w3-text w3-padding w3-teal w3-hide-small">Go To Top</span>   
    <a class="w3-button w3-theme" href="#myPage"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
</footer>

<script>
// Script for side navigation
function w3_open() {
    var x = document.getElementById("mySidebar");
    x.style.width = "300px";
    x.style.paddingTop = "10%";
    x.style.display = "block";
}

// Close side navigation
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>
