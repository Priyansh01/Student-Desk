<!DOCTYPE HTML>
<!--
	Aesthetic by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Savory &mdash; Free Website Template, Free HTML5 Template by GetTemplates.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by GetTemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="GetTemplates.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Bootstrap DateTimePicker -->
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">



	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
$("#addteachers").click(function() {
    $('html,body').animate({
        scrollTop: $("#data").offset().top},
        'slow');
		});
$("#addteachers").click(function(){
$("#data").load('hodreg.html');
  });
  $("#addstudents").click(function() {
    $('html,body').animate({
        scrollTop: $("#data").offset().top},
        'slow');
		});
  $("#addstudents").click(function(){
$("#data").load('studreg.html');
  });
  $("#deletestud").click(function() {
    $('html,body').animate({
        scrollTop: $("#data").offset().top},
        'slow');
		});
  $("#deletestud").click(function(){
$("#data").load('deletestud.html');
  });
  $("#updatestud").click(function() {
    $('html,body').animate({
        scrollTop: $("#data").offset().top},
        'slow');
		});
  $("#updatestud").click(function(){
$("#data").load('updatestud.html');
  });
  $("#deletehod").click(function() {
    $('html,body').animate({
        scrollTop: $("#data").offset().top},
        'slow');
		});
  $("#deletehod").click(function(){
$("#data").load('deletehod.html');
  });
  $("#updatehod").click(function() {
    $('html,body').animate({
        scrollTop: $("#data").offset().top},
        'slow');
		});
  $("#updatehod").click(function(){
$("#data").load('updatehod.html');
  });
  $("#marks").click(function(){
$("#data").load('marks.html');
  });
});
</script>
<script>
$(document).ready(function(){
	
$("#marks").click(function(){
$("#data").load('marks.html');
  });
  $("#addstudents").click(function(){
$("#data").load('studreg.html');
  });
  $("#deletestud").click(function(){
$("#data").load('deletestud.html');
  });
  $("#updatestud").click(function(){
$("#data").load('updatestud.html');
  });
  $("#deletehod").click(function(){
$("#data").load('deletehod.html');
  });
  $("#updatehod").click(function(){
$("#data").load('updatehod.html');
  });
});
</script>
	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
       	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.html">STUDENT DESK <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
                        <li class="btn-cta"><a href="index.html"><span>Home</span></a></li>
						<li class="btn-cta">
							<a href="logout.jsp"><span>Logout</span></a>
							<!--<ul class="dropdown">
								<li><a href="#">Admin Department</a></li>
								<li><a href="#">Head OF Department</a></li>
								<li><a href="#">Teachers</a></li>
							</ul>-->
						</li>
						<li><a href="contact.html">Contact</a></li>
						</ul>	
				</div>
			</div>
			
		</div>
	</nav>

	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_bg_1.jpg)" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<%String pos=(String)session.getAttribute("position");
					%>

					<div class="row row-mt-15em">
						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							
							<h1 class="cursive-font">It's our pleasure to serve you </h1><h2 class="cursive-font"><%= pos %></h6>
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	<!-- Admin Department starts-->
	<div id="gtco-features">
		<div class="gtco-container">
		
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2 class="cursive-font">Functionalities</h2>
				</div>
			</div>
		<% if(pos.equals("admin")){%>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="addstudents">Add Students Records</h3>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						
						<h3 id="addteachers">Add Head Of Departments</h3>
						
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="deletestud">Delete Students Records</h3>
						
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="updatestud">Update Student Records</h3>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="updatehod">Update HOD Records</h3>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="deletehod">Delete HOD</h3>
					</div>
				</div>

			</div>
			<%} %>

	<!-- Admin Department starts-->
		
		<% if(pos.equals("hod")){%>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="marks">Add student Marks</h3>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						
						<h3 id="addteachers">Add Teachers</h3>
						
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="detelestud">Delete Students Marks</h3>
						
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="updatestud">Update Student Marks</h3>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="updatehod">Update teacher Records</h3>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="deletehod">Delete Teacher Records</h3>
					</div>
				</div>

			</div>
		<%} %>
		<% if(pos.equals("teacher")){%>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<h3 id="marks">Add student Marks</h3>
					</div>
				</div>
				
			</div>
		<%} %>
	</div>	</div>
	</div>
		
		
		
	</div>
	<div style="background-image: url(images/img_bg_1.jpg)"  id="data" >
	
		
	
	
	<!-- Admin department Ends -->
	<div  style="background-image: url(images/img_bg_1.jpg)" id="data">
		

	<!-- HOD department Ends -->
        <footer id="gtco-footer" role="contentinfo" style="background-image: url(images/img_bg_11.jpg)" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div class="row row-pb-md">
                    <div class="col-md-12 text-center">
                        <div class="gtco-widget">
                            <h3>Get Social</h3>
                            <ul class="gtco-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-12 text-center copyright">
                        <p>
                            <small class="block">&copy;All Rights Reserved </small>
                            <small class="block">Designed And Developed By : Vedant Mehta And Yatin Bhel</small>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<script src="js/moment.min.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>


	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

