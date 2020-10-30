
<?php 
	session_start();

	// connect to database
    $conn = mysqli_connect("us-cdbr-east-02.cleardb.com", "bab0551a9834ed", "c454baa6", "heroku_e3d6f802cb40252");

    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }


	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'https://qozeemblog.herokuapp.com/');
?>

