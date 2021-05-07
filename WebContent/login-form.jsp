<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>EventHolding</title>
	<meta content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--/Style-CSS -->
	<link rel="stylesheet" href="assets/css/login-form.css" type="text/css"
		media="all" />
	<!--//Style-CSS -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
</head>
<body>
	<%-- Print status when delete, add and edit --%>
	<%
		String error = request.getParameter("message");
	%>
	<%=("1".equals(error) ? "Register successful!" : "")%>
	<%=("2".equals(error) ? "Your account already have!" : "")%>
	<%=("3".equals(error) ? "Please enter all the Required Fields" : "")%>
	<%=("4".equals(error) ? "No Identify Error! Please contact to admin." : "")%>
	<%=("5".equals(error) ? "No Identify Error! Please contact to admin." : "")%>
	<%=("6".equals(error) ? "Please choose the role!" : "")%>
	<!-- /login-section -->

	<section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<h1>EventHolding</h1>
				<!-- if logo is image enable this   -->
				<!-- <a class="logo" href="index.html">
					<img src="images/user.png" alt="Your logo" title="Your logo" style="height:35px;" />
				</a> -->

				<div class="d-grid forms23-grids" id="login">
					<div class="form23">
						<div class="main-bg">
							<h6 class="sec-one">Login Page</h6>
							<div class="speci-login first-look">
								<img src="assets/images/user.png" alt="" class="img-responsive">
							</div>
						</div>
						<div class="bottom-content">
							<form action="CheckLoginServlet" method="post">
								<input type="email" name="userName" class="input-form" placeholder="Your Email"
									required="required" />
								<input type="password" name="passWord" class="input-form" placeholder="Your Password"
									required="required" />
								<button type="submit" class="loginhny-btn btn">Login</button>
							</form>
							<p>Not a member yet? <a href="#join-now" id="join-now">Join Now!</a></p>
						</div>
					</div>
				</div>
				<!-- //login-section -->
				
				<!-- register-section -->
				<div class="d-grid forms23-grids" id="register">
					<div class="form23">
						<div class="main-bg">
							<h6 class="sec-one">Register Page</h6>
							<div class="speci-login first-look">
								<img src="images/user.png" alt="" class="img-responsive">
							</div>
						</div>
						<div class="bottom-content">
							<form action="AddNewAccountServlet" name="register-form" method="post">
								<input type="email" name="accUserName" class="input-form" placeholder="Your Email"
									required="required" />
								<input type="password" name="accPassWord" class="input-form" placeholder="Your Password"
									required="required" />
								<div class="custom-select">
									<select class="role-key" id="roleKey" name="role">
										<option value="0">Role</option>
										<option value="organizer">Event organizer</option>
										<option value="user">Customer</option>
									</select>
								</div>
								<input type="text" name="name" class="input-form" placeholder="Your Name"
									required="required" />
								<input type="number" name="phonenumber" id="phoneNumber" class="input-form" placeholder="Your Phonenumber"
									required="required" />
								<button type="submit" class="loginhny-btn btn" 
								onclick="return phonenumberValidate()" >Register</button>
							</form>
							<p>Already had account! Try to <a href="#sign-in" id="sign-in">Login!</a></p>
						</div>
					</div>
				</div>
				<!-- /register-section -->
			</div>
		</div>
	</section>
	
	<script>
		$("#register").hide();
		$(document).ready(function () {
			$("#join-now").click(function () {
				$("#login").hide();
				$("#register").show();
			});
		});
		$(document).ready(function () {
			$("#sign-in").click(function () {
				$("#register").hide();
				$("#login").show();
			})
		})
	</script>
	<script>
		console.log("Test phone");
		function phonenumberValidate() {
			/* var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; */
			var phone_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
			var number = $('#phoneNumber').val();
			if (phone_regex.test(number)) {
				return true;
			} else {
				alert("Not a valid Phone Number");
				return false;
			}
		}
	</script>
	
	
</body>
</html>