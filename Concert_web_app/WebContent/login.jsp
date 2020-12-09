<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html lang="eng">

<head>
    <title>Login Form</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <meta name="author" content="Maria Pantazi - mpantazi-@uth.gr"> -->
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="shadow.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="style.css"> -->
    <link rel="stylesheet" href="all.css">
    <link rel="sortcut icon" type="image/png" href="favico.png">
    <style >
    <%@include file="style.css"%>
    <%@include file="all.css"%>
    <%@include file="reset.css"%>
    <%@include file="shadow.css"%>
    </style>
</head>

<body>
    <div class="header">
        <img src="/cockatiel-silhouette.png" alt="logo" class="logo">
        Art Eagle
        <h2>...your music concert predator.</h2>
    </div>
	<div class="container1">
    				
                    <a href="${pageContext.servletContext.contextPath}/login.jsp">Login/Signup</a>
                     <div text-align: right>Hello <%=session.getAttribute("username") %></div>
                     <a href="${pageContext.servletContext.contextPath}/logout">Logout</a>
                </div>
    <div class="content shadow">
        <h1 class="title">Please type in your info:</h1>
        <div class="concerts">
           <form action="<%=request.getContextPath() %>/login" method="post">			
		<p>
			Username:
			<input name="username" required/><br>
			Password:
			<input name="password"  type ="password" required/><br>
			<br><br>
			
			<center>
			<input type="submit" value="Login" >
		</center>
		<br>or
	    </form>       
	     <form action="<%=request.getContextPath() %>/sign-up" method="post">			
		<p>
			Username:
			<input name="username" required/><br>
			Password:
			<input name="password"  type ="password" required/><br>
			
			<br><br>
			<center>
			<input type="submit" value="Sign Up" >
		</center>
	    </form>      
	    <br>${message} 
        </div>
    </div>

</body>



</html>