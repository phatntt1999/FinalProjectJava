<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>EventHolding</title>
	<meta content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--/Style-CSS -->
	<link rel="stylesheet" href="assets/css/login-form.css" type="text/css"
		media="all" />
	<!--//Style-CSS -->
</head>
<body>
	
	<!-- /login-section -->

	<section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<h1>EventHolding</h1>
				<!-- if logo is image enable this   -->
				<!-- <a class="logo" href="index.html">
					<img src="images/user.png" alt="Your logo" title="Your logo" style="height:35px;" />
				</a> -->

				<div class="d-grid forms23-grids">
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
							<p>Not a member yet? <a href="#">Join Now!</a></p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- //login-section -->
</body>
</html>