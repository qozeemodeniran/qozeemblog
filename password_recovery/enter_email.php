<?php  include('../config.php'); ?>
<?php  include('../includes/registration_login.php'); ?>

<!-- Defining variables for SEO -->
<?php $pageDescription="Visit http://qozeem.blog to get the most latest and relevant stories on Inspiration, Motivation, Business, Tech, News, and Sports"?>
<?php $pageTitle="Qozeem Blog | Password Reset"?>
<?php  include('../includes/head_section.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="../static/css/public_styling.css">
</head>
<body>
	<!-- Navbar -->
	<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
	<!-- // Navbar -->

	<form class="login-form" action="enter_email.php" method="post">
		<h2 class="form-title">Reset password</h2>
		<!-- form validation messages -->
		<?php include('../includes/errors.php'); ?>
		<div class="form-group">
			<label>Your email address</label>
			<input type="email" name="email">
		</div>
		<div class="form-group">
			<button type="submit" name="reset-password" class="login-btn">Submit</button>
		</div>
	</form>
</body>
</html>
<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->