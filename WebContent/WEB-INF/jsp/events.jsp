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
				<h1>Record Event</h1>

				<p>Enter the event you want to log.</p>
				<!-- 
				<form action="addEvent" method="post">
					<input type="text" name="username" placeholder="enter username"><br>
					<br> <input type="text" name="accountType"
						placeholder="enter accountType"> <br>
						
					<br> <input type="text" name="childNameAlias" placeholder="enter date"><br>
					
					<br> <input type="text" name="time" placeholder="enter time"><br>
					
					<br> <input type="text" name="childNameAlias"
						placeholder="enter Child Name Alias "><br>
						
					<br> <input type="text" name="event"
						placeholder="enter event "><br>
						
					<br> <input type="submit" value="Submit"><br>
					<br> <input type="reset" value="Reset"><br>
					<br>
				</form>
				 -->
				<div align="left">
				<form:form action="addEvent" method="POST" modelAttribute="userKey">
					
					<label for="date">Date</label> <!-- User input -->
					<input type="text" id="date" name="date" /> 
					
					<label for="time">Time</label> <!-- User input -->
					<input type="text" id="time" name="time" /> 
					
					<p>Select Baby Event</p>
                    <select name="event">
	                     <option value="Nursing Right">Nursing Right</option>
	                     <option value="Nursing Left">Nursing Left</option>
	                     <option value="Bottle Fed">Bottle Fed</option>
	                     <option value="Mixed Diaper">Mixed Diaper</option>
	                     <option value="Wet Diaper">Wet Diaper</option>
	                     <option value="Dirty Diaper">Dirty Diaper</option>
                    </select><br><br>
					
					<input type="submit" value="Submit">
				</form:form>
			</div>

				<h1>Events</h1>
				</h2>
				<p>Here are the events that have been tracked.</p>
			</header>
			
			
		
		<br><br><br><br>
		
			<c:forEach var="event" items="${eventList}">
			<p>${event.getDate()}</p>
			<p>${event.getTime()}</p>
			<p>${event.getUsername()}</p>
			<p>${event.getChildNameAlias()}</p>
			<p>${event.getEvent()}</p>
				<hr>
			</c:forEach>

			<br><br>
			<!-- 
			 <table id="mytable" class="table table-bordred table-striped">
                  
            
                   
                   <thead>
                   
                   
                   
                   <th><input type="checkbox" id="checkall" /></th>
                   <th>Date</th>
                    <th>Time</th>
                     <th>Child Name</th>
                     <th>Event</th>
                     
                      
                       <th>Delete</th>
                   </thead>
    <tbody>
    
    <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit">
								<button class="btn btn-primary btn-xs" data-title="Edit"
									data-toggle="modal" data-target="#edit">
									<span class="glyphicon glyphicon-pencil"></span>
								</button>
							</p></td>
    <td><p data-placement="top" data-toggle="tooltip"
								title="Delete">
								<button class="btn btn-danger btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</p></td>
    </tr>
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit">
								<button class="btn btn-primary btn-xs" data-title="Edit"
									data-toggle="modal" data-target="#edit">
									<span class="glyphicon glyphicon-pencil"></span>
								</button>
							</p></td>
    <td><p data-placement="top" data-toggle="tooltip"
								title="Delete">
								<button class="btn btn-danger btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</p></td>
    </tr>
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit">
								<button class="btn btn-primary btn-xs" data-title="Edit"
									data-toggle="modal" data-target="#edit">
									<span class="glyphicon glyphicon-pencil"></span>
								</button>
							</p></td>
    <td><p data-placement="top" data-toggle="tooltip"
								title="Delete">
								<button class="btn btn-danger btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</p></td>
    </tr>
    
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit">
								<button class="btn btn-primary btn-xs" data-title="Edit"
									data-toggle="modal" data-target="#edit">
									<span class="glyphicon glyphicon-pencil"></span>
								</button>
							</p></td>
    <td><p data-placement="top" data-toggle="tooltip"
								title="Delete">
								<button class="btn btn-danger btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</p></td>
    </tr>
    
    
 <tr>
    <td><input type="checkbox" class="checkthis" /></td>
    <td>Mohsin</td>
    <td>Irshad</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit">
								<button class="btn btn-primary btn-xs" data-title="Edit"
									data-toggle="modal" data-target="#edit">
									<span class="glyphicon glyphicon-pencil"></span>
								</button>
							</p></td>
    <td><p data-placement="top" data-toggle="tooltip"
								title="Delete">
								<button class="btn btn-danger btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#delete">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</p></td>
    </tr>

    </tbody>
        
</table>
			<!--  
				<table>
				<tbody>
					<tr>
						<th>User</th>
						<th>Child</th>
						<th>Event Type</th>
						<th>Event ID</th>
						<th>Date</th>
						<th>Time</th>
						<th>Recorded Event</th>
					</tr>
					<tr>
						<td>Example 1</td>
						<td>Example 2</td>
						<td>Example 3</td>
						<td>Example 4</td>
						<td>Example 5</td>
						<td>Example 6</td>
						<td>Example 7</td>
					</tr>
					<tr>
						<td>Example 6</td>
						<td>Example 7</td>
						<td>Example 8</td>
						<td>Example 9</td>
						<td>Example 10</td>
						<td>Example 11</td>
						<td>Example 12</td>
					</tr>
				</tbody>
				-->
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