<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

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
<link rel="stylesheet"
	href="<c:url value="/resources/css/style-xlarge.css" />" />


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
				<h2>Register</h2>
				<p>Register your account</p>
			</header>
			<!-- FORM LOGIN -->
			<div>
				<form:form action="RegisterUser" method="POST" modelAttribute="newuser">
				
					<label for="username">Create Username</label> 
					<form:input type="text" id="username" path="username" /> <br><br>
					
					<label for="password">Create Password</label> 
					<form:input type="text" id="password" path="password" /><br><br>
					
					<label for="email">Enter you email</label> 
					<form:input type="text" id="email" path="email" /><br><br>
					
					<p>Are you the Primary Caregiver or a Caregiver?</p>
                    <form:select path="accountType">
	                     <form:option value="primaryCaregiver">Primary Caregiver</form:option>
	                     <form:option value="caregiver">Caregiver</form:option>
                    </form:select><br><br>
                    
					<label for="childNameAlias">Enter a nickname for your baby</label> 
					<form:input type="text" id="childNameAlias" path="childNameAlias" /> <br><br>
					
					<label for="childProfile">Enter important information you wish Caregivers to know about your baby: (Ex. My baby is allergic to nuts.)</label> 
					<form:input type="text" id="childProfile" path="childProfile" /> <br><br>
					
					<input type="submit" value="Submit">
				</form:form>
			</div>
			<p>
				<a href="#">Forgot your username?</a><br> <a href="#">Forgot
					your password?</a>
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