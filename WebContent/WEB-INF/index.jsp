<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<!-- <meta charset="UTF-8"> -->
<title>Caregiver</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->

<script src="<c:url value="/resources/script/jquery.min.js" />"></script>
<script src="<c:url value="/resources/script/skel.min.js" />"></script>
<script src="<c:url value="/resources/script/skel-layers.min.js" />"></script>
<%-- <script src="<c:url value="/resources/script/init.js" />"></script> --%>

<c:url value="/resources/css/skel.css" var="skelCSS" />
<c:url value="/resources/css/style.css" var="styleCSS" />
<c:url value="/resources/css/style-xlarge.css" var="stylexlargeCSS" />

<link rel="stylesheet" href="${skelCSS }" />
<link rel="stylesheet" href="${styleCSS}" />
<link rel="stylesheet" href="${stylexlargeCSS }" />

<!-- image url -->
<c:url value="/resources/img/overlay.png" var="overlayPNG" />
<c:url value="/resources/img/banner.jpg" var="bannerJPG" />

<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->

<style type="text/css">
#banner {
	background: url("${overlayPNG}"), url("${bannerJPG}");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	color: #ffffff;
	padding: 16em 0em 14em;
	text-align: center;
}
</style>

</head>


<body class="landing">

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
				<!--  
				<li><a href="EventsPage">Events</a></li>
				-->
				
				<li><a href="#">Logout</a></li>
				
			</ul>
		</nav>
	</header>

	<!-- Banner -->
	<section id="banner">
		<h2>Welcome to Caregiver</h2>
		<p>Track and monitor your baby's activity</p>
		<ul class="actions">
			<li><a href="LogInPage" class="button big">Login</a></li>
		</ul>
	</section>

	<!-- One -->
	<section id="one" class="wrapper style1 align-center">
		<div class="container">
			<header>
				<h2>Consectetur adipisicing elit</h2>
				<p>Lorem ipsum dolor sit amet adipisicing elit. Delectus
					consequatur sed tempus.</p>
			</header>
			<div class="row 200%">
				<section class="4u 12u$(small)">
					<i class="icon big rounded fa-clock-o"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Enim quam consectetur quibusdam magni minus aut modi aliquid.</p>
				</section>
				<section class="4u 12u$(small)">
					<i class="icon big rounded fa-comments"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Laudantium ullam consequatur repellat debitis maxime molestiae.</p>
				</section>
				<section class="4u$ 12u$(small)">
					<i class="icon big rounded fa-user"></i>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Atque eaque eveniet, nesciunt molestias. Ipsam, voluptate vero.</p>
				</section>
			</div>
		</div>
	</section>

	<!-- Two -->
	<!--
			<section id="two" class="wrapper style2 align-center">
				<div class="container">
					<header>
						<h2>Lorem ipsum dolor sit</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio, autem.</p>
					</header>
					<div class="row">
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic01.jpg" alt="" />
							<h3 class="title">Lorem ipsum dolor</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore ipsa voluptate, quae quibusdam. Doloremque similique, reiciendis sit quibusdam aperiam? Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic02.jpg" alt="" />
							<h3 class="title">Esse, fugiat, in</h3>
							<p>Natus perspiciatis fugit illum porro iusto fuga nam voluptas minima voluptates deserunt, veniam reiciendis harum repellat necessitatibus. Animi, adipisci qui. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
						<section class="feature 6u 12u$(small)">
							<img class="image fit" src="images/pic03.jpg" alt="" />
							<h3 class="title">Voluptates, repudiandae, dolor</h3>
							<p>Voluptatibus repellendus tempora, quia! Consequuntur atque, rerum quis, ullam labore officiis ipsa beatae dolore, assumenda eos harum repudiandae, qui ab! Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
						<section class="feature 6u$ 12u$(small)">
							<img class="image fit" src="images/pic04.jpg" alt="" />
							<h3 class="title">Eveniet, reiciendis, veniam</h3>
							<p>Rem nulla molestiae inventore quibusdam repudiandae doloremque eveniet ullam, qui autem possimus saepe laudantium numquam sapiente vel. Repudiandae, nihil tempore. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						</section>
					</div>
					<footer>
						<ul class="actions">
							<li>
								<a href="#" class="button alt big">Learn More</a>
							</li>
						</ul>
					</footer>
				</div>
			</section>
-->
	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<div class="row">
				<section class="4u 6u(medium) 12u$(small)">
					<h3>About Caregiver</h3>
					<p>Tracking your baby's activity.</p>
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