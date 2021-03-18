
<?php include('includes/registration_login.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Defining variables for SEO -->
	<meta charset="UTF-8">
	<?php $pageDescription="Visit http://qozeem.blog to get the most latest and relevant stories on Inspiration, Motivation, Business, Tech, News, and Sports"?>
	<?php $pageTitle="Qozeem Blog | Password Reset Pending"?>
	<?php  include('includes/head_section.php'); ?>
	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="static/css/public_styling.css">
</head>
<body>
	<!-- Navbar -->
	<?php include('includes/navbar.php'); ?>
	<!-- // Navbar -->
	<form class="login-form" action="login.php" method="post" style="text-align: center; margin: 30px;">
		<p>
			We sent an email to  <b><?php echo $_GET['email'] ?></b> to help you recover your account. 
		</p>
	    <p>Please login into your email account and click on the link we sent to reset your password</p>
	</form>
		
</body>
</html>
<!-- Footer -->
	<?php include('includes/footer.php'); ?>
<!-- // Footer -->