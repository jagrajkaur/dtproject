<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>view more</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<body>
<%@ include file="template/header.jsp"%>
	<div class="container">
	<table class="table">
	<tr>
		<th><b>Product Image</b></th>
		<th><b> Product Name</b></th>
		<th><b> Product Description</b></th>
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
	</div><br><br><br><br><br><br><br><br><br><br>
					<!-- footer -->
<%@ include file="template/footer.jsp" %>
<br><br>	
</body>
</html>