
<?php 
	session_start();

	// connect to database
    $conn = mysqli_connect("localhost", "root", "", "b12_27082892_qozeemblog");

    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }


	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'http://qozeemblog.localhost/');
?>

