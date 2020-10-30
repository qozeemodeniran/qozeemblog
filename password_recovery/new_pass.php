
<?php  include('../config.php'); ?>
<?php  include('../includes/registration_login.php'); ?>
<?php  include('../includes/head_section.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Qozeem's Blog | New Password </title>
	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="../static/css/public_styling.css">
</head>
<body>
	<!-- Navbar -->
	<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
	<!-- // Navbar -->
		<form class="login-form" action="new_password.php" method="post">
		<h2 class="form-title">New password</h2>
		<!-- form validation messages -->
		<?php include('../includes/errors.php'); ?>
		<div class="form-group">
			<label>New password</label>
			<input type="password" name="new_pass">
		</div>
		<div class="form-group">
			<label>Confirm new password</label>
			<input type="password" name="new_pass_c">
		</div>
		<div class="form-group">
			<button type="submit" name="new_password" class="login-btn">Submit</button>
		</div>
	</form>
</body>
</html>
<!-- Footer -->
	<?php include( ROOT_PATH . '/includes/footer.php'); ?>
<!-- // Footer -->