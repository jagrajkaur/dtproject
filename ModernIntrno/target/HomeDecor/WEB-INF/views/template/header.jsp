<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Modern Intrno Design Interior Category Bootstrap Responsive Website Template</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
</head>
<body>

<header>
<div class="navber">
<nav class="navbar navbar-default">
<div class="container-fluid">

		<!-- LOGO -->
		<div>
		<a href="#"><img style="margin-top: 3px;" src="<c:url value="./resources/images/Interiors.png" />" alt="Your Logo" height="48px" width="130px"></a>		
		<p style="margin-top:20px; color:gray; float: right; font-style: italic; font-size:large; letter-spacing: 2px;">Design is a Journey of Discovery..!</p>
		</div>
		<hr>
		
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
		
		<div class="navbar-collapse collapse" id="collapse-example"> 
		<ul class="nav navbar-nav">
			<li class="active glyp"> 
			<a href="#">Home<span class="glyphicon glyphicon-home"></span></a>
			</li>
			<li>
			<a href="allProducts">Products</a>
			</li>
			<li><a href="addProduct">Add Product</a></li>
			<li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Select by Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="">Modern</a></li>
						<li><a href="">Traditional </a></li>
						<li><a href="">Contemporary</a></li>
					</ul>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
				<li><a href="login">login<span class="glyphicon glyphicon-user"></span></a></li>
                <li><a href="signup">SignUp</a></li>
		</ul>
		</div>
		
	
</div><!-- end of container -->
</nav><!-- end nav -->
</div><!-- end navbar -->
</header>


</body>
</html>