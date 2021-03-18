<?php require_once('config.php') ?>

<?php $pageDescription="Visit http://qozeem.blog to get the most latest and relevant stories on Inspiration, Motivation, Business, Tech, News, and Sports."?>
<?php $pageTitle="Qozeem Blog | About Me"?>
<?php require_once( ROOT_PATH . '/includes/head_section.php') ?>
</head>

<body>
	<!-- container - wraps whole page -->
	<div class="container">

<!-- navbar -->
<?php include( ROOT_PATH . '/includes/navbar.php') ?>

<!-- Page Content -->
<div class="content">
<h1 class="btn" style="text-align: center;">About Me</h1>
<section class="half">
	<div class="container">
		<div class="post_info">
			<img src="/static/./images/./blueshirt.jpg" alt="qozeem-odeniran" srcset="" style="border-radius: 10px;">
		</div>
	</div>
</section>

<section class="half">
	<div class="container">
		<div class="post-body-div">
			I have over 6 years of experience as a software engineer, and have worked at both small startups and large organizations. While I'm a proficient full-stack developer, my expertise is in building scalable backend services (API services, stream processing, and async mechanisms).

			I love building things. While hard engineering problems are often intrinsically fun to tackle, I'm most attracted to solving real customer problems with a business justification. I'm looking for a senior individual contributor role where I can take on on collaborative team leadership responsibilites, and gain experience with architecture and project management.
		</div>
	</div> 
</section>


<section class="whole">
	<h1>More About Me</h1>
		<details open>
			<summary>Recent/Past Projects</summary>
			<ul>
				<li><a href="">Project</a></li>
				<li><a href="">Project</a></li>
				<li><a href="">Project</a></li>
			</ul>
		</details>
		<br>
		<details open>
			<summary>Learning</summary>
			It's an exciting time for software development. I'm working through several online classes, and swap articles with collegues.
		</details>
		<br>
		<details open>
			<summary>Hobbies</summary>
			I've been an enthusiastic hobbiest since I was a teenager - but only as an adult am I able to afford the higher-quality devices. I like to modify existing kits to improve speed, and add instrumentation.
		</details>
		<br>
		<details open>
			<summary>Activities</summary>
			I live in the Pacific Northwest, home of some of the greatest mountains and trails in the country. I enjoy spending weekends on scrambles and getting lost in the woods.
		</details>
</section>
</div>

<!-- footer -->
<?php include( ROOT_PATH . '/includes/footer.php') ?>