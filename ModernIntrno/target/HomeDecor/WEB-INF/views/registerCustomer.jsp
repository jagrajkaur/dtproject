<html>
    <head>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    </head>
    
    <body>
    <%@ include file="template/header.jsp"%>
    
    <form:form method="POST" action="registerCustomer" commandName="customer">
    
    <div  class="container row" style="margin-top: 5px; margin-left: 10%;">
    
    <div class="col-sm-4" style="width: 30%; border: solid 1px black;">
        <h2>Customer Deatils</h2>
		<table class="table">
        <tr>
        	<td><form:label path="name">Name</form:label></td>
            <td><form:input path="name" id="name"/></td>
        </tr>
        <tr>
        	<td><form:label path="emailId">Email Id</form:label></td>
            <td><form:input path="emailId" id="emailId"/></td>
        </tr>
        <tr>
        	<td><form:label path="phoneNo">Phone No.</form:label></td>
            <td><form:input path="phoneNo" id="phoneNo"/></td>
        </tr>
        </table>  
    </div>
    <div class="col-sm-4" style="width: 30%; border: solid 1px black;">
        <h2>Billing Address</h2>
        <table class="table">
        <tr>
        	<td><form:label path="billingAddress.houseNo">House No.</form:label></td>
            <td><form:input path="billingAddress.houseNo" id="billingAddress.houseNo"/></td>
        </tr>
        <tr>
        	<td><form:label path="billingAddress.streetNo">Street No.</form:label></td>
            <td><form:input path="billingAddress.streetNo" id="billingAddress.streetNo"/></td>
        </tr>
        <tr>
        	<td><form:label path="billingAddress.locality">Locality</form:label></td>
            <td><form:input path="billingAddress.locality" id="billingAddress.locality"/></td>
        </tr>
        <tr>
        	<td><form:label path="billingAddress.landmark">Land Mark</form:label></td>
            <td><form:input path="billingAddress.landmark" id="billingAddress.landmark"/></td>
        </tr>
        <tr>
        	<td><form:label path="billingAddress.province">Province</form:label></td>
            <td><form:input path="billingAddress.province" id="billingAddress.province"/></td>
        </tr>
        <tr>
        	<td><form:label path="billingAddress.country">Country</form:label></td>
            <td><form:input path="billingAddress.country" id="billingAddress.country"/></td>
        </tr>
        <tr>
        	<td><form:label path="billingAddress.zipcode">ZipCode</form:label></td>
            <td><form:input path="billingAddress.zipcode" id="billingAddress.zipcode"/></td>
        </tr>
        </table> 
        
    </div>
    <div class="col-sm-4" style="width: 30%; border: solid 1px black;">
        <h2>Shipping Address</h2>
        <table class="table">
        <tr>
        	<td><form:label path="shippingAddress.houseNo">House No.</form:label></td>
            <td><form:input path="shippingAddress.houseNo" id="shippingAddress.houseNo"/></td>
        </tr>
        <tr>
        	<td><form:label path="shippingAddress.streetNo">Street No.</form:label></td>
            <td><form:input path="shippingAddress.streetNo" id="shippingAddress.streetNo"/></td>
        </tr>
        <tr>
        	<td><form:label path="shippingAddress.locality">Locality</form:label></td>
            <td><form:input path="shippingAddress.locality" id="shippingAddress.locality"/></td>
        </tr>
        <tr>
        	<td><form:label path="shippingAddress.landmark">Land Mark</form:label></td>
            <td><form:input path="shippingAddress.landmark" id="shippingAddress.landmark"/></td>
        </tr>
        <tr>
        	<td><form:label path="shippingAddress.province">Province</form:label></td>
            <td><form:input path="shippingAddress.province" id="shippingAddress.province"/></td>
        </tr>
        <tr>
        	<td><form:label path="shippingAddress.country">Country</form:label></td>
            <td><form:input path="shippingAddress.country" id="shippingAddress.country"/></td>
        </tr>
        <tr>
        	<td><form:label path="shippingAddress.zipcode">ZipCode</form:label></td>
            <td><form:input path="shippingAddress.zipcode" id="shippingAddress.zipcode"/></td>
        </tr>
        </table> 
        
    </div>
    </div>
    <div>
        <input type="submit"  value="Register"/> 
    </div>
    
    </form:form>
    				<!-- footer -->
     <%@ include file="template/footer.jsp" %>
    
    </body>
       
</html>