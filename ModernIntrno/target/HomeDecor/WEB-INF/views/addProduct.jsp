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

<form:form method="POST" action="addProduct" commandName="product"  enctype="multipart/form-data">
<table class="table">
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name" id="name"/></td>
        </tr>
        
        <tr>
            <td><form:label path="description">Description</form:label></td>
            <td><form:input path="description" id="description"/></td>
        </tr>
       
         <tr>
            <td><form:label path="quantity">Quantity</form:label></td>
            <td><form:input path="quantity" id="quantity"/></td>
        </tr>
       
        <tr>
            <td><form:label path="price">Price</form:label></td>
            <td><form:input path="price" id="price"/></td>
        </tr>
        <tr>        
          <td><form:label path="image">Image</form:label></td>       
           <td><form:input type="file" path="image" /></td>  
        </tr> 
        
         <tr>   
               <td colspan="2">   
               <input type="submit" value="Add Product"/>     
               </td>   
         </tr>
</table>

</form:form>
</div>

				<!-- footer -->
<%@ include file="template/footer.jsp" %>

</body>
</html>