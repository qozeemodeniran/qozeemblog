<?php 
	session_start();

	// connect to database
	$conn = mysqli_connect("us-cdbr-east-03.cleardb.com", "b5a8056a6aa74f", "c21078ea", "heroku_e6dc99b8c0a5bb2");
	
	// mysql://b59c7b7f1ea18c:49b034f4@us-cdbr-east-02.cleardb.com/heroku_d50ce22599704b0?reconnect=true

    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }


	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'https://qozeemblog.herokuapp.com/');
?>