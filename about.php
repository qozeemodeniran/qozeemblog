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
<h1 class="btn" style="text-align: center; width: 100%; font-size: 200%;">About Me</h1><br><br>
<section class="half">
	<div class="container">
		<div class="post_info">
			<img src="/static/./images/./blueshirt.jpg" alt="qozeem-odeniran" srcset="" style="border-radius: 10px; max-height: 700px;">
		</div>
	</div>
</section>

<section class="half">
	<div class="">
		<div class="post-body-div" style="margin-top: -20px;">
		<p>
		Experienced FullStack Engineer who is skilled in System Design & Architecture, Backend Engineering, Frontend Engineering, Mobile apps and DevOps. I have written software from the ground up, worked in teams to build amazing products, optimized workflows to increase productivity and managed client relationships.
		</p>
		<p>
		In my current role as a Junior Software, I am responsible for planning, designing, implementing, unit testing and debugging applications. I am also responsible for working with a team consisting of infrastructure Engineers, DevOps Engineers and QA Engineers to build, maintain, scale existing systems and convert Monolithic systems to distributed systems to handle the load from millions of users.
		</p>
		<p>
		I am known for my passion for building great products, out of the box thinking, quick wit, ability to learn anything quickly, being a good team player and an excellent listener, my knack for high quality code that is scalable and testable, clean architecture and my versatility which helps me adapt to almost any role.
		</p>

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
</div><br><br>

<!-- footer -->
<?php include( ROOT_PATH . '/includes/footer.php') ?>