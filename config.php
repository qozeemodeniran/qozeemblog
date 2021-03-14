<?php 
	session_start();

	// connect to database
	$conn = mysqli_connect("localhost", "root", "", "qozeemblog");
	
    if (!$conn) {
    	die("Failed database connection" . mysqli_connect_error());
    }


	switch (isset($_POST)) {
	// switch ($_POST['req']) {
		// (B) SHOW COMMENTS
		case isset($_POST['show']):
		// case "show";
		  // (B1) GET ALL COMMENTS
		  try {
			$stmt = $conn->prepare("SELECT `name`, `timestamp`, `message` FROM `comments` WHERE `post_id`=? ORDER BY `timestamp` ASC");
			// $stmt->execute([$_POST['pid']]);
			$stmt->execute();
		  } catch (Exception $ex) {
			die($ex->getMessage());
		  }
	  
		  // (B2) LOOP & GENERATE HTML (you may change "get_result()" to "fetch_assoc()")
		  while ($r = $stmt->get_result()) { ?> 
		  <div class="crow">
			<div class="chead">
			  <div class="cname"><?=$r->fetch_assoc(['name']);?></div>
			  <div class="ctime">[<?=$r->fetch_assoc(['timestamp']);?>]</div>
			</div>
			<div class="cmsg"><?=$r->fetch_assoc(['message']);?></div>
		  </div>
		  <?php }
		  break;
	   
		// (C) ADD COMMENT
		case isset($_POST['add']):
		// case "add":
		  // (C1) CHECKS
		  if (!isset($_POST['pid']) || !isset($_POST['name']) || !isset($_POST['msg'])) {
			die("Please provide the Post ID, name, and message");
		  }
	  
		  // (C2) INSERT
		  try {
			$stmt = $conn->prepare("INSERT INTO `comments` (`post_id`, `name`, `message`) VALUES (?,?,?)");
			$stmt->execute([$_POST['pid'], htmlentities($_POST['name']), htmlentities($_POST['msg'])]);
		  } catch (Exception $ex) {
			die($ex->getMessage());
		  }
		  echo "OK";
		  break;
	  }
	  

	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'http://qozeem.blog/');
?>