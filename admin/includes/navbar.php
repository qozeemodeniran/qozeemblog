
<div class="header">
	<div class="logo">
		<a href="<?php echo BASE_URL .'admin/dashboard.php' ?>">
			<h1>Qozeem's - Admin </h1>
		</a>
		<span>Email: <?php echo $_SESSION['user']['email']; ?></span><br>
		<span>Role: <?php echo $_SESSION['user']['role']; ?></span>
	</div>
	<div class="user-info">
		<span><?php echo $_SESSION['user']['username'] ?></span> &nbsp; &nbsp; 
		<a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout-btn">logout</a>
	</div>
</div>