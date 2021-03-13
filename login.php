
<?php  include('config.php'); ?>
<?php  include('includes/registration_login.php'); ?>

<!-- Defining variables for SEO -->
<?php $pageDescription="Visit http://qozeem.blog to get the most latest and relevant stories on Inspiration, Motivation, Business, Tech, News, and Sports"?>
<?php $pageTitle="Qozeem Blog | Sign in"?>
<?php  include('includes/head_section.php'); ?>
</head>
<body>
<div class="container">
	<!-- Navbar -->
	<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
	<!-- // Navbar -->

	<div style="width: 40%; margin: 20px auto;">
		<form method="post" action="login.php" >
			<h2>Login</h2>
			<?php include(ROOT_PATH . '/includes/errors.php') ?>
			<input type="text" name="username" value="<?php echo $username; ?>" value="" placeholder="Username">
			<input type="password" name="password" placeholder="Password">
			<button type="submit" class="btn" name="login_btn">Login</button>
			<button type="submit" class="btn" name="forgot_btn">Forgot Password?</button>

			<p>
				Not yet a member? <a href="register.php">Sign up</a>
			</p>
		</form>
	</div>
</div>
<!-- // container -->

<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->