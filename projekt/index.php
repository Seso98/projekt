<?php 
	# Stop Hacking attempt
	define('__APP__', TRUE);
	
	# Start session
    session_start();
	
	# Database connection
	include ("dbconn.php");
	
	# Variables MUST BE INTEGERS
    if(isset($_GET['menu'])) { $menu   = (int)$_GET['menu']; }
	if(isset($_GET['action'])) { $action   = (int)$_GET['action']; }
	
	# Variables MUST BE STRINGS A-Z
    if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }
	
	if (!isset($menu)) { $menu = 1; }
	
	# Classes & Functions
    include_once("functions.php");
	
print '
<!DOCTYPE html>
<html>
	<head>
		
		<!-- CSS -->
		<link rel="stylesheet" href="style.css">
		<!-- End CSS -->
		<!-- meta elements -->
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="description" content="some description">
        <meta name="keywords" content="keyword 1, keyword 2, keyword 3, keyword 4, ...">
		
		
		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet"> 
		<!-- End Google Fonts -->
		<title>GT-R</title>
	</head>
<body>
	<header>
		<div><img src="slike/GT-R-logo-F1EEE764F4-seeklogo.com.png" alt="banner" class="banner"></div>
		<nav>';
			include("menu.php");
		print '</nav>
	</header>
	<main>';
		if (isset($_SESSION['message'])) {
			print $_SESSION['message'];
			unset($_SESSION['message']);
		}
	
	# Homepage
	if (!isset($menu) || $menu == 1) { include("home.php"); }
	
	# GTR-Models
	else if ($menu == 2) { include("news.php"); }
	
	# Contact
	else if ($menu == 3) { include("contact.php"); }
	
	# About us
	else if ($menu == 4) { include("about-us.php"); }
	
	# Gallery
	else if ($menu == 5) { include("gallery.php"); }

	# Image Search
	else if ($menu == 10) { include("search.php"); }

	# Stocks
	else if ($menu == 11) { include("stocks.php"); }

	# Test
	else if ($menu == 12) { include("testXML.php"); }
	
	# Register
	else if ($menu == 6) { include("register.php"); }
	
	# Signin
	else if ($menu == 7) { include("signin.php"); }
	
	# Admin webpage
	else if ($menu == 8) { include("admin.php"); }

	# Profile webpage
	else if ($menu == 9) { include("profile.php"); }
	
	print '
	</main>
	<footer>
		<p>Copyright &copy; ' . date("Y") . ' Ivan Šešo<a href="https://github.com/Seso98" target="_blank"><img src="slike/github.jpg" title="Github" alt="Github"></a></p>
	</footer>
</body>
</html>';
?>
