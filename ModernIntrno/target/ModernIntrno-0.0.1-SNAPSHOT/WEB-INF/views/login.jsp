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
        <div class="container-fluid" style="background: url('./resources/images/login.jpg'); width: 100%; height: 100vh; " >
        <div class="row">   
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12">
        
        
                                                        <!-- form start -->
   <div class="form-container" style="border: 1px solid #fff; padding:50px 60px; margin-top: 20vh; 
        -webkit-box-shadow: -1px 4px 27px 11px rgba(0,0,0,0.75);
        -moz-box-shadow: -1px 4px 27px 11px rgba(0,0,0,0.75);
        box-shadow: -1px 4px 27px 11px rgba(0,0,0,0.75);" >
        <center><h1 style="margin-top: 5px; color:green; font-family: fontawesome ; letter-spacing: 6px;">LOGIN FORM</h1></center>
        
       <c:if test="${not empty msg}"> 
       <div class="msg">${msg}</div> 
       </c:if> 
        
       <form name="loginForm" method="post" action="<c:url value="/j_spring_security_check" />"> 
        
        <c:if test="${not empty error}">
         <div class="error"style="color: #ff0000;">${error}</div> 
        </c:if> 
        
        <div class="form-group">
        	<label for="exampleInputUsername1">Username:</label>
        	<input type="text" name="username" class="form-control" placeholder="Enter Username">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password:</label>
            <input type="password" name="password" class="form-control"  placeholder="Enter Password">
        </div>
        <div class="checkbox">
            <label>
            <input type="checkbox"> Remember me
            </label>
        </div>
        <input type="submit" value="Submit" class="btn btn-success btn-block">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
    </form>
    </div>
    
                                                        <!-- form end -->
    </div>
    
    </div>
    </div>
    </body>
       
</html>