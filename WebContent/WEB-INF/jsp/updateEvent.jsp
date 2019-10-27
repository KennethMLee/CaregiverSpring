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
				<li><a href="${pageContext.request.contextPath}/HomePage">Home</a></li>
				<li><a href="EventsPage">Events</a></li>
				<li><a href="#">Logout</a></li>
			</ul>
		</nav>
	</header>

	<!-- Main -->

<!-- Start of Modal -->
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h4 class="modal-title text-xs-center">Update Baby Event</h4>
		</div>
		<div class="modal-body">
			<form role="form"			
				action="${pageContext.request.contextPath}/updateEventForm/${event.eventId}" 
				method="POST">
				<input type="hidden" name="_token" value="">

				<div class="form-group">
					<label class="control-label">Id:</label>
					<div>
						<input type="text" class="form-control input-lg" name="eventId"
							placeholder="${event.eventId}" value="${event.eventId}" readonly />
					</div>
					
				<div class="form-group">
					<label class="control-label">username</label>
					<div>
						<input type="text" class="form-control input-lg" name="username"
							placeholder="${event.username}" value="${event.username}" readonly />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label">accountType</label>
					<div>
						<input type="text" class="form-control input-lg" name="accountType"
							placeholder="${event.accountType}" value="${event.accountType}" readonly />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label">date:</label>
					<div>
						<input type="text" class="form-control input-lg" name="date"
							placeholder="${event.date}" value="${event.date}" />
					</div>				
					</div>

				<div class="form-group">
					<label class="control-label">time:</label>
					<div>
						<input type="text" class="form-control input-lg"
							name="time" placeholder="${event.time}"
							value="${event.time}" />
					</div>
				</div>
				
								<div class="form-group">
					<label class="control-label">primaryCaregiverUsername:</label>
					<div>
						<input type="text" class="form-control input-lg"
							name="primaryCaregiverUsername" placeholder="${event.primaryCaregiverUsername}"
							value="${event.primaryCaregiverUsername}" readonly />
					</div>
				</div>
				
				
								<div class="form-group">
					<label class="control-label">childNameAlias:</label>
					<div>
						<input type="text" class="form-control input-lg"
							name="childNameAlias" placeholder="${event.childNameAlias}"
							value="${event.childNameAlias}" readonly />
					</div>
				</div>
				
								<div class="form-group">
					<label class="control-label">Baby Event:</label>		
                    <select name="event">
                    	<option value="${event.event}">"${event.event}"</option>
	                     <option value="Nursing Right">Nursing Right</option>
	                     <option value="Nursing Left">Nursing Left</option>
	                     <option value="Bottle Fed">Bottle Fed</option>
	                     <option value="Mixed Diaper">Mixed Diaper</option>
	                     <option value="Wet Diaper">Wet Diaper</option>
	                     <option value="Dirty Diaper">Dirty Diaper</option>
                    </select><br><br>
                    
                    
					</div>
				</div>
				
				
				<div class="modal-footer text-lg-center">
						<div>
							<button id="register-btn-click" type="submit"
								class="btn btn-info btn-block btn-lg">Update Event</button>
						</div>
				</div>

			</form>
		</div>

	</div>
	<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
<!-- /.modal -->

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