<?php 
	session_start();

	// connect to database
	// $conn = mysqli_connect("localhost", "root", "", "qozeemblog"); // localhost connection

	$conn = mysqli_connect("us-cdbr-east-03.cleardb.com", "b3517ce3da674a", "608391b2", "heroku_c54e62c766ebe15"); //mysql workspace connection (for heroku)

	// $conn = mysqli_connect("sql301.byethost32.com", "b32_27687645", "lastborn231", "b32_27687645_qozeemblog"); // byethost


	
    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }

	define ('ROOT_PATH', realpath(dirname(__FILE__)));

	// define('BASE_URL', 'http://qozeemblog.localhost/'); // virtual host url 

	define('BASE_URL', 'https://qozeemblog.herokuapp.com/'); // heroku url

	// define('BASE_URL', 'http://qozeemodeniran.byethost32.com/qozeemblog/index.php') // byethost url
?>