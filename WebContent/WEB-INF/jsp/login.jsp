<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<title>Generic - Interphase by TEMPLATED</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="<c:url value="/resources/script/jquery.min.js" />"></script>
<script src="<c:url value="/resources/script/skel.min.js" />"></script>
<script src="<c:url value="/resources/script/skel-layers.min.js" />"></script>
<%-- <script src="<c:url value="/resources/script/init.js" />"></script> --%>

<link rel="stylesheet" href="<c:url value="/resources/css/skel.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/style-xlarge.css" />" />

<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>

	<!-- Header -->
	<header id="header">
		<h1>
			<a href="HomePage">Caregiver</a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="HomePage">Home</a></li>
				<li><a href="LogInPage">Login</a></li>
				<li><a href="RegistrationPage">Register</a></li>
				<li><a href="EventsPage">Events</a></li>
				<li><a href="#">Logout</a></li>
			</ul>
		</nav>
	</header>

	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="container">

			<header class="major">
				<h2>Login</h2>
				<p>Login to your account</p>
			</header>

			<!-- FORM LOGIN -->
			<div>
				<form action="LogIn" method="post">
					<label for="username">Enter your username</label> 
					<input type="text" id="fname" name="username"> 
					
					<label for="password">Enter your password</label> 
					<input type="text" id="lname" name="password"> 
					
					<input type="submit" value="Submit">
				</form>
			</div>
			</p>

			<p>
				<a href="#">Forgot your username?</a><br> <a href="#">Forgot
					your password?</a>
			</p>
		</div>
		</p>

		</div>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<div class="row">
				<section class="4u 6u(medium) 12u$(small)">
					<h3>About Caregiver</h3>
					<p>Track and monitor your baby's activity</p>
					<!--<ul class="alt">
								<li><a href="#">Lorem ipsum dolor sit amet.</a></li>
								<li><a href="#">Quod adipisci perferendis et itaque.</a></li>
								<li><a href="#">Itaque eveniet ullam, veritatis reiciendis?</a></li>
								<li><a href="#">Accusantium repellat accusamus a, soluta.</a></li>
							</ul>-->
				</section>
				<section class="4u 6u$(medium) 12u$(small)">
					<h3>Nostrum, repellat!</h3>
					<p>Tenetur voluptate exercitationem eius tempora! Obcaecati
						suscipit, soluta earum blanditiis.</p>
					<ul class="alt">
						<li><a href="#">Lorem ipsum dolor sit amet.</a></li>
						<li><a href="#">Id inventore, qui necessitatibus sunt.</a></li>
						<li><a href="#">Deleniti eum odit nostrum eveniet.</a></li>
						<li><a href="#">Illum consectetur quibusdam eos corporis.</a></li>
					</ul>
				</section>
				<section class="4u$ 12u$(medium) 12u$(small)">
					<h3>Contact Us</h3>
					<ul class="icons">
						<li><a href="#" class="icon rounded fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon rounded fa-facebook"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon rounded fa-pinterest"><span
								class="label">Pinterest</span></a></li>
						<li><a href="#" class="icon rounded fa-google-plus"><span
								class="label">Google+</span></a></li>
						<li><a href="#" class="icon rounded fa-linkedin"><span
								class="label">LinkedIn</span></a></li>
					</ul>
					<ul class="tabular">
						<li>
							<h3>Address</h3> 1234 Massachusetts Avenue<br> Boston, MA
							02115
						</li>
						<li>
							<h3>Mail</h3> <a href="#">hello@caregiver.com</a>
						</li>
						<li>
							<h3>Phone</h3> (800) 909-73110
						</li>
					</ul>
				</section>
			</div>
			<ul class="copyright">
				<li>&copy; 2019 Caregiver. All rights reserved.</li>
				
			</ul>
		</div>
	</footer>
</body>
</html>