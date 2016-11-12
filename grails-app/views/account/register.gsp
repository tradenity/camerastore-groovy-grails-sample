<!DOCTYPE HTML>
<html>
<head>
	<title>Register</title>
</head>
<body>
<g:applyLayout name="simple">
<content tag="content">
	<!-- registration-form -->
	<div class="registration-form">
		<div class="container">
			<div class="dreamcrub">
				<ul class="breadcrumbs">
					<li class="home">
						<a href="/" title="Go to Home Page">Home</a>&nbsp;
						<span>&gt;</span>
					</li>
					<li class="women">
						Registration
					</li>
				</ul>
				<ul class="previous">
					<li><a href="/products">Browse all products</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<h2>Registration</h2>
			<div class="registration-grids">
				<div class="reg-form">
					<div class="reg">
						<p>Welcome, please enter the following details to continue.</p>
						<p>If you have previously registered with us, <a href="/login">click here to login</a></p>
						<form action="/account/create" method="post" >
							<ul>
								<li class="text-info">First Name: </li>
								<li><g:textField name="firstName" value="${user.firstName}"/></li>
							</ul>
							<ul>
								<li class="text-info">Last Name: </li>
								<li><g:textField name="lastName" value="${user.lastName}"/></li>
							</ul>
							<ul>
								<li class="text-info">Email: </li>
								<li><g:textField name="email" value="${user.email}"/></li>
							</ul>
							<ul>
								<li class="text-info">Username: </li>
								<li><g:textField name="username" value="${user.username}"/></li>
							</ul>
							<ul>
								<li class="text-info">Password: </li>
								<li><g:passwordField name="password" value="${user.password}"/></li>
							</ul>
							<ul>
								<li class="text-info">Re-enter Password:</li>
								<li><g:passwordField name="confirmPassword" value="${user.confirmPassword}"/></li>
							</ul>

							<input type="submit" value="REGISTER NOW"/>
							<p class="click">By clicking this button, you are agree to my  <a href="#">Policy Terms and Conditions.</a></p>
						</form>
					</div>
				</div>
				<div class="reg-right">

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</content>
</g:applyLayout>
</body>
</html>