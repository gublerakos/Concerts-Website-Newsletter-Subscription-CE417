<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 					<c:choose>
						      <c:when test="${sessionScope.username==null}">
						      		<div text-align: right>Hello quest</div>
						      <br />
						      </c:when>
						      <c:when test="${sessionScope.username!=null}">
									<div text-align: right>Hello <%=session.getAttribute("username") %></div>
						      <br />
						      </c:when>
					 </c:choose>          
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
        <div class="trendingNow shadow">
            <img src="rhcp.jpg" alt="trendingNow" class="trending">
            <div class="overlay">
                <a href="trending.html" class="text">Trending Now
                    <br><h2 class="text2">click for more</h2>
                </a>

            </div>
        </div>
        <div style="background-color: #F8EDEF;"></div>
        <div class="mainMenu shadow">
            <div class="concerts">
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>
                <div class="container1">
                    <img src="billie.jpg" alt="Avatar" class="image1">
                    <div class="overlay1">
                        <div class="text1">Billie Eillish <br> click for more </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</body>

</html>s