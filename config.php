<?php 
	session_start();

	// connect to database
	$conn = mysqli_connect("localhost", "root", "", "qozeemblog"); // localhost connection

	// $conn = mysqli_connect("us-cdbr-east-03.cleardb.com", "b0e9c3b1eac950", "72c5172d", "heroku_bff38edda0e11e9"); //mysql workspace connection (for heroku)

	// $conn = mysqli_connect("sql301.byethost32.com", "b32_27687645", "lastborn231", "b32_27687645_qozeemblog"); // byethost


	
    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }

	define ('ROOT_PATH', realpath(dirname(__FILE__)));

	define('BASE_URL', 'http://qozeem.blog/'); // virtual host url 

	// define('BASE_URL', 'https://qozeemblog.herokuapp.com/'); // heroku url

	// define('BASE_URL', 'http://qozeemodeniran.byethost32.com/qozeemblog/index.php') // byethost url
?>