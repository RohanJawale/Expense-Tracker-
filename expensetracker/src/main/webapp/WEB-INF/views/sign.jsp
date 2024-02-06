
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
 
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

<html>
<head>
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
</head>
<body>

	<div class="registration-form">
	<form:form action="${contextRoot}/process_register" method="post" modelAttribute="users">
		<form:hidden path="id"/>
	        <p>User Name:</p>
        <form:input path="uname" type="text" name="uname"  placeholder="UserName" />
        <p>Email:</p>
        <form:input path="email_id" type="text" name="email_id" placeholder="Email"/>
        <p>Password:</p>
        <form:input path="password" type="text" name="password"  placeholder="password" />
        <p>Phone No:</p>
        <form:input path="phoneno" type="text" name="phoneno"  placeholder="Phone Number"/>
        <button type="submit">Register</button>
        <form action="#" method="get">
            <button type="submit" id="login">Login</button>
        </form>
	
	
	
	</form:form>
	</div>
	
</body>
</html>
