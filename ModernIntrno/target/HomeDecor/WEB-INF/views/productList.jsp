<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="template/header.jsp"%>

	<center><h1>List of Products</h1></center>
	<!-- for iteration - similar to for() in Java -->
	<!-- products is a model attribute, to which we have assigned List<Product> -->
	<!-- 
products -> 
p = 1	Study Table design for bedroom	Study Table	6899.0	3
2	Decorative Wardrobe available easily	Wardrobe	16899.0	2
 -->
 <div class="container">
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>ProductID</th>
				<th>ProductImage</th>
				<th>ProductName</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products}" var="product">
				<tr>
					<!-- p.getProductName() -->
					<!-- p.getPrice() -->
					<td>${product.pid}</td>
					<td><img class="img-fluid" style="height: 40px; width: 40px" src="<c:url value="/resources/images/${product.pid}.png" />"></td>
					<td>${product.name }</td>
					<td>${product.price }</td>
					<td>
						<a href='<c:url value="viewProduct/${product.pid }"></c:url>'><span class="glyphicon glyphicon-info-sign"></span></a>
						<%-- <a href='<c:url value="viewProduct/${product.pid }"></c:url>'><span class="glyphicon glyphicon-trash"></span></a>
						<a href='<c:url value="viewProduct/${product.pid }"></c:url>'><span class="glyphicon glyphicon-pencil"></span></a>
						--%>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	
	
				<!-- footer -->
<%@ include file="template/footer.jsp" %>

</body>
</html>