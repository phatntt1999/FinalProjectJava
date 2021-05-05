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
	<%String dateHolding = (String)request.getAttribute("dateHoding"); %>
	<%String searchLocation = (String)request.getAttribute("searchLocation"); %>
	<%String noOfParticipant = (String)request.getAttribute("noOfParticipant"); %>
  <section class="w3l-services-6-main">
    <div class="services-6 py-5" style="padding-bottom: 0 !important; padding-top: 1em !important;">
      <div class="container py-md-3">
        <div class="row features-w3pvt-main" style="margin-top: 0; padding-top: 0; border-top: 0px;" id="features">
          <h4 style="margin-bottom: 1em;">Your search:</h4>
        </div>
        <div class="row features-w3pvt-main" style="margin-top: 0; padding-top: 0; border-top: 0px;" id="features">
          <div class="col-lg-4 col-md-6 feature-gird">
            <div class="row features-hny-inner-gd">
              <div class="col-md-3 col-2 featured_grid_left">
                <div class="icon_left_grid">
                  <span class="fa fa-american-sign-language-interpreting" aria-hidden="true"></span>
                </div>
              </div>
              <div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
                <h4><a class="link-hny" href="#url">Location </a></h4>
                <p><%=searchLocation %></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 feature-gird">
            <div class="row features-hny-inner-gd">
              <div class="col-md-3 col-2 featured_grid_left">
                <div class="icon_left_grid">
                  <span class="fa fa-ambulance" aria-hidden="true"></span>
                </div>
              </div>
              <div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
                <h4><a class="link-hny" href="#url">Date</a></h4>
                <p><%=dateHolding %></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 feature-gird">
            <div class="row features-hny-inner-gd">
              <div class="col-md-3 col-2 featured_grid_left">
                <div class="icon_left_grid">
                  <span class="fa fa-user-md" aria-hidden="true"></span>
                </div>
              </div>
              <div class="col-md-9 col-10 featured_grid_right_info pl-lg-0">
                <h4><a class="link-hny" href="#url">No. of Person</a></h4>
                <p><%=noOfParticipant %> persons</p>
              </div>
            </div>
          </div>
        </div>
        <hr style="border-radius: 1em; margin-top: 1.3em;">
      </div>
    </div>
  </section>

	<% ArrayList<Service> ListService = (ArrayList<Service>)request.getAttribute("ListService"); %>
	
  <!-- /content-with-photo-16 -->
  <section class="content-with-photo-16 py-5" style="padding-top: 0 !important;">
    <div class="content-with-photo-16-main py-lg-5 py-sm-4">
      <div class="container">
        <div class="row" style="margin-bottom: 1em; justify-content: center;">
          <h1>Result for your search</h1>
        </div>
        <div class="row" style="margin-bottom: 2em; justify-content: center;">
          <hr
            style="border-radius: 100px; margin-top: 1.3em; width: 20em; height: 1.1px; color: green; background: green;">
        </div>
        <% for (Service ls : ListService) { %>
        <div class="row" style="margin-bottom: 3em;">
          <div class="col-lg-4 column mt-lg-0 mt-md-5 mt-4">
            <div class="companies-img">
           	 <a href="ShowDetailServiceServlet?serId=<%=ls.getIdService()%>&searchLocation=<%=ls.getAreaHolding()%>&dateHolding=<%=dateHolding%>">
           	 <img src="assets/images/b3.jpg" class="img-fluid radius-image" alt=""></a>
              
            </div>
          </div>
          <div class="col-lg-8 column">
            <div class="content-with-photo-16-inf">
              <div class="title-content text-left">
                <h6 class="title-subhny mb-2"><span><%=ls.getNameOrganizer()%></span></h6>
                <h3 class="title-w3l"><%=ls.getNameService()%></h3>
              </div>
              <p><%=ls.getDescriptionService()%></p>

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
              <a class="btn btn-style btn-primary mt-sm-5 mt-4" style="margin-top: 0 !important;" href="#"> Read
                More</a>
            </div>
          </div>

        </div>
        <%} %>
      </div>
    </div>
  </section>
  <!-- //content-with-photo-16 -->
  
  <jsp:include page="fragments/Footer.jsp"></jsp:include>
  
</body>
</html>