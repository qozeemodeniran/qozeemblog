

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

    <div>
    <h1 style="text-align: center; margin-top: 20px;">Update Blog Info</h1>
        <form action="" method="post">
            <label for="logo">
            Upload Logo: <br>
                <input type="file">
            </label>
            <label for="email">
                Email: <br>
                <input type="text">
            </label>
            <label for="phone">
            Phone Number: <br>
                <input type="text">
            </label>
        </form>
    </div>
</body>