<%@page import="model.bean.Account"%>
<%@page import="model.bean.Service"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Welcome Organizer</title>
    <link href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <!-- Embeded CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">

    <!-- Bootstrap form choosing -->

    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
            justify-content: center;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        .navbar-brand {
            color: rgba(0, 0, 0, 0.9) !important;
        }
    </style>
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
       <%= ("2".equals(error)? "Add new Successful!" : "") %>
       
    <header id="site-header" class="fixed-top">
        <section class="w3l-header-4">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <h1> <a class="navbar-brand" href="ShowDataAdminServlet">
                            Event<span class="sublog">Holding.</span>
                        </a></h1>
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                        data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="fa icon-expand fa-bars"></span>
                        <span class="fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        	<li class="nav-item mx-xl-4login"><a href="#"
                                    class="btn btn-primary btn-white d-none d-lg-block btn-style mr-2 phone-btn"></span>
                                    <%=(String)session.getAttribute("accountInfor")%></a></li>
                            <li class="nav-item mx-xl-4login"><a href="LogoutSessionServlet"
                                    class="btn btn-primary btn-white d-none d-lg-block btn-style mr-2 phone-btn"></span>
                                    Logout</a></li>
                        </ul>

                        <!-- //toggle switch for light and dark theme -->
                        <!-- search popup -->
                        <div id="search" class="pop-overlay">
                            <div class="popup">
                                <form action="#" method="GET" class="d-sm-flex">
                                    <input type="search" placeholder="Search.." name="search" required="required"
                                        autofocus>
                                    <button type="submit"><span class="fa fa-search"></span></button>
                                    <a class="close" href="#">&times;</a>
                                </form>
                            </div>
                        </div>
                        <!-- /search popup -->
                    </div>
                    <!-- toggle switch for light and dark theme -->
                    <!-- <div class="mobile-position">
                        <nav class="navigation">
                            <div class="theme-switch-wrapper">
                                <label class="theme-switch" for="checkbox">
                                    <input type="checkbox" id="checkbox">
                                    <div class="mode-container">
                                        <i class="gg-sun"></i>
                                        <i class="gg-moon"></i>
                                    </div>
                                </label>
                            </div>
                        </nav>
                    </div> -->
                </nav>
            </div>
        </section>
    </header>
    <% ArrayList<Account> ListAccount = (ArrayList<Account>)request.getAttribute("ListAccount"); %>
    <% ArrayList<Service> ListService = (ArrayList<Service>)request.getAttribute("ListService"); %>
    <section class="w3l-features py-5" id="features" style="margin-top: 5em;">
        <div class="container py-lg-4">
            <div class="title-content text-left">
                <h6 class="title-subhny mb-2">
                    <span>Administrator</span>
                </h6>
                <h3 class="title-w3l" style="margin-bottom: 1em;">Account management</h3>
            </div>
            <table>
                <tr>
                    <th>AccUserName</th>
                    <th>AccPassword</th>
                    <th>Rolekey</th>
                    <th>Action</th>
                </tr>
                <% for (Account acc : ListAccount) { %>
                
                <tr>
                    <td><%=acc.getAccUserName() %></td>
                    <td><%=acc.getAccPassWord() %></td>
                    <td><%=acc.getRolekey() %></td>
                    <td><%-- <input type="button" 
	             		Onclick="location.href='ShowEditProductServlet?proId=<%=acc.getAccUserName()%>'"
	             		value="Edit" /> --%>
	             		<input type="button" 
	             		Onclick="deleteAccount('<%=acc.getAccUserName()%>')" 
	             		value="Delete" /></td>
                </tr>
                <% } %>
                
                
                
            </table>
        </div>
    </section>

    <section class="w3l-features py-5" id="features">
        <div class="container py-lg-4">
            <div class="title-content text-left">
                <h3 class="title-w3l" style="margin-bottom: 1em;">Service management</h3>
            </div>
            <table>
                <tr>
                    <th>IdService</th>
                    <th>Name of Service</th>
                    <th>Organizer</th>
                    <th>No.of People</th>
                    <th>Area</th>
                    <th>Action</th>
                </tr>
                <% for (Service ser : ListService) { %>
                <tr>
                    <td><%=ser.getIdService()%></td>
                    <td><%=ser.getNameService()%></td>
                    <td><%=ser.getIdOrganizer()%></td>
                    <td><%=ser.getNumberOfPeople()%></td>
                    <td><%=ser.getAreaHolding()%></td>
                    <td>
	             		<input type="button" 
	             		Onclick="deleteService('<%=ser.getIdService()%>')" 
	             		value="Delete" /></td>
                </tr>
                <% } %>
            </table>
        </div>
    </section>
	<%
		}
	%>

	<!-- DeleteFunction -->
	<script>
			function deleteAccount(AccId) {
				if (confirm('Are you sure to delete?')) {
					location.href = "DeleteAccountServlet?AccId=" + AccId;
				}
			}
			function deleteService(SerId) {
				if (confirm('Are you sure to delete?')) {
					location.href = "DeleteServiceServlet?SerId=" + SerId;
				}
			}
	</script>
	<!-- /DeleteFunction -->
	
	
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