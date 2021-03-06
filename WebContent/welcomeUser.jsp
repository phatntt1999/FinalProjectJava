<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Event Holding</title>
<link
	href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<!-- Embeded CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="assets/css/form.css">

<!-- Bootstrap form choosing -->


</head>

<body>
	<jsp:include page="fragments/HeaderAfterLogin.jsp"></jsp:include>
	

	<!-- main-slider -->
	<section class="w3l-main-slider banner-slider" id="home">
		<div class="owl-one owl-carousel owl-theme">
			<div class="item">
				<div class="slider-info banner-view banner-top1">
					<div class="container">
						<div class="banner-info">
							<h3>Corporate Team Building.</h3>
							<div class="banner-info-top">
								<p>Lorem ipsum viverra feugiat. Pellen tesque libero ut
									justo, ultrices in ligula. Semper at tempufddfel. Lorem ipsum
									dolor sit amet elit.</p>
								<a href="#" class="btn btn-style btn-outline-light mt-sm-5 mt-4">Read
									More </a>

							</div>
						</div>
						<div class="banner-info-top-grids">
							<h5 class="text-lg-left">
								<strong>Our Location : </strong> 253 Adams Ave, Iowa
							</h5>
							<h5 class="text-lg-right">
								<strong> Open Hours : </strong> Mon - Sat 8am - 6pm
							</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="slider-info banner-view banner-top2">
					<div class="container">
						<div class="banner-info">
							<h3>Caring is More Daring.</h3>
							<div class="banner-info-top">
								<p>Lorem ipsum viverra feugiat. Pellen tesque libero ut
									justo, ultrices in ligula. Semper at tempufddfel. Lorem ipsum
									dolor sit amet elit.</p>
								<a href="#" class="btn btn-style btn-outline-light mt-sm-5 mt-4">Read
									More </a>

							</div>
						</div>
						<div class="banner-info-top-grids">
							<h5 class="text-lg-left">
								<strong>Our Location : </strong> 253 Adams Ave, Iowa
							</h5>
							<h5 class="text-lg-right">
								<strong> Open Hours : </strong> Mon - Sat 8am - 6pm
							</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="slider-info banner-view banner-top3">
					<div class="container">
						<div class="banner-info">
							<h3>Group - Strength of each member.</h3>
							<div class="banner-info-top">
								<p>Lorem ipsum viverra feugiat. Pellen tesque libero ut
									justo, ultrices in ligula. Semper at tempufddfel. Lorem ipsum
									dolor sit amet elit.</p>
								<a href="#" class="btn btn-style btn-outline-light mt-sm-5 mt-4">Read
									More </a>
							</div>
						</div>
						<div class="banner-info-top-grids">
							<h5 class="text-lg-left">
								<strong>Our Location : </strong> 253 Adams Ave, Iowa
							</h5>
							<h5 class="text-lg-right">
								<strong> Open Hours : </strong> Mon - Sat 8am - 6pm
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /main-slider -->

	<div class="booking-panel">
		<div class="container py-lg-4">
			<form action="SearchServiceServlet" method="POST">
			  <div class="grids-area-hny main-cont-wthree-fea row">
				<div class="col-lg-3 col-md-3 col-6 grids-feature forms-25-info">
						<label>Location:</label> <input type="text" name="SearchLocation" id=""
							style="width: inherit; padding:10px 10px;" placeholder="Enter area you want...">
					</div>
					<div class="col-lg-3 col-md-3 col-6 grids-feature">
						<label>Date Holding:</label> 
						<input type="date" name="DateHolding"
							 style="width: inherit; padding:10px 10px;">
					</div>
					<div class="col-lg-3 col-md-3 col-6 grids-feature">
						<label>Check in</label> <select name="no-of-participants"
							id="no-of-participants" style="width: inherit; padding: 10px 10px;">
							<option value="30">30-50 persons</option>
							<option value="40">40-60 persons</option>
							<option value="50">50-80 persons</option>
							<option value="70">70-100 persons</option>
							<option value="100">100-150 persons</option>
						</select>
					</div>
					<div class="col-lg-3 col-md-3 col-6 grids-feature">
						<!-- <button class="submit">Search</button> -->
						<input type="submit"
							style="margin-top: 28px !important; padding: 14px 65px; margin-left: 10px;"
							class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2"
							value="Submit">
					</div>
				</div>
			</form>
		</div>
	</div>

	<!--/feature-grids-->
	<section class="w3l-features py-5" id="features">
		<div class="container py-lg-4">
			<div class="grids-area-hny main-cont-wthree-fea row">
				<div class="col-lg-2 col-md-3 col-6 grids-feature">
					<div class="area-box">
						<div class="icon">
							<span class="fa fa-snowflake-o"></span>
						</div>
						<h4>
							<a href="#feature" class="title-head">Fresh Air</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-6 grids-feature">
					<div class="area-box mb-lg-0">
						<div class="icon">
							<span class="fa fa-cutlery"></span>
						</div>
						<h4>
							<a href="#feature" class="title-head">Healthy Meals</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-6 grids-feature">
					<div class="area-box mb-lg-0">
						<div class="icon">
							<span class="fa fa-sign-language"></span>
						</div>
						<h4>
							<a href="#feature" class="title-head">Collaborate</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-6 grids-feature">
					<div class="area-box">
						<div class="icon">
							<span class="fa fa-sitemap"></span>
						</div>
						<h4>
							<a href="#feature" class="title-head">Relationship</a>
						</h4>

					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-6 grids-feature">
					<div class="area-box mb-lg-0">
						<div class="icon">
							<span class="fa fa-fire"></span>
						</div>
						<h4>
							<a href="#feature" class="title-head">Energetic</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-6 grids-feature">
					<div class="area-box">
						<div class="icon">
							<span class="fa fa-user-md"> </span>
						</div>
						<h4>
							<a href="#feature" class="title-head">Safety</a>
						</h4>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--//feature-grids-->



	<!--/about-section-->
	<section class="w3l-index3" id="about">
		<div class="midd-w3 py-5">
			<div class="container py-lg-5 py-md-3">
				<div class="row">
					<div class="col-lg-6 mb-lg-0 mb-md-5 mb-4 align-self pr-lg-5">
						<div class="title-content text-left">
							<h6 class="title-subhny mb-2">
								<span>Team-building classification</span>
							</h6>
							<h3 class="title-w3l">Team Building Indoor.</h3>
						</div>
						<p class="mt-md-4 mt-3">Lorem ipsum viverra feugiat. Pellen
							tesque libero ut justo, ultrices in ligula. Semper at
							tempufddfel. Lorem ipsum dolor sit amet elit. Non quae, fugiat
							nihil ad. Lorem ipsum dolor sit amet. Lorem ipsum init dolor sit,
							amet elit. Dolor ipsum non velit, culpa! Vivamus a et ut justo,
							init in dolor et.</p>
						<a class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2" href="#">
							Read More</a>
					</div>
					<div class="col-lg-6 mt-lg-0 mt-4">
						<div class="position-relative">
							<img src="assets/images/Teambuilding4.jpg" alt=""
								class="radius-image img-fluid">
						</div>
					</div>
					<div class="col-lg-6 mt-5 pt-lg-4">
						<div class="position-relative">
							<img src="assets/images/teambuildin5.jpg" alt=""
								class="radius-image img-fluid">
						</div>
					</div>
					<div class="col-lg-6 mt-5 align-self pl-lg-5 pt-lg-4">
						<div class="title-content text-left">
							<h6 class="title-subhny mb-2">
								<span>Team-building classification</span>
							</h6>
							<h3 class="title-w3l">Team Building Outdoor.</h3>
						</div>

						<p class="mt-md-4 mt-3">Lorem ipsum viverra feugiat. Pellen
							tesque libero ut justo, ultrices in ligula. Semper at
							tempufddfel. Lorem ipsum dolor sit amet elit. Non quae, fugiat
							nihil ad. Lorem ipsum dolor sit amet. Lorem ipsum init dolor sit,
							amet elit. Dolor ipsum non velit, culpa! Vivamus a et ut justo,
							init in dolor et.</p>
						<a class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2" href="#">
							Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--//about-section-->
	<!--/w3l-index2-->
	<section class="w3l-index2" id="about1">
		<div class="midd-w3 py-5">
			<div class="container py-lg-5 py-md-4 py-2">
				<div class="row">
					<div class="col-lg-6 left-wthree-img">
						<div class="position-relative">
							<img src="assets/images/teambuildin6.jpg" alt=""
								class="radius-image img-fluid">
						</div>
					</div>
					<div class="col-lg-6 mt-lg-0 mt-5 pl-lg-5 align-self">
						<div class="title-content text-left">
							<h6 class="title-subhny mb-2">
								<span>Why Choose Us</span>
							</h6>
							<h3 class="title-w3l">Why EventHolding?</h3>
						</div>
						<p class="mt-4">With the preparation from a->z for a joyful
							and meaningful event. Semper at tempufddfel. We will bring
							satisfaction to you when join the event organized by our
							partners. Learn more about our work!</p>
						<ul class="w3l-right-book mt-4">
							<li><span class="fa fa-check" aria-hidden="true"></span>Connecting
								many reputable organizations</li>
							<li><span class="fa fa-check" aria-hidden="true"></span>Convenient
								Member Benefits</li>
							<li><span class="fa fa-check" aria-hidden="true"></span>Safe
								- Flexible; Real services - Real reviews</li>
						</ul>
						<a href="#" class="btn btn-style btn-primary mt-4">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--//w3l-index2-->
	<!-- /home-page-video-popup-->
	<section class="w3l-index5 py-5" id="about">
		<div class="new-block py-md-5 py-3">
			<div class="container py-lg-5">
				<div class="row middle-section align-self">
					<div class="col-lg-7 video-info pr-lg-5">
						<div class="title-content text-left">
							<h6 class="title-subhny three mb-2">
								<span>Better outdoor activity.</span>
							</h6>
							<h3 class="title-w3l two pr-lg-5">The happiness in the fresh air and
								friends.</h3>
							<p class="mt-3 pr-lg-5">Lorem ipsum, dolor sit amet
								consectetur adipisicing elit.Lorem ipsum dolor sit amet elit
								consec tetur adipisi elit. Lorem ipsum dolor sit amet elit
								consec tetur adipisi elit. Iure voluptatibus explicabo officia.</p>
							<a href="contact.html"
								class="btn btn-style btn-outline-light mt-sm-5 mt-4">Contact
								Now </a>
						</div>
					</div>
					<div class="col-lg-5 history-info mt-5 pl-lg-5 align-self">
						<div
							class="position-relative mt-lg-0 mt-5 pt-lg-0 pt-5 pb-lg-0 pb-5">
							<a href="#small-dialog"
								class="popup-with-zoom-anim play-view text-center position-absolute">
								<span class="video-play-icon"> <span class="fa fa-play"></span>
							</span>
							</a>
							<!-- dialog itself, mfp-hide class is required to make dialog hidden -->
							<div id="small-dialog" class="zoom-anim-dialog mfp-hide">
								<iframe src="https://player.vimeo.com/video/464544767"
									width="640" height="360" frameborder="0"
									allow="autoplay; fullscreen; picture-in-picture"
									allowfullscreen></iframe>
							</div>
						</div>
					</div>
					<!-- dialog itself, mfp-hide class is required to make dialog hidden -->
					<!-- <div id="small-dialog" class="zoom-anim-dialog mfp-hide">
            <iframe src="https://player.vimeo.com/video/101587706" frameborder="0" allow="autoplay; fullscreen"
              allowfullscreen></iframe>
          </div> -->
					s
				</div>
			</div>
		</div>
	</section>
	<!-- //home-page-video-popup-->

	<!-- home page block grids -->
	<section class="w3l-blog-single py-5" id="blogs">
		<div class="container py-md-5 py-2">
			<div class="title-content text-left">
				<h6 class="title-subhny mb-2">
					<span>Our Posts</span>
				</h6>
				<h3 class="title-w3l">Recent Blog Posts.</h3>
			</div>
			<div class="row text11-content">
				<div class="col-md-6 item mt-5">
					<div class="single-left1 mb-0">
						<div class="blg-img">
							<a href="#"><img src="assets/images/kids-team.jpg" alt=" "
								class="img-responsive img-fluid">
								<div class="bl-top">
									<h4>12 Mar</h4>
								</div> </a>
						</div>
						<div class="btom-cont">
							<h5 class="card-title">
								<a href="#">Germs Thrive the Office! Your Health Risk?</a>
							</h5>
							<ul class="admin-post">
								<li><a href="#"><span class="fa fa-user"></span> Posted
										by Admin</a></li>
								<li><a href="#"><span class="fa fa-comments-o"></span>Comments
										(20)</a></li>
							</ul>
							<p class="">Lorem ipsum dolor sit amet, elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								minim sunt in culpa qui officia deserunt.</p>
							<a href="#" class="btn btn-style btn-primary mt-4">Read More</a>

						</div>
					</div>
				</div>
				<div class="col-md-6 item mt-5">
					<div class="single-left1 mb-0">
						<div class="blg-img">
							<a href="#"><img src="assets/images/azx.jpg" alt=" "
								class="img-responsive img-fluid">
								<div class="bl-top">
									<h4>14 Mar</h4>
								</div> </a>
						</div>

						<div class="btom-cont">
							<h5 class="card-title">
								<a href="#">Team Building for Mission Trips</a>
							</h5>
							<ul class="admin-post">
								<li><a href="#"><span class="fa fa-user"></span> Posted
										by Admin</a></li>
								<li><a href="#"><span class="fa fa-comments-o"></span>Comments
										(20)</a></li>
							</ul>
							<p class="">Lorem ipsum dolor sit amet, elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								minim sunt in culpa qui officia deserunt.</p>
							<a href="#" class="btn btn-style btn-primary mt-4">Read More</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //home page block grids -->
	<!-- testimonials section -->
	<!-- <section class="w3l-clients w3l-test py-5" id="testimonials">
		<div class="container py-lg-5 py-md-4 pt-2 pb-5">
			<div class="row w3test-grids p-md-5 pb-0">
				<div class="col-lg-4 testimonials-con-left-info">
					<div class="title-content text-left p-xl-3">
						<h6 class="title-subhny mb-2">
							<span>Reviews</span>
						</h6>
						<h3 class="title-w3l two">Testimonials</h3>
						<p class="test-p mt-3">Lorem ipsum viverra feugiat. Pellen
							tesque libero ut justo, ultrices in ligula. Semper at
							tempufddfel. Lorem ipsum viverra feugiat.</p>
					</div>
				</div>
				<div class="col-lg-8 testimonials-con-right mt-lg-0 mt-5 p-xl-3">
					<div id="owl-demo2" class="owl-carousel owl-theme">
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Pellen tesque libero ut justo</q>
									</blockquote>
									<p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante
										ipsum primis in faucibus orci luctus et ultrices posuere.</p>
								</div>
								<div class="bottom-info mt-4">
									<a class="comment-img" href="#url"><img
										src="assets/images/team1.jpg" class="img-fluid radius-image"
										alt="placeholder image"></a>
									<div class="people-info align-self">
										<h3>Johnson william</h3>
										<p class="identity">Example City</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet</q>
									</blockquote>
									<p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante
										ipsum primis in faucibus orci luctus et ultrices posuere.</p>
								</div>
								<div class="bottom-info mt-4">
									<a class="comment-img" href="#url"><img
										src="assets/images/team2.jpg" class="img-fluid radius-image"
										alt="placeholder image"></a>
									<div class="people-info align-self">
										<h3>Alexander sakura</h3>
										<p class="identity">Example City</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Pellen tesque libero ut justo</q>
									</blockquote>
									<p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante
										ipsum primis in faucibus orci luctus et ultrices posuere.</p>
								</div>
								<div class="bottom-info mt-4">
									<a class="comment-img" href="#url"><img
										src="assets/images/team3.jpg" class="img-fluid radius-image"
										alt="placeholder image"></a>
									<div class="people-info align-self">
										<h3>John wilson</h3>
										<p class="identity">Example City</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet</q>
									</blockquote>
									<p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante
										ipsum primis in faucibus orci luctus et ultrices posuere.</p>
								</div>
								<div class="bottom-info mt-4">
									<a class="comment-img" href="#url"><img
										src="assets/images/team4.jpg" class="img-fluid radius-image"
										alt="placeholder image"></a>
									<div class="people-info align-self">
										<h3>Julia sakura</h3>
										<p class="identity">Example City</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Pellen tesque libero ut justo</q>
									</blockquote>
									<p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante
										ipsum primis in faucibus orci luctus et ultrices posuere.</p>
								</div>
								<div class="bottom-info mt-4">
									<a class="comment-img" href="#url"><img
										src="assets/images/team5.jpg" class="img-fluid radius-image"
										alt="placeholder image"></a>
									<div class="people-info align-self">
										<h3>John wilson</h3>
										<p class="identity">Example City</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-content">
								<div class="testimonial">
									<blockquote>
										<q>Lorem ipsum dolor sit amet.</q>
									</blockquote>
									<p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante
										ipsum primis in faucibus orci luctus et ultrices posuere.</p>
								</div>
								<div class="bottom-info mt-4">
									<a class="comment-img" href="#url"><img
										src="assets/images/team3.jpg" class="img-fluid radius-image"
										alt="placeholder image"></a>
									<div class="people-info align-self">
										<h3>Julia sakura</h3>
										<p class="identity">Example City</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
	</section> -->
	<!-- //testimonials section -->
	
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
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/theme-change.js"></script>
	<!-- owlcarousel -->
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.js"></script>
	<!-- script for banner slider-->
	<script>
    $(document).ready(function () {
      $('.owl-one').owlCarousel({
        loop: true,
        margin: 0,
        nav: false,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 1000,
        autoplayHoverPause: false,
        responsive: {
          0: {
            items: 1
          },
          480: {
            items: 1
          },
          667: {
            items: 1
          },
          1000: {
            items: 1
          }
        }
      })
    })
  </script>
	<!-- //script -->
	<!-- script for tesimonials carousel slider -->
	<script>
    $(document).ready(function () {
      $("#owl-demo2").owlCarousel({
        loop: true,
        nav: false,
        margin: 50,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          736: {
            items: 1,
            nav: false
          },
          991: {
            items: 2,
            margin: 30,
            nav: false
          },
          1080: {
            items: 2,
            nav: false
          }
        }
      })
    })
  </script>
	<!-- //script for tesimonials carousel slider -->

	<!-- stats number counter-->
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.countup.js"></script>
	<script>
    $('.counter').countUp();
  </script>
	<!-- //stats number counter -->
	<!-- image popup -->
	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script>
    $(document).ready(function () {
      $('.popup-with-zoom-anim').magnificPopup({
        type: 'inline',

        fixedContentPos: false,
        fixedBgPos: true,

        overflowY: 'auto',

        closeBtnInside: true,
        preloader: false,

        midClick: true,
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in'
      });

      $('.popup-with-move-anim').magnificPopup({
        type: 'inline',

        fixedContentPos: false,
        fixedBgPos: true,

        overflowY: 'auto',

        closeBtnInside: true,
        preloader: false,

        midClick: true,
        removalDelay: 300,
        mainClass: 'my-mfp-slide-bottom'
      });
    });
  </script>
	<!-- //video popup -->
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
	<script src="assets/js/ajax-popup.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
<jsp:include page="fragments/Footer.jsp"></jsp:include>

</body>

</html>