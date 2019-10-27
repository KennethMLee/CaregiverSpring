<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<title>Caregiver</title>
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

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="resources/script/table.js"></script>
</head>
<body>
	<!-- Header -->
	<header id="header">
		<h1>
			<a href="${pageContext.request.contextPath}/HomePage">Caregiver</a>
		</h1>
		<nav id="nav">
			<ul>
				<li><a href="HomePage">Home</a></li>
				<li><a href="EventsPage">Add Events</a></li>
				<li><a href="#">Logout</a></li>
			</ul>
		</nav>
	</header>

	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="container">

				<h1>Events</h1>
				<p>Here are the events that have been tracked.</p>
			
		<br><br>
		
							<table class="table table-striped table-hover table-bordered">

						<tr>
							<th>Date</th>
							<th>Time</th>

							<th>User</th>
							<th>Child</th>
							<th>Event</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>

				<c:forEach var="event" items="${eventList}">
							<tr>
								<td>${event.getDate()}</td>
								<td>${event.getTime()}</td>
 								<td>${event.getUsername()}</td>
								<td>${event.getChildNameAlias()}</td>
								<td>${event.getEvent()}</td>
								<!-- display the update link -->
								<td><a
									href="${pageContext.request.contextPath}/updateEvent/${event.eventId}">Update</a></td>

								<!-- display the Delete link -->
								<td><a
									href="${pageContext.request.contextPath}/removeEvent/${event.eventId}">Delete</a></td>
							</tr>
						</c:forEach>					
					</table>
			<br><br>
			</table>
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
					<p>Tracking your child's growth and development.</p>
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