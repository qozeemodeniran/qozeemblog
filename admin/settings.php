

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
        <form method="post" enctype="multipart/form-data" action="<?php echo BASE_URL . 'admin/upload.php'; ?>">
            Update banner:
            <input type="file" name="fileToUpload" id="fileToUpload">
            <input class="btn" type="submit" value="Upload Image" name="submit_image">
            <br><br> Update Email
            <input type="text" name="email" value="" placeholder="Email">
            <input class="btn" type="submit" value="Update Email" name="submit_email">
            <br><br>Update Phone Number
            <input type="text" name="phone" value="" placeholder="Phone nUmber">
            <input class="btn" type="submit" value="Update Phone Number" name="submit_phone">
        </form>
    </div>

    
</body>