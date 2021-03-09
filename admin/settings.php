<?php  include('../config.php'); ?>
<?php  include(ROOT_PATH . '/admin/includes/admin_functions.php'); ?>
<?php 
	// Get all admin users from DB
	$admins = getAdminUsers();
	$roles = ['Admin', 'Author'];				
?>
<?php include(ROOT_PATH . '/admin/includes/head_section.php'); ?>
	<title>Admin | Global Settings</title>
</head>
<body>
    <!-- admin navbar -->
	<?php include(ROOT_PATH . '/admin/includes/navbar.php') ?>
    <div class="menu">
	<div class="card">
		<div class="card-header">
			<h2>Actions</h2>
		</div>
		<div class="card-content">
			<a href="<?php echo BASE_URL . 'admin/create_post.php' ?>"></a>
			<a href="<?php echo BASE_URL . 'admin/posts.php' ?>">Manage Posts</a>
			<a href="<?php echo BASE_URL . 'admin/users.php' ?>">Manage Users</a>
			<a href="<?php echo BASE_URL . 'admin/topics.php' ?>">Manage Topics</a>
		</div>
	</div>
</div>
</div>
</body>