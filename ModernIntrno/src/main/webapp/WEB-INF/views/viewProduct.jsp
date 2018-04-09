<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Modern Intrno Design Interior Category Bootstrap Responsive Website Template</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    

<body>
<%@ include file="template/header.jsp"%>
	<div class="container">
	<table class="table">
	<tr>
		<th><b> Product Name</b></th>
		<th><b> Product Description</b></th>  
	</tr>
	<tr>
		<td> ${product.name }</td>
		<td>${product.description }</td>
	</tr>
	</table>
	</div>
</body>
</html>