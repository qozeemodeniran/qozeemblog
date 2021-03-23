
<?php  include('../config.php'); ?>
	<?php include(ROOT_PATH . '/author/includes/author_functions.php'); ?>
    <?php 
	// Get all admin users from DB
	$admins = getAdminUsers();
	$roles = ['Author'];				
    ?>
	<?php include(ROOT_PATH . '/author/includes/head_section.php'); ?>
	<title>Author | Dashboard</title>
</head>

<body>
    <!-- author navbar -->
	<?php include(ROOT_PATH . '/author/includes/navbar.php') ?>
    <div class="content container">
        <!-- Left side menu -->
		<?php include(ROOT_PATH . '/author/includes/menu.php') ?>
    </div>
</body>
</html>
