-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.byethost12.com
-- Generation Time: Oct 29, 2020 at 07:49 PM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b12_27082892_qozeemblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(91, 1, 'EASY STEPS TO CREATE VIRTUAL HOST(s) IN WINDOWS USING XAMPP/WAMP', 'easy-steps-to-create-virtual-host-s-in-windows-using-xampp-wamp', 0, '', '<blockquote>\r\n<p>Welcome...</p>\r\n\r\n<p>I am about to walk you through some simple steps on how you can setup</p>\r\n\r\n<p>virtual host(s) on your local machine(windows) using xampp/wampp.</p>\r\n\r\n<p><strong>Step 1: Edit httpd.conf</strong></p>\r\n\r\n<ul>\r\n	<li>If and only if it is necessary, change xampp/wamp port.</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I have decided to use the default setting which is &ldquo;Listen 80&rdquo;</p>\r\n\r\n<p><strong>How to</strong>: Click on Config -&gt; Apache (httpd.conf) Or you find the file here&nbsp;</p>\r\n\r\n<p><code>&nbsp; &nbsp; &nbsp; &nbsp; C:\\XAMPP\\apache\\conf\\httpd.conf</code> OR <code>C:\\XAMPP\\apache2\\conf\\httpd.conf</code></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Change the line with &ldquo;Listen 80&rdquo; to &ldquo;Listen 8080&rdquo; or any other free ports.</p>\r\n\r\n<p><strong>NOTE: &ldquo;</strong>Listen 80&rdquo; is usually the default port setting.</p>\r\n\r\n<p><strong>Step 2: Setting up virtual host(s)</strong></p>\r\n\r\n<ul>\r\n	<li>Create a folder for your projects; I have created one in&nbsp;<code>c:\\vhost</code>&nbsp;you can call</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;it any name as you please.</p>\r\n\r\n<ul>\r\n	<li>In&nbsp;<code>c:\\vhost</code>&nbsp;folder we&rsquo;d create a sub-folder job1 or any other, it is up to you (<code>c:\\vhost\\</code>)</li>\r\n	<li>Open&nbsp;<code>httpd-vhosts.conf</code>&nbsp;file&nbsp;<code>C:\\XAMPP\\apache\\conf\\extra\\httpd-vhosts.conf</code>&nbsp;</li>\r\n	<li>Add following code in line depending on how many virtual host you wish to create:</li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;AllowOverride All</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Require all granted</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <code># XAMPP default address&nbsp;&nbsp;&nbsp; </code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot &quot;C:/vhostjob1/&quot;</code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ServerName job1.localhost</code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code></pre>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # First virtual host address in XAMPP</code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot &quot;C:/vhost/project1/&quot;</code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;ServerName php.localhost</code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;SetEnv NS_ENV variable_value</code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code></pre>\r\n\r\n<pre>\r\n<code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </code><strong>NOTE: More Virtual host address can be added here.</strong></pre>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<pre>\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Save and close the file after the above steps.</strong></pre>\r\n\r\n<pre>\r\n<strong>Step 3: Edit Windows Host file</strong></pre>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<ul>\r\n	<li>Stop Apache and MySQL services from XAMPP/WAMP.</li>\r\n</ul>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<ul>\r\n	<li>Open hosts file in&nbsp;<code>C:\\windows\\system32\\drivers\\etc</code>&nbsp;you need Administrator privilege</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;to edit the file. I suggest to edit the file directly with Sublime text editor.</p>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<ul>\r\n	<li>Add&nbsp;<code><strong>127.0.0.1 job1.localhost</strong></code><strong>&nbsp;</strong>at the end of the file, Save and close the file.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>save the file</li>\r\n</ul>\r\n\r\n<p><strong>Step 4: </strong><strong>Start/Re-start your Apache and MySQL again.</strong></p>\r\n\r\n<p><strong>Giveaway tip -- </strong>Open file&nbsp;<code>php.ini</code>&nbsp;under php folder in your Apache (XAMPP or WAMP)</p>\r\n\r\n<p>folder and change&nbsp;<code>opcache.enable</code>&nbsp;to&nbsp;<code>0</code>&nbsp;so it looks like this:</p>\r\n\r\n<pre>\r\n<code>[opcache]</code></pre>\r\n\r\n<pre>\r\n<code>zend_extension=php_opcache.dll</code></pre>\r\n\r\n<pre>\r\n<code>; Determines if Zend OPCache is enabled</code></pre>\r\n\r\n<pre>\r\n<span class=\"marker\"><code>opcache.enable=0</code></span></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code><strong>Step 5: Goto your browser and type :&nbsp; </strong></code><code><a href=\"http://job1.localhost/\">http://job1.localhost/</a></code></pre>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<pre>\r\n<code>I hope this helps you solve a problem.\r\n\r\nFeel free to contact me if you need any further assistance.</code></pre>\r\n\r\n<pre>\r\n<code>My contact details are in the &ldquo;contact page&rdquo; of the blog.</code></pre>\r\n\r\n<pre>\r\n<code>HAPPY CODING!!!</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<pre>\r\n&nbsp;</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n', 1, '2020-10-15 19:24:12', '2020-10-15 19:19:38'),
(151, 1, 'SIMPLE HTML FORM WITH A BUTTON', 'simple-html-form-with-a-button', 0, 'Screenshot (209).png', '&lt;blockquote&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;!DOCTYPE&amp;nbsp;html&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;html&amp;nbsp;lang=&amp;quot;en&amp;quot;&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;head&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;meta&amp;nbsp;charset=&amp;quot;UTF-8&amp;quot;&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;meta&amp;nbsp;name=&amp;quot;viewport&amp;quot;&amp;nbsp;content=&amp;quot;width=device-width,&amp;nbsp;initial-scale=1.0&amp;quot;&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;title&amp;gt;simple&amp;nbsp;form&amp;lt;/title&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;/head&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;body&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;h1&amp;gt;Please&amp;nbsp;fill&amp;nbsp;the&amp;nbsp;form&amp;nbsp;below&amp;lt;/h1&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;form&amp;nbsp;method=&amp;quot;post&amp;quot;&amp;nbsp;action=&amp;quot;&amp;quot;&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;fieldset&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;legend&amp;gt;User&amp;nbsp;form&amp;lt;/legend&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Name:&amp;nbsp;&amp;lt;br&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;input&amp;nbsp;type=&amp;quot;text&amp;quot;&amp;nbsp;name=&amp;quot;fullname&amp;quot;&amp;nbsp;/&amp;gt;&amp;lt;br&amp;gt;&amp;lt;br&amp;gt;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Email:&amp;lt;br&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;input&amp;nbsp;type=&amp;quot;text&amp;quot;&amp;nbsp;name=&amp;quot;email&amp;quot;&amp;nbsp;/&amp;gt;&amp;lt;br&amp;gt;&amp;lt;br&amp;gt;&amp;nbsp;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Password:&amp;lt;br&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;input&amp;nbsp;type=&amp;quot;password&amp;quot;&amp;nbsp;name=&amp;quot;password&amp;quot;&amp;nbsp;/&amp;gt;&amp;lt;br&amp;gt;&amp;lt;br&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;input&amp;nbsp;type=&amp;quot;submit&amp;quot;&amp;nbsp;name=&amp;quot;sumbit&amp;quot;&amp;nbsp;value=&amp;quot;Submit&amp;quot;&amp;nbsp;/&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;/fieldset&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;lt;/form&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;/body&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&amp;lt;/html&amp;gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;img alt=&quot;simpleForm&quot; src=&quot;https://res.cloudinary.com/lastborn/image/upload/v1602782698/Screenshot_210_a6lwbx.png&quot; style=&quot;height:327px; width:793px&quot; /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n', 1, '2020-10-15 17:27:41', '2020-10-15 17:27:41'),
(161, 1, 'FIVE (5) IMPORTANT LESSONS WE LEARN TOO LATE IN LIFE', 'five-5-important-lessons-we-learn-too-late-in-life', 0, '', '<p><strong>&quot;FIVE (5) IMPORTANT LESSONS PEOPLE LEARN TOO LATE IN LIFE&quot;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I helped a woman go see a doctor last year (2019), complaining of a &#39;bad back&#39;, the doctor told her &quot;it&#39;s old age&quot;, the woman says &quot;I want a second opinion&quot;, then the doctor says &quot;okay then, you&#39;re ugly as well&quot;, then they chuckled. Hence, I remembered TOMMY COOPER and looked at the doctor and smiled... Got any ironical message? Let me hit you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So many young people don&#39;t know how wonderful it is to be young, most people waste their young age only to have bunch of regrets at their fifties, sixties, seventies and so on.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I tried for some while to encompass what exactly is wrong in our existence or what are we are not seeming to find or get at the right time. In this article, I&#39;ll be sharing five (5) Important Lessons Most People Learn Too Late In Life, and number three(3) is the most important of all.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lesson #1: <em><strong>NOT TAKING RISK IS RISKY</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>An average human being grows up to take life easy. He may want to start a business but he&#39;s afraid he could lose his money. He may want to pursue his passion but he&#39;s afraid &quot;what if i fail?&quot;. Most people are cowards who live their lives worrying about what will happen if they fail at what they want to do without doing them. We&#39;re going to regret much of what we don&#39;t do and probably NOTHING of what we do that doesn&#39;t work.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&quot;Twenty years from now, you&#39;ll be more disappointed by things you didn&#39;t do than the ones you did and fail. So,throw off the bowlines, sail away from your safe harbor, catch trade winds in your sail, Explore, Dream, Discover&quot;</em> says Mark Twain.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&#39;re young now, get this into your head, making mistakes, failing, losing some money because of your investment/business, all those would not matter in the future, all that will matter would be those things you should do but which FEAR keeps you from doing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Take RISK and try new things. Not taking risk is very risky</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lesson #2: <em><strong>COMPLAINT SOLVES NO PROBLEM</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Take a moment to look around you, and you are going to see virtually everybody complaining about everything. Some people believe that the reasons why they&#39;re poor is because the economy is bad, or because the government of their country is bad. Some people blame their parents for their poverty. I mean people have countless complaints/excuses about the reasons why they&#39;re who they are. However, in the nearest future, when these guys as sixty five(65) or seventy(70), they&#39;ll eventually discover that complaints/excuses solves no problem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Today, you may be complaining about the economy, the government or anything else, but you don&#39;t have the power to change many of the things you&#39;re complaining about.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&quot;Successful people concentrate their energy on what they can change, not what they don&#39;t have power over&quot;</em> - ADDOS</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Stop complaining and started taking actions towards your goals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lesson #3: <em><strong>THE FIRST ASSIGNMENT OF ANY HUMAN BEING IS TO KNOW WHY HE WAS BORN</strong></em> (The most important i promised)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Many people go through life to catch up with what the society influences them to do or what their parents/peers influences them to do. Many people becomes adult and think about the profession that can earn them more money or the profession that their parents thinks it&#39;s best for them. Not so many people takes time to think about their Strength, Potential, Capacity, and Passion before choosing their profession.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You ever wondered study shows that 80% of people in the world hates their job, uhn? (Now you know) Chuckles...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Listen young blood, you know you celebrate your birthday every year, but &quot;The day you were born isn&#39;t as important as the day you know the reason why you were born&quot;</em> - ADDOS</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Don&#39;t waste your time trying to pursue what everyone thinks is right for you. Take your time to understand your STRENGTH, POTENTIAL, and PASSION</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lesson #4: <em><strong>BEING HONEST WITH YOURSELF IS VERY IMPORTANT</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Now, being honest with yourself means you have to understand what your strengths and weaknesses are. Most people criticise their lives for not been able to do certain things like others without digging deep to know what they can do better than others, only for them to be seventy(70)years and discover that they&#39;ve wasted all their lives trying to be other people</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Be honest with yourself. You don&#39;t have to be good in everything. Know your weaknesses and embrace your strengths</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lesson #5: <em><strong>SUCCESS ISN&#39;T IN THE FUTURE</strong></em> (And this is a big one)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Almost everyone of us lives in the future. When we were young, we thought we were going to be happy by the time we become adults. By the time we became adults, we thought we were going to be happy by the time we are married. By the time we get married, we believe we&#39;re going to be happy by the time we&#39;ll have kids. When we have kids, we discovered that kids are expensive and requires a lot of work to raise them, but somehow, we thought we&#39;re going to be happy when those kids grow up and when these kids grow up, we think we&#39;re going to be happy if we got enough money to send them to school, and when we found out how to get them to higher institutions, we think we&#39;re going to be happy after all if we can become millionaires. And if some of us are able to become millionaires, we believe probably we&#39;re going to be happy if we can become the richest man in the world. (Give an insight to this illustration from our parents to our current generation)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>And that&#39;s how we postpone our happiness till forever. Chuckles...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Now, when we&#39;re 75, we finally discovered that happiness isn&#39;t in the future. We discover that nothing in life makes us happy tomorrow.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So what&#39;s the lesson here; <em>BE HAPPY RIGHT NOW</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No matter what you have or lack, you can find a way to be grateful and rejoice. Even while pursuing your goals to be rich, healthy or anything else, make sure you take out time to SMILE and be HAPPY. Nothing in the future will make you happy, trust me, NOTHING! NOTHING!! NOTHING!!!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>BE HAPPY NOW...</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Questions for you:</strong></p>\r\n\r\n<p><em>1. What is that risky step that isn&#39;t taking your life and you&#39;re not taking that risk?</em></p>\r\n\r\n<p><em>2. What is that thing you&#39;re giving excuses about that you cant get your way through it?</em></p>\r\n\r\n<p><em>3. Are you under peer pressure, societal influence or parent&#39;s picture of you?</em></p>\r\n\r\n<p><em>4. Gotten any strength you want to embrace and any weakness you want to dispose?</em></p>\r\n\r\n<p><em>5. Are you currently happy, are you having that fun in life now while still chasing your goals?</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thanks for your time</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&copy;Adesipe Damilola (ADDOS)</strong></p>\r\n', 1, '2020-10-16 07:46:33', '2020-10-16 07:42:27'),
(171, 1, 'Full Speech of President Muhammadu Buhari', 'full-speech-of-president-muhammadu-buhari', 0, 'Muhammadu-Buhari.jpg', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;ADDRESS TO THE NATION BY HIS EXCELLENCY, MUHAMMADU BUHARI, PRESIDENT OF THE FEDERAL REPUBLIC OF NIGERIA ON THE ENDSARS PROTESTS, 22ND OCTOBER, 2020&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Fellow Nigerians,&lt;/p&gt;\r\n\r\n&lt;p&gt;1. It has become necessary for me to address you having heard from many concerned Nigerians and having concluded a meeting with all the Security Chiefs.&lt;/p&gt;\r\n\r\n&lt;p&gt;2. I must warn those who have hijacked and misdirected the initial, genuine and well &amp;ndash; intended protest of some of our youths in parts of the country, against the excesses of some members of the now disbanded Special Anti-Robbery Squad (SARS).&lt;/p&gt;\r\n\r\n&lt;p&gt;3. On Monday 12th October, I acknowledged the genuine concerns and agitations of members of the public regarding the excessive use of force by some members of SARS.&lt;/p&gt;\r\n\r\n&lt;p&gt;4. The choice to demonstrate peacefully is a fundamental right of citizens as enshrined in Section 40 of our Constitution and other enactments; but this right to protest also imposes on the demonstrators the responsibility to respect the rights of other citizens, and the necessity to operate within the law.&lt;/p&gt;\r\n\r\n&lt;p&gt;5. As a democratic government, we listened to, and carefully evaluated the five-point demands of the protesters. And, having accepted them, we immediately scrapped SARS, and put measures in place to address the other demands of our youth.&lt;/p&gt;\r\n\r\n&lt;p&gt;6. On approving the termination of SARS, I already made it clear that it was in line with our commitment to the implementation of extensive Police reforms.&lt;/p&gt;\r\n\r\n&lt;p&gt;7. Sadly, the promptness with which we have acted seemed to have been misconstrued as a sign of weakness and twisted by some for their selfish unpatriotic interests.&lt;/p&gt;\r\n\r\n&lt;p&gt;8. The result of this is clear to all observers: human lives have been lost; acts of sexual violence have been reported; two major correctional facilities were attacked and convicts freed; public and private properties completely destroyed or vandalised; the sanctity of the Palace of a Peace Maker, the Oba of Lagos has been violated. So-called protesters have invaded an International Airport and in the process disrupted the travel plans of fellow Nigerians and our visitors.&lt;/p&gt;\r\n\r\n&lt;p&gt;9. All these executed in the name of the ENDSARS protests. I am indeed deeply pained that innocent lives have been lost. These tragedies are uncalled for and unnecessary. Certainly, there is no way whatsoever to connect these bad acts to legitimate expression of grievance of the youth of our country.&lt;/p&gt;\r\n\r\n&lt;p&gt;10. The spreading of deliberate falsehood and misinformation through the social media in particular, that this government is oblivious to the pains and plight of its citizens is a ploy to mislead the unwary within and outside Nigeria into unfair judgement and disruptive behaviour.&lt;/p&gt;\r\n\r\n&lt;p&gt;11. On the contrary, both our deeds and words have shown how committed this administration has been to the wellbeing and welfare of citizens, even with the steadily dwindling revenues, and the added responsibilities and restrictions due to the Coronavirus pandemic.&lt;/p&gt;\r\n\r\n&lt;p&gt;12. Government has put in place measures and initiatives principally targeted at youths, women and the most vulnerable groups in our society. These included our broad plan to lift 100 million Nigerians out of poverty in the next 10 years; the creation of N75 billion National Youth Investment Fund to provide opportunities for the youths and the Micro, Small and Medium Enterprises (MSME) Survival Fund, through which government is:&lt;/p&gt;\r\n\r\n&lt;p&gt;a. paying three months salaries of the staff of 100,000 micro, small &amp;ndash; and medium &amp;ndash; enterprises,&lt;/p&gt;\r\n\r\n&lt;p&gt;b. paying for the registration of 250,000 businesses at the Corporate Affairs Commission,&lt;/p&gt;\r\n\r\n&lt;p&gt;c. giving a grant of N30,000 to 100,000 artisans; and&lt;/p&gt;\r\n\r\n&lt;p&gt;d. guaranteeing market for the products of traders.&lt;/p&gt;\r\n\r\n&lt;p&gt;13. These are in addition to many other initiatives such as;&lt;/p&gt;\r\n\r\n&lt;p&gt;a. Farmermoni,&lt;/p&gt;\r\n\r\n&lt;p&gt;b. Tradermoni,&lt;/p&gt;\r\n\r\n&lt;p&gt;c. Marketmoni,&lt;/p&gt;\r\n\r\n&lt;p&gt;d. N-Power,&lt;/p&gt;\r\n\r\n&lt;p&gt;e. N-Tech and&lt;/p&gt;\r\n\r\n&lt;p&gt;f. N-Agro.&lt;/p&gt;\r\n\r\n&lt;p&gt;14. No Nigerian Government in the past has methodically and seriously approached poverty-alleviation like we have done.&lt;/p&gt;\r\n\r\n&lt;p&gt;15. With regard to the welfare of police personnel, the National Salaries, Income and Wages Commission has been directed to expedite action on the finalization of the new salary structure of members of the Nigeria Police Force. The emoluments of other paramilitary services are also being reviewed upwards.&lt;/p&gt;\r\n\r\n&lt;p&gt;16. In order to underscore the importance of education in preparing youths for the future, this administration has come up with a new salary structure and other incentives for our teachers.&lt;/p&gt;\r\n\r\n&lt;p&gt;17. Let me at this point reaffirm the Federal Government&amp;rsquo;s commitment to preserving the unity of this country.&lt;/p&gt;\r\n\r\n&lt;p&gt;18. We will continue to improve good governance and our democratic process, including through sustained engagement.&lt;/p&gt;\r\n\r\n&lt;p&gt;19. We shall continue to ensure that liberty and freedom, as well as the fundamental rights of all citizens are protected.&lt;/p&gt;\r\n\r\n&lt;p&gt;20. But remember that government also has the obligation to protect lives and properties, as well as the right of citizens to go about their daily businesses freely and protected from acts of violence.&lt;/p&gt;\r\n\r\n&lt;p&gt;21. To our neighbours in particular, and members of the international community, many of whom have expressed concern about the ongoing development in Nigeria, we thank you and urge you all to seek to know all the facts available before taking a position or rushing to judgment and making hasty pronouncements.&lt;/p&gt;\r\n\r\n&lt;p&gt;22. In the circumstances, I would like to appeal to protesters to note and take advantage of the various well-thought-out initiatives of this administration designed to make their lives better and more meaningful, and resist the temptation of being used by some subversive elements to cause chaos with the aim of truncating our nascent democracy.&lt;/p&gt;\r\n\r\n&lt;p&gt;23. For you to do otherwise will amount to undermining national security and the law and order situation. Under no circumstances will this be tolerated.&lt;/p&gt;\r\n\r\n&lt;p&gt;24. I therefore call on our youths to discontinue the street protests and constructively engage government in finding solutions. Your voice has been heard loud and clear and we are responding.&lt;/p&gt;\r\n\r\n&lt;p&gt;25. And I call on all Nigerians to go about their normal businesses, and enjoin security agencies to protect lives and properties of all law abiding citizens without doing harm to those they are meant to protect. Let me pay tribute to officers of the Nigeria Police Force who have tragically lost their lives in the line of duty.&lt;/p&gt;\r\n\r\n&lt;p&gt;26. I would like to thank those state Governors, traditional and religious leaders who have appealed for calm and restraint. I also thank youth leaders who have restrained their followers from taking the law into their hands.&lt;/p&gt;\r\n\r\n&lt;p&gt;27. This government respects and will continue to respect all the democratic rights and civil liberties of the people, but it will not allow anybody or groups to disrupt the peace of our nation.&lt;/p&gt;\r\n\r\n&lt;p&gt;Thank you all. God bless the Federal Republic of Nigeria.&lt;/p&gt;\r\n', 1, '2020-10-23 06:22:48', '2020-10-23 06:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(NULL, 11, 2),
(NULL, 21, 1),
(NULL, 31, 1),
(NULL, 41, 4),
(NULL, 51, 1),
(NULL, 61, 3),
(NULL, 71, 4),
(NULL, 0, 4),
(NULL, 81, 4),
(NULL, 91, 4),
(NULL, 101, 3),
(NULL, 111, 6),
(NULL, 121, 1),
(NULL, 131, 4),
(NULL, 141, 4),
(NULL, 151, 4),
(NULL, 161, 1),
(NULL, 171, 5);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Business', 'business'),
(4, 'Tech', 'tech'),
(5, 'News', 'news'),
(6, 'Sports', 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'qodeniran', 'muhdqozeem@gmail.com', 'Admin', 'password', '2020-09-05 00:00:00', '0000-00-00 00:00:00'),
(11, 'qozeemodeniran', 'qozeemodeniran@gmail.com', 'Admin', 'c5ac6c5cad38135f321edaa18f05ed5c', '2020-09-16 13:43:22', '2020-09-16 13:43:22'),
(51, 'Kareem', 'adrokareem@gmail.com', 'Admin', 'dee677f86dea60238b31bbe0ab5d5530', '2020-10-11 14:28:57', '2020-10-11 14:28:57'),
(71, 'ADDOS', 'addossolutions@gmail.com', 'Admin', 'e57c219ae529d5d5c1e370316c2eef08', '2020-10-12 09:10:13', '2020-10-12 09:10:13'),
(81, 'Ayomikun Omoledun', 'loladeayomikun97@gmail.com', 'Admin', 'd238e9a7a64161335a031eeff28f3473', '2020-10-12 09:36:05', '2020-10-12 09:36:05'),
(91, 'Afuwape Omolara Taofikat', 'afuwapeomolara4@gmail.com', 'Admin', '3ccbcac80e82a9f806addafcd72648c8', '2020-10-12 14:42:05', '2020-10-12 14:42:05'),
(101, 'gina', 'ganiyatolajumoke.go@gmail.com', 'Admin', '9087836452c25410363245b6e7bbc500', '2020-10-13 09:24:06', '2020-10-13 09:24:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
