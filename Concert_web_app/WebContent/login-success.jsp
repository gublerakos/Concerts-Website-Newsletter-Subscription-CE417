<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">

<head>
    <title>Art Eagle</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <meta name="author" content="Maria Pantazi - mpantazi-@uth.gr"> -->
    <link rel="stylesheet" href="reset.css">
    <link rel="stylesheet" href="shadow.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="sortcut icon" type="image/png" href="favico.png">
    
    <link rel="stylesheet"
	 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	 crossorigin="anonymous">
	 <title>Thank you!</title>
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
    <div class="content">
        <div class="sideMenu shadow">
            <a href="rock.html">Rock</a> 
            <a href="pop.html">Pop</a>
            <a href="blues.html">Blues</a>
            <a href="country.html">Country</a>
            <a href="electronic.html">Electronic</a>
            <a href="folk.html">Folk</a>
            <a href="hiphop.html">Hip Hop</a>
            <a href="jazz.html">Jazz</a>
            <a href="latin.html">Latin</a>
            <a href="heavymetal.html">Heavy Metal</a>
            <a href="kpop.html">K-pop</a>

            <!-- MORE MUSIC GENRES HERE -->

        </div>
        <div class="empty"></div>
        
        <div style="background-color: #F8EDEF;"></div>
	         <div align="center">
				  <h1>Welcome ${param.username}</h1>
				  <p><a href="${pageContext.servletContext.contextPath}/index.jsp">Now go discover some concerts!</a>
			 </div>
    	</div>
</body>

</html>