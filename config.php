
<?php 
	session_start();

	// connect to database
	$conn = mysqli_connect("us-cdbr-east-02.cleardb.com", "b59c7b7f1ea18c", "49b034f4", "heroku_d50ce22599704b0");
	
	mysql://b59c7b7f1ea18c:49b034f4@us-cdbr-east-02.cleardb.com/heroku_d50ce22599704b0?reconnect=true

    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }


	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'https://qozeemblog.herokuapp.com/');
?>

