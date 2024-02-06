<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Sign Up - CodeJava</title>

   <style>
        *{
            padding:0;
            margin:0;
            font-family:sans-serif;
        }
        body{
            background: url('${pageContext.request.contextPath}/peakpx1.jpg')no-repeat;
            background-size: cover;
            color: #fff;
        }
        .registration-form{
            position: absolute;
             top:50%;
             left:50%;
             transform: translate(-50%,-50%);
             width: 440px;
        }
        .registration-form h1{
            font-size: 30px;
            text-align: center;
            text-transform:uppercase;
            margin: 40px 0;
        }
        .registration-form p{
            font-size: 20px;
            margin: 15px 0;
        }
        .registration-form input{
            font-size: 16px;
            padding: 15px 10px;
            width: 100%;
            border: 0;
            border-radius: 5px;
            outline: none;
        }
        .registration-form button{
            font-size: 18px;
            font-weight: bold;
            margin: 20px 30px;
            padding: 10px 0;
            width: 30%;
            border: 0;
            border-radius: 5px;
            background-color: #fff;
        }
        .registration-form button:hover{
            background-color: #008CBA;
        }
        #login:hover{
            background-color: #4CAF50;

        }

    </style>
    <script>
        function restrictToNumbers(element) {
            element.value = element.value.replace(/[^0-9]/g, '');
        }
    </script>
</head>
<body>
	<div class="registration-form">
		
		<form:form action="${contextRoot}/process_register" method="post"
			modelAttribute="users" >

			<p>Email :</p>

			<form:input type="email" path="email_id" />


			<p>UserName :</p>

			<form:input path="uname" type="text" minlength="5" maxlength="20" required="true" />


			<p>Password : </p>
			<form:input path="password" type="password" minlength="6" maxlength="10" required="true" />

			<p>Phone No :</p>
			<form:input path="phone_no" type="text"  minlength="10" maxlength="10" required="true" oninput="restrictToNumbers(this)" />

			<button type="submit" class="btn btn-primary">Sign Up</button>

		</form:form>
	</div>
</body>
</html>