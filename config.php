
<?php 
	session_start();

	// connect to database
	$conn = mysqli_connect("us-cdbr-east-02.cleardb.com", "b80503685742be", "f29aaf6a", "heroku_f56cc8dd3618c46");

	
    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }


	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'https://qozeemblog.herokuapp.com/');
?>

