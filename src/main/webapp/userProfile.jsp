<%@page import="com.model.customer.User"%>
<%@page import="java.util.List"%>
<%@page import="com.service.customer.customerDBUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<style>
body {
	margin: 0;
	padding: 0px;
	font-family: 'popping', sans-serif;
	box-sizing: border-box;
	line-height: 1.5;
	background-image: url('loginBackground.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

.navbar-top {
	background-color: rgba(13, 13, 13, 0.1);
	backdrop-filter: blur(25px);
	color: #0f0e12;
	box-shadow: 0px 4px 8px 0px grey;
	height: 90px;
}

.title {
	font-family: 'Dancing Script', cursive;
	padding-top: 10px;
	position: absolute;
	left: 40%;
}

/* End */
header {
	background-color: #333;
	color: #fff;
	padding: 20px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo img {
	width: 120px;
	height: auto;
}

nav ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
}

nav ul li {
	margin-right: 20px;
}

nav ul li:last-child {
	margin-right: 0;
}

nav a {
	text-decoration: none;
	color: #fff;
	font-weight: 600;
	font-size: 16px;
	padding: 10px 20px;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

nav a:hover {
	background-color: #ff5733;
}

/* Improved navigation styles */
.navbar {
	display: flex;
	align-items: center;
}

.navbar li {
	margin-right: 20px;
}

.navbar a {
	text-decoration: none;
	color: #fff;
	font-weight: 600;
	font-size: 16px;
	padding: 10px 20px;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.navbar a:hover {
	background-color: #ff5733; /* Change background color on hover */
}

.hero {
	background-image: url('loginBackground.jpg');
	background-size: cover;
	background-position: center;
	color: #fff;
	text-align: center;
	padding: 100px 0;
}

.search-bar {
	background-color: rgba(0, 0, 0, 0.6);
	padding: 20px;
	border-radius: 5px;
	display: inline-block;
	max-width: 600px;
	margin: 0 auto;
}

.search-bar h1 {
	font-size: 36px;
	margin-bottom: 10px;
}

.search-bar p {
	font-size: 18px;
	margin-bottom: 20px;
}

.search-bar form input[type="text"], .search-bar form input[type="date"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
}

.search-bar form button {
	background-color: #ff5733;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	font-size: 18px;
	transition: background-color 0.3s ease;
}

.search-bar form button:hover {
	background-color: #ff4322;
}

footer {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 20px 0;
}

footer p {
	font-size: 14px;
}

/* Edit Profile section */
.edit-profile {
	display: flex;
	align-items: center;
	margin-right: 20px;
}

.edit-profile a {
	text-decoration: none;
	color: #fff;
	font-weight: 600;
	font-size: 16px;
	margin-left: 10px;
}

.profile {
	margin-bottom: 20px;
	margin-top: -12px;
	text-align: center;
}

.profile img {
	border-radius: 50%;
	box-shadow: 0px 0px 5px 1px grey;
}

.name {
	font-size: 20px;
	font-weight: bold;
	padding-top: 20px;
}

/* End */

/* Main */
.main {
	margin-top: 2%;
	margin-left: 29%;
	font-size: 28px;
	padding: 0 10px;
	width: 58%;
}

.main h2 {
	color: #333;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 24px;
	margin-bottom: 10px;
}

.main .card {
	background-color: rgba(255, 255, 255, 0.7);
	border-radius: 18px;
	box-shadow: 1px 1px 8px 0 black;
	height: auto;
	margin-bottom: 20px;
	padding: 20px 0 20px 50px;
}

.main .card table {
	border: none;
	font-size: 16px;
	height: 250px;
	width: 70%;
}

.btn {
	border: none;
	color: whitesmoke;
	padding: 14px 28px;
	font-size: 16px;
	cursor: pointer;
}

.Delete {
	background-color: #e45353;
	color: white;
	border-radius: 4px;
	border: none;
}

.Delete:hover {
	background-color: #de2020;
	color: white;
}

.editProfile {
	background-color: #53e458;
	color: black;
	border-radius: 4px;
	border: none;
}

.editProfile:hover {
	background-color: #45a049;
	color: white;
}
</style>

</head>

<body>

	<header>
		<div class="logo">
			<img src="logo.png" alt="Travel Buddy Logo">
		</div>
		<nav>
			<ul class="navbar">
				<li><a href="#">Home</a></li>
				<li><a href="#">Trains</a></li>
				<li><a href="#">Booking</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</nav>

	</header>

	<div class="navbar-top">
		<div class="title">
			<h1>Passenger Profile</h1>
		</div>
	</div>
	<br>
	<!-- End -->

	<div class="profile">
		<img
			src="https://th.bing.com/th/id/OIP.b_Yz_Lsdg4rLhQs_66zp6QHaHa?w=165&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"
			alt="" width="150" height="150">

		
	</div>

	<!-- End -->

	<!-- Main -->
	<div class="main">

		<%
		int loginUserId = (int) request.getSession().getAttribute("loginUserId");
		User firstUser= customerDBUtil.getCustomer(loginUserId);
		//User currentUser = user.get(0);
		%>
		<div class="card">
			<div class="card-body">

				<table>

					<tr>
						<td>Passenger ID :</td>
						<td><%=firstUser.getId()%></td>
					</tr>
					<tr>
						<td>Name :</td>
						<td><%=firstUser.getName()%></td>
					</tr>
					<tr>
						<td>E-mail :</td>
						<td><%=firstUser.getEmail()%></td>
					</tr>
					<tr>
						<td>Phone Number :</td>
						<td><%=firstUser.getPhone()%></td>
					</tr>
					<tr>
						<td>User Name :</td>
						<td><%=firstUser.getUserName()%></td>
					</tr>


				</table>

			</div>
		</div>


		<c:url value="deleteuserprofile.jsp" var="cusdelete">
			<c:param name="id" value="<%=String.valueOf(firstUser.getId())%>" />
			<c:param name="name" value="<%=firstUser.getName()%>" />
			<c:param name="email" value="<%=firstUser.getEmail()%>" />
			<c:param name="phone" value="<%=firstUser.getPhone()%>" />
			<c:param name="username" value="<%=firstUser.getUserName()%>" />
		</c:url>

		<a href="${cusdelete}">
			<button onclick="myFunction()" class="btn Delete">Delete
				Account</button>
		</a>

		<c:url value="edituserprofile.jsp" var="userDetails">
			<c:param name="id" value="<%=String.valueOf(firstUser.getId())%>" />
			<c:param name="name" value="<%=firstUser.getName()%>" />
			<c:param name="email" value="<%=firstUser.getEmail()%>" />
			<c:param name="phone" value="<%=firstUser.getPhone()%>" />
			<c:param name="username" value="<%=firstUser.getUserName()%>" />
		</c:url>



		<a href="${userDetails}">
			<button onclick="myFunction()" class="btn editProfile">Edit
				Profile</button>
		</a>

		<script>
			function myFunction() {
				var txt;
				if (confirm("Are you sure?")) {
					alert("Please Wait!");
				} else {
					alert("Error!");
				}
			}
		</script>
	</div>

	<!-- Footer -->
	<footer>
		<p>&copy; 2023 Travel Buddy - All rights reserved.</p>
	</footer>
</body>

</html>