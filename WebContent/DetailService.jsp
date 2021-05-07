<%@page import="model.bean.Service"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Detail Service</title>
<link
	href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="assets/css/weatherInfo.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">

<!-- JS Embeded -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
	integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>
<body>
	<jsp:include page="fragments/HeaderAfterLogin.jsp"></jsp:include>

	<% ArrayList<Service> ListService = (ArrayList<Service>)request.getAttribute("detailService"); %>
	<%String dateHolding = (String)request.getAttribute("dateHolding"); %>
	
	
	<div class="inner-banner"></div>
	<section class="w3l-breadcrumb">
		<div class="container">
			<ul class="breadcrumbs-custom-path">
				<li><a href="index.html">Home</a></li>
				<li class="active"><span class="fa fa-arrow-right mx-2"
					aria-hidden="true"></span> Services</li>
			</ul>
		</div>
	</section>
	<!--//inner-page-->
	<section class="w3l-servicesblock py-5" id="services">
		<div class="container py-lg-5 py-md-4 py-2">
			<div class="row">
				<div class="col-lg-6 about-right-faq align-self">
					<div class="title-content text-left">
						<h6 class="title-subhny mb-2">
							<span>General Introduction</span>
						</h6>
						<h3 class="title-w3l">Joyful, Collaborative, and Meaningful</h3>
					</div>
					<p class="mt-lg-4 mt-3 mb-lg-5 mb-4">Lorem ipsum viverra
						feugiat. Pellen tesque libero ut justo, ultrices in ligula. Semper
						at tempufddfel. Lorem ipsum dolor sit amet .</p>
					<div class="progress-info info1">
						<h6 class="progress-tittle">
							Professionalism <span class="">80%</span>
						</h6>
						<div class="progress">
							<div class="progress-bar progress-bar-striped" role="progressbar"
								style="width: 80%" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<div class="progress-info info2">
						<h6 class="progress-tittle">
							Funny <span class="">95%</span>
						</h6>
						<div class="progress">
							<div class="progress-bar progress-bar-striped" role="progressbar"
								style="width: 95%" aria-valuenow="95" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>
					<div class="progress-info info3">
						<h6 class="progress-tittle">
							Hard <span class="">75%</span>
						</h6>
						<div class="progress">
							<div class="progress-bar progress-bar-striped" role="progressbar"
								style="width: 75%" aria-valuenow="95" aria-valuemin="0"
								aria-valuemax="100"></div>
						</div>
					</div>

					<div class="row w3l-services-6-main" id="features"
						style="margin-top: 1.5em; padding-top: 1em;">
						<div class="col-lg-4 col-md-6 feature-gird">
							<div class="row features-hny-inner-gd">
								<div class="col-md-3 col-2">
									<div class="icon_left_grid">
										<span class="fas fa-money-check-alt" aria-hidden="true"></span>
									</div>
								</div>
								<div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
									<h4>
										<a class="link-hny icon-services-page" href="#url"><%=ListService.get(0).getPrice()%></a>
									</h4>

								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 feature-gird">
							<div class="row features-hny-inner-gd">
								<div class="col-md-3 col-2">
									<div class="icon_left_grid">
										<span class="fa fa-bus" aria-hidden="true"></span>
									</div>
								</div>
								<div class="col-md-9 col-10 featured_grid_right_info pl-lg-0 ">
									<h4>
										<a class="link-hny icon-services-page" href="#url">Transport</a>
									</h4>

								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 feature-gird">
							<div class="row features-hny-inner-gd">
								<div class="col-md-3 col-2">
									<div class="icon_left_grid">
										<span class="fa fa-user-md" aria-hidden="true"></span>
									</div>
								</div>
								<div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
									<h4>
										<a class="link-hny icon-services-page" href="#url">Medical</a>
									</h4>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-lg-6 left-wthree-img mt-lg-0 mt-4 pl-lg-5">
					<img src="assets/images/indoor.jpg" alt=""
						class="img-fluid radius-image"> <a
						class="btn btn-style btn-primary mt-sm-5 mt-4" 
						href="SubmitDataForPaymentServlet?serId=<%=ListService.get(0).getIdService()%>&dateHolding=<%=dateHolding%>"
						style="margin-left: 60%; position: absolute; bottom: 20px; right: 25px; font-size: 25px; line-height: 40px;">Book
						now!</a>
				</div>
			</div>
		</div>
	</section>

	<!-- /content-with-photo-16 -->
	<section class="content-with-photo-16 py-5">
		<div class="content-with-photo-16-main py-lg-5 py-sm-4">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 column">
						<div class="content-with-photo-16-inf">
							<div class="title-content text-left">
								<h6 class="title-subhny mb-2">
									<span>Our Services</span>
								</h6>
								<br>
								<h3 class="title-w3l">Decriptions & Detail Event</h3>
							</div>
							<p>Aliquam blandit vel sapien eget aliquam. Phasellus eget
								volutpat libero. Suspendisse eleifend nibh quis dui placerat
								fermentum.n molestie nulla felis, vitae feugiat justo pulvinar
								et.</p>
							<ul class="content-photo-list">
								<li><span>Aliquam blandit vel sapien eget aliquam.</span></li>
								<li><span>Phasellus eget volutpat libero. </span></li>
								<li><span>Aliquam blandit vel sapien eget aliquam.</span></li>
								<li><span>Phasellus eget volutpat libero. </span></li>
								<li><span>Phasellus eget volutpat libero. </span></li>
								<li><span>Phasellus eget volutpat libero. </span></li>
								
							</ul>
							<a class="btn btn-style btn-primary mt-sm-5 mt-4" href="#">Price:
								<%=ListService.get(0).getPrice()%> USD</a>
						</div>
					</div>
					<div class="col-lg-6 column mt-lg-0 mt-md-5 mt-4">
						<div class="container" id="popup-gallery"
							style="display: flex; flex-flow: row wrap; margin-top: 40px;">
							<div class="box box-3items">
								<a href="assets/images/ab2.jpg" title="The Cleaner"><img
									src="assets/images/ab2.jpg" class="img-fluid "></a>
							</div>
							<div class="box box-3items">
								<a href="assets/images/ab1.jpg" title="Winter Dance"> <img
									src="assets/images/ab1.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8225/8558295635_b1c5ce2794_b.jpg"
									title="The Uninvited Guest"><img
									src="assets/images/teambuilding0.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg"
									title="Oh no, not again!"><img
									src="assets/images/indoor.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg"
									title="Oh no, not again!"><img
									src="assets/images/teambuildin5.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg"
									title="Oh no, not again!"><img
									src="assets/images/teambuilding3.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg"
									title="Oh no, not again!"><img
									src="assets/images/teambuildin6.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg"
									title="Oh no, not again!"><img
									src="assets/images/teambuilding3.jpg" class="img-fluid  "></a>
							</div>
							<div class="box box-3items">
								<a
									href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg"
									title="Oh no, not again!"><img
									src="assets/images/Teambuilding4.jpg" class="img-fluid  "></a>
							</div>
						</div>
						<!-- <div class="companies-img">
              <img src="assets/images/b3.jpg" class="img-fluid  " alt="">
            </div> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //content-with-photo-16 -->

	<!-- Detail Location features-4 -->
	<section class="w3l-services-6-main">
		<div class="services-6 py-5">
			<div class="container py-md-3">
				<div class="row serv_sec_info">
					<div class="col-lg-6 banner_bottom_grid help pr-lg-5">
						<div class="container-weather">
							<div class="main-section">
								<div class="info-wrapper">
									<p class="city-name" style="color: white">--</p>
									<p class="weather-state" style="color: white">--</p>
									<img src="http://openweathermap.org/img/wn/10d@2x.png"
										alt="weather icon" class="weather-icon">
									<p class="temperature" style="color: white">--</p>
								</div>
							</div>
							<div class="additional-section">
								<div class="row additional-info">
									<div class="item">
										<div class="label">Temp Max</div>
										<div class="value sunrise">--</div>
									</div>
									<div class="item">
										<div class="label">Temp Min</div>
										<div class="value sunset">--</div>
									</div>
								</div>
								<div class="row additional-info">
									<div class="item">
										<div class="label">Huminity</div>
										<div class="value">
											<span class="humidity">--</span>%
										</div>
									</div>
									<div class="item">
										<div class="label">Wind</div>
										<div class="value">
											<span class="wind-speed">--</span> km/h
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="col-lg-6 banner_bottom_left pl-lg-4 mt-lg-0 mt-md-5 mt-4">
						<div class="title-content text-left">
							<h6 class="title-subhny mb-2">
								<span>Location Info</span>
							</h6>
							<h3 class="title-w3l">Da Nang - Cu Lao Cham</h3>
						</div>
						<p>Pellentesque convallis diam consequat magna vulputate
							malesuada. Cras a ornare elit. Nulla viverra pharetra sem, eget
							pulvinar neque pharetra ac.Lorem ipsum dolor sit amet, Ea
							consequuntur illum facere aperiam sequi optio consectetur.</p>
						<p>Pellentesque convallis diam consequat magna vulputate
							malesuada. Cras a ornare elit. Nulla viverra pharetra sem, eget
							pulvinar neque pharetra ac.Lorem ipsum dolor sit amet, Ea
							consequuntur illum facere aperiam sequi optio consectetur.</p>

						<a class="btn btn-style btn-primary mt-4"
							href="https://vi.wikipedia.org/wiki/C%C3%B9_lao_Ch%C3%A0m"
							target="_blank"> Read More</a>
					</div>
				</div>

				<div class="row features-w3pvt-main" id="features"
					style="padding-top: 1em; margin-top: 1.5em; justify-content: center;">
					<div class="row" style="display: flex; flex-flow: column wrap;">
						<h3>Direction to get here</h3>
						<iframe
							src="https://www.google.com/maps/embed?pb=!4v1618413934323!6m8!1m7!1sCAoSLEFGMVFpcE55QUlLekE4Z0I1LWFnZ0JVQmdZVXdlOFR3V3hsdTk4Z1ZWTVJU!2m2!1d15.9426177!2d108.5124903!3f102.14661288030925!4f3.1498207702499315!5f0.7820865974627469"
							width="900px" height="230px" style="border: 0;"
							allowfullscreen="" loading="lazy"></iframe>
					</div>


				</div>
			</div>
		</div>
	</section>
	<!-- //Detail Location features-4 -->

	<!-- our products -->
	<section class="w3l-products py-5" id="projects">
		<div class="container py-lg-5 py-md-4">
			<div class="products-content">
				<div class="row no-gutters">
					<div class="col-lg-7">
						<div class="title-content text-left">
							<h6 class="title-subhny mb-2">
								<span>About Us</span>
							</h6>
							<h3 class="title-w3l">Our Sitters Are Thoroughly Vetted</h3>
						</div>

						<p class="mt-3">Lorem ipsum dolor sit, elit dolores nulla
							quisdam. minus aliquam corrupti, modi ipsum natus sit pariatur.
							Curabitur mattis orci sed leo mattis, nec maximus nibh faucibus
							lorem dolor sit. it’s clinically clean. Lorem ipsum dolor sit.</p>
						<div class="row my-lg-5 my-4">
							<div class="col-lg-6">
								<img src="assets/images/abcabc.jpg"
									class="img-fluid radius-image" alt="project image">
							</div>
							<div class="col-lg-6 mt-lg-0 mt-4">
								<p>Lorem ipsum dolor sit, elit dolores nulla quisdam. minus
									aliquam corrupti, modi ipsum natus sit pariatur. Curabitur
									mattis orci sed leo mattis, nec maximus nibh faucibus lorem
									dolor sit. it’s clinically clean. Lorem ipsum dolor sit, elit
									dolores nulla dolor sit.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-5 mt-lg-0 mt-md-5 mt-4 pl-lg-5">
						<img src="assets/images/team111.jpg" class="img-fluid radius-image"
							alt="project image">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //our-products -->

	
		<input type="text" class="date" value="<%=dateHolding%>" disabled>
		<input type="text" class="searchLocation" value="<%=ListService.get(0).getAreaHolding().toString()%>" disabled>
		
		<!-- move top -->
		<button onclick="topFunction()" id="movetop" title="Go to top">
			&#10548;</button>
		<script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function () {
        scrollFunction()
      };

      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("movetop").style.display = "block";
        } else {
          document.getElementById("movetop").style.display = "none";
        }
      }

      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
		<!-- /move top -->
	</footer>
	<!-- //copyright -->
	<!-- Template JavaScript -->
	<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="assets/js/theme-change.js"></script>
	<script src="assets/js/popup-gallery.js"></script>
	<script src="assets/js/jquery.magnific-popup.js"></script>
	<!--/MENU-JS-->
	<script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();

      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
	<!--//MENU-JS-->
	<script src="assets/js/all.min.js"></script>
	<script src="assets/js/moment.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	
	
	<script src="assets/js/weatherAPI.js"></script>
	
	
	<jsp:include page="fragments/Footer.jsp"></jsp:include>
</body>
</html>