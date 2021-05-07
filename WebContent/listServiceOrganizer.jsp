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
<title>List Services</title>
<link
	href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<!-- Embeded CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<link rel="stylesheet" href="assets/css/form.css">

<!-- Embeded JS -->

</head>
<body>
	<%
		if (session.getAttribute("accountInfor") == null) {
			response.sendRedirect("login-form.jsp?error=1");
		} else {
	%>
	
		<%
       		String error = request.getParameter("message");
       %>
       <%= ("1".equals(error)? "Delete Successful!" : "") %>
	<jsp:include page="fragments/HeaderOrganizer.jsp"></jsp:include>
	
	<!--/inner-page-->
  <div class="inner-banner">
  </div>
  <section class="w3l-breadcrumb">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="index.html">Home</a></li>
        <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> About Us</li>
      </ul>
    </div>
  </section>
  <!--//inner-page-->

	<% ArrayList<Service> ListService = (ArrayList<Service>)request.getAttribute("ListService"); %>
	
  <!-- /content-with-photo-16 -->
  <section class="content-with-photo-16 py-5" style="padding-top: 0 !important;">
    <div class="content-with-photo-16-main py-lg-5 py-sm-4">
      <div class="container">
        <div class="row" style="margin-bottom: 1em; justify-content: center;">
          <h1>Result for your Event Service</h1>
        </div>
        <div class="row" style="margin-bottom: 2em; justify-content: center;">
          <hr
            style="border-radius: 100px; margin-top: 1.3em; width: 20em; height: 1.1px; color: green; background: green;">
        </div>
        <% for (Service ls : ListService) { %>
        <div class="row" style="margin-bottom: 3em;">
          <div class="col-lg-4 column mt-lg-0 mt-md-5 mt-4">
            <div class="companies-img">
           	 <a href="#">
           	 <img src="assets/images/qqqqq.jpg" class="img-fluid radius-image" alt=""></a>
              
            </div>
          </div>
          <div class="col-lg-8 column">
            <div class="content-with-photo-16-inf">
              <div class="title-content text-left">
                <h6 class="title-subhny mb-2"><span><%=ls.getNameOrganizer()%></span></h6>
                <h3 class="title-w3l"><%=ls.getNameService()%></h3>
              </div>
              <p><%=ls.getAreaHolding()%></p>

              <ul class="content-photo-list" style="margin-top: 15px">
                <p style="font-weight: bold; color: black; font-size: 21px; margin-bottom: 10px;">Some suggest combo:
                </p>
                <li>
                  <span>Aliquam blandit vel sapien eget aliquam.</span>
                </li>
                <li>
                  <span>Phasellus eget volutpat libero. </span>
                </li>
                <li>
                  <span>Aliquam blandit vel sapien eget aliquam.</span>
                </li>

              </ul>
              <input class="button btn btn-style btn-primary mt-sm-5 mt-4" 
              style="margin-top: 0 !important; max-width: 11em;" href="#" value="Delete" 
              Onclick="deleteService('<%=ls.getIdService()%>')"/>
            </div>
          </div>

        </div>
        <%} %>
      </div>
    </div>
  </section>
  <!-- //content-with-photo-16 -->
  
  <jsp:include page="fragments/Footer.jsp"></jsp:include>
 <% } %>
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

	<script>
		function deleteService(SerId) {
			if (confirm('Are you sure to delete?')) {
				location.href = "DeleteServiceServlet?SerId=" + SerId;
			}
		}
	</script>

	<!--  JavaScript -->
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
</body>
</html>