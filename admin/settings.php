

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
        <form method="post" enctype="multipart/form-data" action="settings.php" >

            <!-- validation errors for the form -->
				<?php include(ROOT_PATH . '/includes/errors.php') ?>

            <!-- if editing user, the id is required to identify that user -->
            <?php if ($isEditingUser === true): ?>
                <input type="hidden" name="admin_id" value="<?php echo $admin_id; ?>">
            <?php endif ?>

            Choose a logo:
            <input type="file" name="file">
            <input type="submit" value="Upload" name="Submit1"> <br/>

            <?php
                if(isset($_POST['Submit1']))
                { 
                $filepath = "images/" . $_FILES["file"]["name"];

                if(move_uploaded_file($_FILES["file"]["tmp_name"], $filepath)) 
                {
                echo "<img src=".$filepath." height=200 width=300 />";
                } 
                else 
                {
                echo "Error !!";
                }
                } 
            ?>

            <input type="text" name="email" value="" placeholder="Email">
            <input type="text" name="phone" value="" placeholder="Phone nUmber">

            <button type="submit" class="btn" name="update_admin">UPDATE</button>
        </form>
    </div>
</body>