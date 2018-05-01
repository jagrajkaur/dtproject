<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="template/header.jsp"%>
<div class="container">
<h1 align="center">Add Product</h1>

<form:form method="POST" action="${pageContext.request.contextPath}/admin/addProduct" commandName="product"  enctype="multipart/form-data">
<table class="table form-group">
        <tr>
            <td><label for="name">Enter Product Name</label></td>
            <td><form:input path="name" id="name"/><br>
            <form:errors path="name" cssStyle="color:red"></form:errors></td>
        </tr>
        
        <tr>
            <td><label for="description">Enter Product Description</label></td>
            <td><form:input path="description" id="description"/><br>
            <form:errors path="description" cssStyle="color:red"></form:errors></td>
        </tr>
       
         <tr>
            <td><label for="quantity">Enter Quantity</label></td>
            <td><form:input path="quantity" id="quantity"/><br>
            <form:errors path="quantity" cssStyle="color:red"></form:errors></td>
        </tr>
       
        <tr>
            <td><label for="price">Enter Price</label></td>
            <td><form:input path="price" id="price"/><br>
            <form:errors path="price" cssStyle="color:red"></form:errors></td>
        </tr>
        <tr>        
          <td><label for="image">Image</label></td>       
           <td><form:input type="file" path="image" /><br></td>  
        </tr> 
           
         <tr>   
               <td colspan="2">   
               <input type="submit" value="Add Product"/>     
               </td>   
         </tr>
</table>

</form:form>
</div><br><br><br>

				<!-- footer -->
<%@ include file="template/footer.jsp" %>

</body>
</html>