<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
    
    <div  class="container row form-group" style="margin-top: 5px; margin-left: 10%;">
    
    <div class="col-sm-4" style="width: 30%;">
        <h2>Customer Deatils</h2>
		<table class="table">
        <tr>
        	<td><label for="name">Name</label></td>
            <td><form:input path="name" id="name"/></td>
        </tr>
        <tr>
        	<td><label for="emailId">Email Id<label></td>
            <td><form:input path="emailId" id="emailId"/></td>
        </tr>
        <tr>
        	<td><label for="phoneNo">Phone No.</label></td>
            <td><form:input path="phoneNo" id="phoneNo"/></td>
        </tr>
         <tr>
        	<td><label for="username">User Name</label></td>
            <td><form:input path="username" id="username"/></td>
        </tr>
        <tr>
        	<td><label for="password">Password</label></td>
            <td><form:input type="password" path="password" id="password"/></td>
        </tr>
        </table>  
    </div>
    <div class="col-sm-4 " style="width: 30%;">
        <h2>Billing Address</h2>
        <table class="table">
        <tr>
        	<td><label for="billingAddresshouseNo">House No.<label></td>
            <td><form:input path="billingAddress.houseNo" id="billingAddresshouseNo"/></td>
        </tr>
        <tr>
        	<td><label for="billingAddressstreetNo">Street No.</label></td>
            <td><form:input path="billingAddress.streetNo" id="billingAddressstreetNo"/></td>
        </tr>
        <tr>
        	<td><label for="billingAddresslocality">Locality</label></td>
            <td><form:input path="billingAddress.locality" id="billingAddresslocality"/></td>
        </tr>
        <tr>
        	<td><label for="billingAddresslandmark">Land Mark</label></td>
            <td><form:input path="billingAddress.landmark" id="billingAddresslandmark"/></td>
        </tr>
        <tr>
        	<td><label for="billingAddressprovince">Province</label></td>
            <td><form:input path="billingAddress.province" id="billingAddressprovince"/></td>
        </tr>
        <tr>
        	<td><label for="billingAddresscountry">Country</label></td>
            <td><form:input path="billingAddress.country" id="billingAddresscountry"/></td>
        </tr>
        <tr>
        	<td><label for="billingAddresszipcode">ZipCode</label></td>
            <td><form:input path="billingAddress.zipcode" id="billingAddresszipcode"/></td>
        </tr>
        </table> 
        
    </div>
    <div class="col-sm-4" style="width: 30%;">
        <h2>Shipping Address</h2>
        <table class="table">
        <tr>
        	<td><label for="shippingAddresshouseNo">House No.</label></td>
            <td><form:input path="shippingAddress.houseNo" id="shippingAddresshouseNo"/></td>
        </tr>
        <tr>
        	<td><label for="shippingAddressstreetNo">Street No.</label></td>
            <td><form:input path="shippingAddress.streetNo" id="shippingAddressstreetNo"/></td>
        </tr>
        <tr>
        	<td><label for="shippingAddresslocality">Locality</label></td>
            <td><form:input path="shippingAddress.locality" id="shippingAddresslocality"/></td>
        </tr>
        <tr>
        	<td><label for="shippingAddresslandmark">Land Mark</label></td>
            <td><form:input path="shippingAddress.landmark" id="shippingAddresslandmark"/></td>
        </tr>
        <tr>
        	<td><label for="shippingAddressprovince">Province</label></td>
            <td><form:input path="shippingAddress.province" id="shippingAddressprovince"/></td>
        </tr>
        <tr>
        	<td><label for="shippingAddresscountry">Country</label></td>
            <td><form:input path="shippingAddress.country" id="shippingAddresscountry"/></td>
        </tr>
        <tr>
        	<td><label for="shippingAddresszipcode">ZipCode</label></td>
            <td><form:input path="shippingAddress.zipcode" id="shippingAddresszipcode"/></td>
        </tr>
        </table> 
        
    </div>
    </div>
    <div align="center">
        <input class="btn btn-success" type="submit" style="width: 15%"  value="Register"/> 
    </div><br>
    
    </form:form>
    				<!-- footer -->
     <%@ include file="template/footer.jsp" %>
     <br><br>
    
    </body>
       
</html>