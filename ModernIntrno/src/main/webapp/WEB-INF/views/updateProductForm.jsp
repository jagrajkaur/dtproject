<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="template/header.jsp"%>

	<!-- product =new Product() -->
	<div class="container">
	
	<div class="page-header">
	 <h3 align="center">Update Product</h3>
	 <p class="lead">Please update the product information here....</p>
	</div>
	
	<form:form action="/admin/updateProductForm/${pageContext.request.contextPath}" method="post" commandName="product" enctype="multipart/form-data">
		<%-- <form:hidden path="pid" value="${product.pId}" /> --%>
        <div class="form-group">
		<form:label path="name">Enter product Name</form:label>
		<form:input path="name" class="form-control" style="width:750px"/>
		<form:errors path="name" cssStyle="color:red"></form:errors>
        </div>
        
        <div class="form-group">
		<form:label path="description">Enter Product Description</form:label>
		<form:textarea path="description"  class="form-control" style="width:750px"/>
		<form:errors path="description" cssStyle="color:red"></form:errors>
        </div>
        
        <div class="form-group">
		<form:label path="quantity">Enter Quantity</form:label>
		<form:input path="quantity" class="form-control" style="width:750px"/>
		<form:errors path="quantity" cssStyle="color:red"></form:errors>
        </div>
        
        <div class="form-group">
		<form:label path="price">Enter Price</form:label>
		<form:input path="price" class="form-control" style="width:750px"/>
		<form:errors path="price" cssStyle="color:red"></form:errors>
        </div>
        
        <div class="form-group">
		<form:label path="image">Upload Picture</form:label>
		<form:input type="file" path="image" class="form-control" style="width:750px"/>
        </div>
        
		
		<input type="submit" value="Edit Product" class="btn btn-default">
	</form:form>
	</div>
	
					<!-- footer -->
<%@ include file="template/footer.jsp" %>
	


</body>
</html>