<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/style-starter.css">
</head>
<body>
	<header id="site-header" class="fixed-top">
		<section class="w3l-header-4">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-light">
					<h1>
						<a class="navbar-brand" href="ShowHomepageServlet"> Event<span
							class="sublog">Holding.</span>
						</a>
					</h1>
					<button class="navbar-toggler collapsed" type="button"
						data-toggle="collapse" data-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="fa icon-expand fa-bars"></span> <span
							class="fa icon-close fa-times"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item active"><a class="nav-link"
								href="ShowHomepageServlet">Home </a></li>
							<li class="nav-item"><a class="nav-link" href="#">About</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								href="ShowAllServiceServlet">Services</a></li>

							<li class="nav-item"><a class="nav-link" href="#">Contact</a>
							</li>
						</ul>
						<ul class="navbar-nav search-right mt-lg-0 mt-2">
							<!-- <li class="nav-item mr-2" title="Search"><a href="#search" class="btn search-search">
                  <span class="fa fa-search" aria-hidden="true"></span></a></li> -->
							<li class="nav-item mx-xl-4"><a href="#"
								class="btn btn-primary btn-white d-none d-lg-block btn-style mr-2 phone-btn"></span><%=(String)session.getAttribute("accountInfor")%></a></li>
							<li class="nav-item mx-xl-4"><a href="LogoutSessionServlet"><img
								src="assets/images/user.png" width=50px alt="avatar"
								id="role-avatar"></a> </li>
						</ul>

						<!-- //toggle switch for light and dark theme -->
						<!-- search popup -->
						<div id="search" class="pop-overlay">
							<div class="popup">
								<form action="#" method="GET" class="d-sm-flex">
									<input type="search" placeholder="Search.." name="search"
										required="required" autofocus>
									<button type="submit">
										<span class="fa fa-search"></span>
									</button>
									<a class="close" href="#">&times;</a>
								</form>
							</div>
						</div>
						<!-- /search popup -->
					</div>
					<!-- toggle switch for light and dark theme -->
					<div class="mobile-position">
						<nav class="navigation">
							<div class="theme-switch-wrapper">
								<label class="theme-switch" for="checkbox"> <input
									type="checkbox" id="checkbox">
									<div class="mode-container">
										<i class="gg-sun"></i> <i class="gg-moon"></i>
									</div>
								</label>
							</div>
						</nav>
					</div>
				</nav>
			</div>
		</section>
	</header>
	<!--//header-->
</body>
</html>