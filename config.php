
<?php 
	session_start();

	// connect to database
	$url = parse_url(getenv("CLEARDB_DATABASE_URL"));
	$server = $url["host"];
	$username = $url["user"];
	$password = $url["pass"];
	$db = substr($url["path"], 1);

	$config = array(
		'host' => $server ,
		'user' => $username ,
		'pw' => $password,
		'db' => $db 
	);


	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'https://qozeemblog.herokuapp.com/');
?>

