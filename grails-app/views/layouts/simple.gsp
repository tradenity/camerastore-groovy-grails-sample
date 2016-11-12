<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
	<title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Home :: w3layouts</title>
	<asset:stylesheet src="bootstrap.css"/>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<asset:javascript src="jquery.min.js"/>
	<!-- Custom Theme files -->
	<asset:stylesheet src="style.css"/>
	<asset:stylesheet src="component.css"/>
	<asset:javascript src="bootstrap-3.1.1.min.js"/>
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!--webfont-->
	<asset:stylesheet src="flexslider.css"/>





	<style>
		.big_button {
			border: none;
			color: #ffffff;
			padding: 12px 45px;
			font-size: 22px;
			cursor: pointer;
			font-weight: 500;
			margin: 0 0 32px 0;
			background: #816263;
			text-transform: uppercase;
		}
		.navbar-header{
			width:30%;
		}
	</style>
</head>
<body>
<!-- header-section-starts -->
<div class="header">
	<div class="header-top-strip">
		<div class="container">
			<div class="header-top-left">
				<ul>
					<sec:ifNotLoggedIn>
						<li><a href="/login"><span class="glyphicon glyphicon-user"> </span>Login</a></li>
						<li><a href="/register"><span class="glyphicon glyphicon-lock"> </span>Create an Account</a></li>
					</sec:ifNotLoggedIn>
					<sec:ifLoggedIn>
						<li><a href="/orders"><span class="glyphicon glyphicon-user"> </span>Orders</a></li>
						<li><a href="/logoff"><span class="glyphicon glyphicon-lock"> </span>Logout</a></li>
					</sec:ifLoggedIn>
				</ul>
			</div>
			<div class="header-right">
				<div class="cart box_1">

						<p></p>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- header-section-ends -->
<div class="banner-top">
	<div class="container">
		<nav class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<div class="logo">
					<h1><a href="/"><span>E</span> -Shop</a></h1>
				</div>
			</div>
			<!--/.navbar-header-->


			<!--/.navbar-collapse-->
		</nav>
		<!--/.navbar-->
	</div>
</div>


<g:pageProperty name="page.content" />

<div class="news-letter">
	<div class="container">
		<div class="join">
			<h6>JOIN OUR MAILING LIST</h6>
			<div class="sub-left-right">
				<form>
					<input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email Here';}" />
					<input type="submit" value="SUBSCRIBE" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">


		<div class="cards text-center">
			<img src="/images/cards.jpg" alt="" />
		</div>
		<div class="copyright text-center">
			<p>© 2015 Eshop. All Rights Reserved | Design by   <a href="http://w3layouts.com">  W3layouts</a></p>
		</div>
	</div>
</div>
<g:pageProperty name="page.page_js" />
</body>
</html>