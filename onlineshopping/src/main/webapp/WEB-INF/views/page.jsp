<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - ${title }</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/page.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<%@include file="./shared/natigation.jsp"%>

	<!-- Page Content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>
	<c:if
		test="${userClickAllProducts == true or userClickCategoryProducts == true}">
		<%@include file="listProducts.jsp"%>
	</c:if>

	<!-- /.container -->

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js }/jquery.min.js"></script>
	<script src="${js }/bootstrap.bundle.min.js"></script>
	<script src="${js }/myapp.js"></script>

</body>

</html>
