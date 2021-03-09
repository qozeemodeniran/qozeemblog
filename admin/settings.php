

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
        <form method="post" enctype="multipart/form-data" action="" >

                <!-- validation errors for the form -->
				<?php include(ROOT_PATH . '/includes/errors.php') ?>

				<!-- if editing user, the id is required to identify that user -->
				<?php if ($isEditingUser === true): ?>
					<input type="hidden" name="admin_id" value="<?php echo $admin_id; ?>">
				<?php endif ?>


            Choose a logo:
            <input type="file" 
                name="uploadfile" 
                value="" 
            /> 
            <div> 
                <button type="submit"
                        name="upload"> 
                  UPLOAD 
                </button> 
            </div> 
            <?php error_reporting(0); ?>
            <?php 
            $msg="";

                if (isset($_POST['upload'])) { 
  
                    $filename = $_FILES["uploadfile"]["name"]; 
                    $tempname = $_FILES["uploadfile"]["tmp_name"];     
                        $folder = "image/".$filename; 
                          
                    $db = mysqli_connect("us-cdbr-east-03.cleardb.com", "b5a8056a6aa74f", "b5a8056a6aa74f", "heroku_e6dc99b8c0a5bb2"); 
                  
                        // Get all the submitted data from the form 
                        $sql = "INSERT INTO image (filename) VALUES ('$filename')"; 
                  
                        // Execute query 
                        mysqli_query($db, $sql); 
                          
                        // Now let's move the uploaded image into the folder: image 
                        if (move_uploaded_file($tempname, $folder))  { 
                            $msg = "Image uploaded successfully"; 
                        }else{ 
                            $msg = "Failed to upload image"; 
                      } 
                } 
                  $result = mysqli_query($db, "SELECT * FROM image"); 
            ?>
            <input type="text" name="email" value="" placeholder="Email">
            <input type="text" name="phone" value="" placeholder="Phone nUmber">

            <button type="submit" class="btn" name="update_admin">UPDATE</button>
        </form>
    </div>
</body>