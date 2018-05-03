<html>
<head>
<head>
<title>Modern Intrno Design Interior</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
</head>

<body style="background-color:buttonhighlight;">
<div class="container-fluid">
									<!-- header -->
		<%@ include file="template/header.jsp" %>

									<!-- Indicators -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
            </ol>
                                                     <!-- Slider -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img  background="transparent" src="./resources/images/slider-1.jpg" alt="first slide" height="100%" width="100%">
                    <div class="container-fluid">
                        <div class="carousel-caption">
                            <h1>THE EASIEST WAY TO DESIGN A BEAUTIFUL HOME.</h1>
                            <p>Professional online interior design for your home, always for a low flat fee.</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img src="./resources/images/img-hero.jpg" alt="second slide" height="50%" width="100%">
                      <div class="container-fluid">
                        <div class="carousel-caption">
                            <h1>THE EASIEST WAY TO DESIGN A BEDROOM.</h1>
                            <p>Interior of modern empty wardrobe room</p>
                      	</div>
                      </div>
                </div>
                 <div class="item">
                    <img src="./resources/images/2.jpg" alt="third slide" height="100%" width="100%">
                    <div class="container-fluid">
                        <div class="carousel-caption">
                            <h1>WARDROBE DESIGN.</h1>
                            <p>Modern wooden wardrobe with clothes hanging on rail in walk in closet design interior.</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img src="./resources/images/3.jpg" alt="fourth slide" height="100%" width="100%">
                    <div class="container-fluid">
                        <div class="carousel-caption">
                            <h1>KITCHEN DECORATORS.</h1>
                            <p>Modern, bright, clean, kitchen interior with stainless steel appliances in a luxury house.</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img src="./resources/images/4.jpg" alt="fifth slide" height="100%" width="100%">
                    <div class="container-fluid">
                        <div class="carousel-caption">
                            <h1>THE EASIEST WAY TO DESIGN A BEDROOM.</h1>
                            <p>Bright and cozy modern bedroom with dark knot pillow on the bed in bright bedroom interior.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="./resources/images/CPM0007143_pdp-1458042014_l-shaped-modular-kitchen.jpg" alt="sixth slide" height="100%" width="100%">
                    <div class="container-fluid">
                        <div class="carousel-caption">
                            <h1>EASIEST WAY TO DECORATE THE ROOM.</h1>
                            <p>Modern bedroom in a wooden finish. Modern design decision bedroom apartments</p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
                </a>
    </div>
     </div>
                                                            <!-- circlular images -->
<div class="row" style="padding: 30px;">
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="./resources/images/interior-design-living-room.jpg">
        <img src="./resources/images/interior-design-living-room.jpg" class="img-circle" alt="first" style="width:70%; height:30vh;">
        <div class="container-fluid">
        <div class="caption">
          <p>hall..</p>
        </div>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="./resources/images/background_5.jpg">
        <img src="./resources/images/background_5.jpg" class="img-circle" alt="second" style="width:70%; height:30vh;">
        <div class="caption">
          <p>dinning table..</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="./resources/images/5.jpg">
        <img src="./resources/images/5.jpg" class="img-circle" alt="third" style="width:70%; height:30vh;">
        <div class="caption">
          <p>bedroom</p>
        </div>
      </a>
    </div>
  </div>
</div>






				<!-- footer -->
<%@ include file="template/footer.jsp" %><br><br>
</div>
</body>
</html>
