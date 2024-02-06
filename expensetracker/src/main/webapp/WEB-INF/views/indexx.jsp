<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<html xmlns:th="http://www.w3.org/1999/xhtml"
	xmlns:sf="http://www.w3.org/1999/xhtml" lang="en">


<head>

<title>Document</title>
<!-- <link rel="stylesheet" href="style1.css"> -->
<style>
* {
	margin: 0;
	padding: 0;
}

.main {
	width: 100%;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.5) 50%,
		rgba(0, 0, 0, 0.5) 50%), url(peakpx1.jpg);
	background-position: center;
	background-size: cover;
	height: 100vh;
}

.navbar {
	width: 1200px;
	float: left;
	height: 70px;
}

.logo {
	color: #ff7200;
	font-size: 35px;
	font-family: Arial;
	padding-left: 20px;
	float: left;
	padding-top: 10px;
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}

ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 14px;
}

ul li a {
	text-decoration: none;
	color: #ffffff;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #ff7200;
}

.content {
	width: 1200px;
	left: 7%;
	top: 30%;
	position: absolute;
	margin-top: -25%;
	color: #ffffff;
}

.content .par {
	padding-left: 20px;
	padding-bottom: 25px;
	font-family: Arial;
	letter-spacing: 1.2px;
	line-height: 30px;
}

.content {
	width: 1200px;
	height: auto;
	margin: auto;
	color: #fff;
	position: relative;
}

.content .par {
	padding-left: 20px;
	padding-bottom: 25px;
	font-family: Arial;
	letter-spacing: 1.2px;
	line-height: 30px;
}

.content h1 {
	font-family: 'Times New Roman';
	font-size: 50px;
	padding-left: 20px;
	margin-top: 9%;
	letter-spacing: 2px;
}

.content .cn {
	width: 160px;
	height: 40px;
	background: #ff7200;
	border: none;
	margin-bottom: 10px;
	margin-left: 20px;
	font-size: 18px;
	border-radius: 10px;
	cursor: pointer;
	transition: .4s ease;
}

.content .cn a {
	text-decoration: none;
	color: #000;
	transition: .3s ease;
}

.cn:hover {
	background-color: #fff;
}

.content span {
	color: #ff7200;
	font-size: 65px
}

.form {
	width: 250px;
	height: 380px;
	background: linear-gradient(to top, rgba(0, 0, 0, 0.8) 50%,rgba(0, 0, 0, 0.8) 50%);
	margin-top:30px;
	left: 870px;
	transform: translate(0%, -5%);
	border-radius: 10px;
	padding: 25px;
}

.form h2 {
	width: 220px;
	height: 50px;
	font-family: sans-serif;
	text-align: center;
	color: #ff7200;
	font-size: 22px;
	background-color: #fff;
	border-radius: 10px;
	margin: auto;
	padding: 16px;
}

.form input {
	width: 240px;
	height: 35px;
	background: transparent;
	border-bottom: 1px solid #ff7200;
	border-top: none;
	border-right: none;
	border-left: none;
	color: #fff;
	font-size: 15px;
	letter-spacing: 1px;
	margin-top: 30px;
	font-family: sans-serif;
}

.form input:focus {
	outline: none;
}

::placeholder {
	color: #fff;
	font-family: Arial;
}

#btnn {
	width: 240px;
	height: 40px;
	background: #ff7200;
	border: none;
	margin-top: 30px;
	font-size: 18px;
	border-radius: 10px;
	cursor: pointer;
	color: #fff;
	transition: 0.4s ease;
}

#btnn:hover {
	background: green;
	color: #ff7200;
}

#btnn a {
	text-decoration: none;
	color: #000;
	font-weight: bold;
}
#message{
text-align:center;
}

.form .link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 17px;
	padding-top: 20px;
	text-align: center;
}

.form .link a {
	text-decoration: none;
	color: #ff7200;
}

.liw {
	padding-top: 15px;
	padding-bottom: 10px;
	text-align: center;
}

.icons a {
	text-decoration: none;
	color: #fff;
}

.icons ion-icon {
	color: #fff;
	font-size: 30px;
	padding-left: 14px;
	padding-top: 5px;
	transition: 0.3s ease;
}

.icons ion-icon:hover {
	color: #ff7200;
}
</style>
</head>

<body>
	<div class=" main">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo">ExpenseTracker</h2>
			</div>
		</div>
		<!-- <div class="menu"> 
                <ul>
                    <li><a href ="#">HOME</a></li>
                    <li><a href ="#">ABOUT</a></li>
                    <li><a href ="#">SERVICE</a></li>
                    <li><a href ="#">DESIGN</a></li>
                    <li><a href ="#">CONTACT</a></li>

                </ul>
            </div> -->
		<div class="content">


			<!-- <button class="cn"><a href="#">JOIN US</a></button> -->

			<div class="form">
				<form:form action="${contextRoot}/signin" method="Get"
					modelAttribute="users" >
					<c:if test="${param.error!=null}">
						<p id="message" style="color: red">You entered wrong credentials!</p>
					</c:if>
					<c:if test="${param.logout!=null}">
						<p  id="message" style="color:green">You have been loged out</p>
					</c:if>
					<h2>Login Here</h2>
					<input type="text" name="uname" placeholder="Enter UserName Here"
						required="true"> <input type="password" name="password"
						placeholder="Enter Password Here" required="true"> <input
						type="submit" id="btnn" value="Login">
				</form:form>
				<p class="link">
					Don't have an account<br> <a href="sign">Sign up </a> here</a>
				</p>

				<div class="icons">
					<a href="#"><ion-icon name="logo-facebook"></ion-icon></a> <a
						href="#"><ion-icon name="logo-instagram"></ion-icon></a> <a
						href="#"><ion-icon name="logo-twitter"></ion-icon></a> <a href="#"><ion-icon
							name="logo-google"></ion-icon></a> <a href="#"><ion-icon
							name="logo-skype"></ion-icon></a>
				</div>
			</div>
		</div>
	</div>


	</div>

	</div>
</body>

</html>