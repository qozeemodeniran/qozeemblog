<?php  include('config.php'); ?>
<?php  include('includes/public_functions.php'); ?>
<?php 
	if (isset($_GET['post-slug'])) {
		$post = getPost($_GET['post-slug']);
	}
	$topics = getAllTopics();
?>

<!-- Defining variables for SEO -->
<?php $description = htmlspecialchars($post['description']);?>
<?php $keywords = htmlspecialchars($post['keywords']); ?>
<?php $pageTitle = $post['title']; ?>
<?php include('includes/head_section.php'); ?>
</head>
<body>
<div class="container"> 
	<!-- Navbar -->
		<?php include( ROOT_PATH . '/includes/navbar.php'); ?>
	<!-- // Navbar -->
	
	<div class="content" >
		<!-- Page wrapper -->
		<div class="post-wrapper">
			<!-- full post div -->
			<div class="full-post-div">
				<?php if ($post['published'] == false): ?>
					<h2 class="post-title">Sorry... This post has not been published</h2>
				<?php else: ?>
				<h2 class="post-title"><?php echo $post['title']; ?></h2>
				<div class="post-body-div">
					<?php echo html_entity_decode($post['body']); ?>
				</div>
				<?php endif ?>
			</div>
			<!-- // full post div -->
		</div>
		<!-- // Page wrapper -->

		<!-- post sidebar -->
		<div class="post-sidebar">
			<div class="card">
				<div class="card-header">
					<h2>Topics</h2>
				</div>
				<div class="card-content">
					<?php foreach ($topics as $topic): ?>
						<a 
							href="<?php echo BASE_URL . 'filtered_posts.php?topic=' . $topic['id'] ?>">
							<?php echo $topic['name']; ?>
						</a> 
					<?php endforeach ?>
				</div>
				<!-- // card content -->
			</div>
			<!-- // card -->
		</div>
		<!-- // post sidebar -->
		
		<!-- Comment section -->
		<div class="col-md-6 col-md-offset-0 comments-section">
		    <!-- comment form -->
			<form class="clearfix" action="" method="post" id="comment_form">
				<h4>Post a comment:</h4>
				<textarea name="comment_text" id="comment_text" class="form-control" cols="30" rows="3"></textarea>
				<button class="btn btn-primary btn-sm pull-right" id="submit_comment">Submit comment</button>
			</form>
			<!-- // comment form -->

			<!-- Display total number of comments on this post  -->
			<h2><span id="comments_count">0</span> Comment(s)</h2>
			<hr>

			<!-- comments wrapper -->
			<div id="comments-wrapper">
				<div class="comment clearfix">
						<img src="profile.png" alt="" class="profile_pic">
						<div class="comment-details">
							<span class="comment-name">Qozeem</span>
							<span class="comment-date">Apr 24, 2018</span>
							<p>This is the first reply to this post on this website.</p>
							<a class="reply-btn" href="#" >reply</a>
						</div>
						<div>
							<!-- reply -->
							<div class="comment reply clearfix">
								<img src="profile.png" alt="" class="profile_pic">
								<div class="comment-details">
									<span class="comment-name">Pixie Technologies</span>
									<span class="comment-date">Apr 24, 2018</span>
									<p>Hey, why are you the first to comment on this post?</p>
									<a class="reply-btn" href="#">reply</a>
								</div>
							</div>
						</div>
					</div>
			</div>
			<!-- // comments wrapper -->
		</div>
		<!-- // Comment section -->
	</div>
	<!-- // content -->
</div>
<!-- // container -->
<br>
<?php include( ROOT_PATH . '/includes/footer.php'); ?>
