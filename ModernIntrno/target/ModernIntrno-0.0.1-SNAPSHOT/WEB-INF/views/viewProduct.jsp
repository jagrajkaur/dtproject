<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head><title>view more</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<%@ include file="template/header.jsp"%>
	<div class="container" ng-app = "cartApp">
	<div class="page-header">
            <h1>Product Detail</h1>
            <p class="lead">Here is the detail information of the product:</p>
    </div>
	
	<table class="table table-hover">
	<tr>
		<th><b>Product Image</b></th>
		<th><b>Product Name</b></th>
		<th><b>Product Description</b></th>
  		<th><b>Price</b></th>
  		<th><b>Quantity</b></th>
	</tr>
	<tr>
		<td><img class="img-fluid" style="height: 200px; width: 200px" src="<c:url value="/resources/images/${product.pid}.png" />"></td>
		<td> ${product.name }</td>
		<td>${product.description }</td>
		<td>${product.price }</td>
		<td>${product.quantity }</td>
	</tr>
	</table>
	
	<c:set var = "role" scope="page" value="${param.role}" />
    <c:set var = "url" scope="page" value="/allProducts" />
    <c:if test="${role='admin'}">
    <c:set var="url" scope="page" value="/admin/allProducts" />
    </c:if>
	
	<p ng-controller="cartCtrl">
        <a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.pid}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
        <a href="<spring:url value="/customer/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
    </p>
    
	</div><br><br><br><br><br><br><br><br>
	
	<script src="<c:url value="/resources/js/controller.js" /> "></script>
					<!-- footer -->
<%@ include file="template/footer.jsp" %>
<br><br>	
</body>
</html>