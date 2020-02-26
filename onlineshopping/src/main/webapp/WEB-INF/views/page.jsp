<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
	<title>Online Shopping</title>
	<link href="${css }/page.css" rel="stylesheet">
</head>
<body>
	<div class="header">
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Services</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
	<div class="body">
		<div class="left">
			<div class="category">
				<h1>Anh Hao Store</h1>
				<ul>
					<li><a href="#">Category 1</a></li>
					<li><a href="#">Category 2</a></li>
					<li><a href="#">Category 3</a></li>
				</ul>
			</div>
		</div>
		<div class="right">
			<div class="banner">
				<img src="#">
			</div>
			<div class="main">
				<div class="pro">
					<img src="#">
					<div class="title">Name Product</div>
					<div class="price"><h2>$24.99</h2></div>
					<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</div>
				</div>
				<div class="pro">
					<img src="#">
					<div class="title">Name Product</div>
					<div class="price"><h2>$24.99</h2></div>
					<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</div>
				</div>
				<div class="pro">
					<img src="#">
					<div class="title">Name Product</div>
					<div class="price"><h2>$24.99</h2></div>
					<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</div>
				</div>
				<div class="pro">
					<img src="#">
					<div class="title">Name Product</div>
					<div class="price"><h2>$24.99</h2></div>
					<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</div>
				</div>
				<div class="pro">
					<img src="#">
					<div class="title">Name Product</div>
					<div class="price"><h2>$24.99</h2></div>
					<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</div>
				</div>
				<div class="pro">
					<img src="#">
					<div class="title">Name Product</div>
					<div class="price"><h2>$24.99</h2></div>
					<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<h2>Copyright @ Your WebSite 2020</h2>
	</div>
</body>
</html>