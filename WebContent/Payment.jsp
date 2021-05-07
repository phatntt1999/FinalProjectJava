<%@page import="model.bean.Service"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Payment</title>
    <link href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <script src="assets/paymentAssets/jquery-1.11.3.min.js"></script>
    <!-- Embeded CSS -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link rel="stylesheet" href="assets/css/form.css">

</head>

<body>
	<%
		ArrayList<Service> ListService = (ArrayList<Service>) request.getAttribute("detailService");
	%>
	<%
		String dateHolding = (String) request.getAttribute("dateHolding");
	%>
	<section class="w3l-blog-single py-5" id="blogs" style="padding-top: 0em !important;">
        <div class="container py-md-5 py-2">
            <div class="title-content text-left" style="margin-left: 8em;">
                <h6 class="title-subhny mb-2"><span>Our Order</span></h6>
                <h3 class="title-w3l">Event Service Order Information</h3>
            </div>
            <div class="row text11-content">
                <div class="col-md-2 item mt-2"></div>
                <div class="col-md-8 item mt-5">
                    <div class="single-left1 mb-0">
                        <div class="blg-img">
                            <a href="#"><img src="assets/images/b6.jpg" alt=" " class="img-responsive img-fluid">
                                
                            </a>
                        </div>

                        <div class="btom-cont">
                            <h5 class="card-title"><%=ListService.get(0).getNameService()%></h5>
                            <ul class="admin-post">
                                <li>
                                    <span class="fa fa-user"></span>
                                    <span style="font-weight: 600; font-size: 22px; margin-left:5px"> <%=ListService.get(0).getNameOrganizer()%></span>
                                </li>
                                <li>
                                    <i class="fa fa-credit-card-alt" aria-hidden="true"></i>
                                    <span style="font-size: 17px; margin-left:5px"> <%=ListService.get(0).getPrice()%> USD/person</span>
                                </li>
                            </ul>
                            <ul class="admin-post">
                                <li>
                                    <i class="fa fa-map-pin" aria-hidden="true"></i>
                                    <span style="font-weight: 450; font-size: 20px; margin-left:5px"> <%=ListService.get(0).getAreaHolding()%></span>
                                </li>
                                
                            </ul>
                            
                            <p class=""><%=ListService.get(0).getDescriptionService()%></p>
                            <p class="">Lorem ipsum dolor sit amet, elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna aliqua. Ut enim ad minim sunt in culpa qui officia deserunt. </p>
                                
                            <a href="CreateEventOrderServlet?serId=<%=ListService.get(0).getIdService()%>&price=<%=ListService.get(0).getPrice()%>&dateHolding=<%=dateHolding%>" 
                            class="btn btn-style btn-primary mt-4"
                                style="margin-left: 9em; font-size: 22px; padding: 17px 103px;">Payment</a>
							
							<%-- <form action="gsonReturnServlet" id="frmCreateOrder" method="post">
								<input type="hidden" id="vnp_OrderInfo" name="vnp_OrderInfo" value="Payment for event service at <%=ListService.get(0).getAreaHolding()%>"/>
								<input type="hidden" class="form-control" data-val="true" data-val-number="The field Amount must be a number." 
								data-val-required="The Amount field is required." id="amount"
								 name="amount" type="number" value="<%=(int)ListService.get(0).getPrice() * 24000%>"/>
								
								<button type="submit" class="btn btn-style btn-primary mt-4"
								style="margin-left: 9em; font-size: 22px; padding: 17px 103px;">Payment</button>
							</form> --%>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 item mt-2"></div>
            </div>
        </div>
    </section>
   		<link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
        <script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
        <script type="text/javascript">
            $("#frmCreateOrder").submit(function () {
                var postData = $("#frmCreateOrder").serialize();
                var submitUrl = $("#frmCreateOrder").attr("action");
                $.ajax({
                    type: "POST",
                    url: submitUrl,
                    data: postData,
                    dataType: 'JSON',
                    success: function (x) {
                        if (x.code === '00') {
                            if (window.vnpay) {
                                vnpay.open({width: 768, height: 600, url: x.data});
                            } else {
                                location.href = x.data;
                            }
                            return false;
                        } else {
                            alert(x.Message);
                        }
                    }
                });
                return false;
            });
        </script>       
</body>

</html>