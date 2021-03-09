

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

    <h1 style="text-align: center; margin-top: 20px;">Update Blog Info</h1>
        <form action="" method="post">
            <label for="logo">
            Upload Logo: 
                <input type="file">
            </label>
            <br>
            <label for="email">
                Email: 
                <input type="text">
            </label>
            <br>
            <label for="phone">
            Phone Number: 
                <input type="text">
            </label>
            <br>

            <input type="submit" value="Update">
        </form>
</body>