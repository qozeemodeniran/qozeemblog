<?php  include('../config.php'); ?>
<?php  include('../includes/registration_login.php'); ?>
<?php  include('../includes/head_section.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Qozeem's Blog | Password Reset </title>
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