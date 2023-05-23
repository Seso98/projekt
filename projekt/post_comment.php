<?php 
	include_once 'controllers/Comment.php';
	$com = new Comment();
	session_start();
	if (isset($_POST['submit'])) {
		$name    = $_SESSION['user']['firstname'];
		$comment = $_POST['comment'];

		if (empty($name) || empty($comment)) {
			print '<p>The field must not be empty!</p>';
		} else {
			$com->setData($name, $comment);
			if ($com->create()) {
				header('Location: index.php?menu=5?msg='.urlencode('Comment Posting Successfully'));
			}
		}
	}
 ?>