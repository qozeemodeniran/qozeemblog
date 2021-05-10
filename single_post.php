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

		<!-- If user user is not signed in, requeste them to sign in. If user is signed in, present them comment form -->
		<?php if(isset($user_id)): ?>

		    <!-- comment form -->
			<form class="clearfix" action="" method="post" id="comment_form">
				<h4>Post a comment:</h4>
				<textarea name="comment_text" id="comment_text" class="form-control" cols="30" rows="3"></textarea>
				<button class="btn btn-primary btn-sm pull-right" id="submit_comment">Submit comment</button>
			</form>
			<!-- // comment form -->
		<?php else: ?>
			<div class="well" style="margin-top: 20px;">
				<h4 class="text-center"><a href="#">Sign in</a> to post a comment</h4>
			</div>
		<?php endif; ?>

			<!-- Display total number of comments on this post  -->
			<h2><span id="comments_count"><?php echo count($comments) ?></span> Comment(s)</h2>
			<hr>

			<!-- comments wrapper -->
			<div id="comments-wrapper">
				<?php if(isset($comments)): ?>

				<!-- Displaying comments -->
				<?php foreach($comments as $comment): ?>

				<!-- Comment -->
				<div class="comment clearfix">
						<img src="profile.png" alt="" class="profile_pic">
						<div class="comment-details">
							<span class="comment-name"><?php echo getUsernameById($comment['user_id']); ?></span>
							<span class="comment-date"><?php echo data("F, j, Y", strtotime($comment['created_at'])); ?></span>
							<p><?php echo $comment['body']; ?></p>
							<a class="reply-btn" href="#" data-id="<?php echo $comment['id']; ?>" >reply</a>
						</div>

						<!-- reply form -->
						<form action="post_details.php" class="reply_form clearfix" id="comment_reply_form_<?php echo $comment['id'] ?>" data-id="<?php echo $comment['id']; ?>">
							<textarea class="form-control" name="reply_text" id="reply_text" cols="30" rows="2"></textarea>
							<button class="btn btn-primary btn-xs pull-right submit-reply">Submit reply</button>
						</form>

						<!-- Getting all replies -->
						<?php $replies=getRepliesByCommentId($comment['id']); ?>
						<div class="replies_wrapper_<?php echo $comment['id']; ?>">
							<?php if (isset($replies)): ?>
								<?php foreach ($replies as $reply): ?>
									<!-- reply -->
									<div class="comment reply clearfix">
										<img src="profile.png" alt="" class="profile_pic">
										<div class="comment-details">
											<span class="comment-name"><?php echo getUsernameById($reply['user_id']) ?></span>
											<span class="comment-date"><?php echo date("F j, Y ", strtotime($reply["created_at"])); ?></span>
											<p><?php echo $reply['body']; ?></p>
											<a class="reply-btn" href="#">reply</a>
										</div>
									</div>
								<?php endforeach; ?>
							<?php endif; ?>
						</div>
					</div>
				</div>
				<!-- //comment -->
				<?php endforeach; ?>
				<?php else: ?>
					<h2>Be the first to comment on this post.</h2>
				<?php endif; ?>
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
