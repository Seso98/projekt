<?php 
	include "controllers/Comment.php";
	$com = new Comment();

	// Check if the user is logged in
	$isLoggedIn = isset($_SESSION['user']['firstname']);
 ?>

 <head>
 	<style>
 		.container {
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.box {
			border: 1px solid #999;
			padding: 20px;
			margin: 30px auto;
			width: 100%;
			height: 250px;
			overflow: scroll;
			background-color: white;
		}

		.box ul {
			margin: 0;
			padding: 0;
			list-style: none;
		}

		.box li {
			display: block;
			border-bottom: 1px dashed #ddd;
			margin-bottom: 5px;
			padding-bottom: 5px;
		}

		.box li:last-child {
			border-bottom: none;
		}

		.box span {
			color: #888;
		}
 	</style>
 </head>

 <body>

 
 	<div class="gallery">
	 <h1>Gallery</h1>
		<div class="galerija">
		<a href="gallery/1.jpg"><figure class="sole"><img alt="gtr1" src="gallery/1.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 1<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/2.jpg"><figure class="sole"><img alt="gtr1" src="gallery/2.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 2<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/3.jpg"><figure class="sole"><img alt="gtr1" src="gallery/3.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 3<br>
      	</figcaption>
  		</figure></a>
		
			<a href="gallery/4.jpg"><figure class="sole"><img alt="gtr1" src="gallery/4.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 4<br>
      	</figcaption>
  		</figure></a>
			
			<a href="gallery/5.png"><figure class="sole"><img alt="gtr1" src="gallery/5.png" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 5<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/6.jpg"><figure class="sole"><img alt="gtr1" src="gallery/6.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 6<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/7.jpg"><figure class="sole"><img alt="gtr1" src="gallery/7.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 7<br>
      	</figcaption>
  		</figure></a>
			
			<a href="gallery/8.jpg"><figure class="sole"><img alt="gtr1" src="gallery/8.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 8<br>
      	</figcaption>
  		</figure></a>
			
			<a href="gallery/9.jpg"><figure class="sole"><img alt="gtr1" src="gallery/9.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 9<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/10.jpg"><figure class="sole"><img alt="gtr1" src="gallery/10.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 10<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/11.jpg"><figure class="sole"><img alt="gtr1" src="gallery/11.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 11<br>
      	</figcaption>
  		</figure></a>
			
		<a href="gallery/12.jpg"><figure class="sole"><img alt="gtr1" src="gallery/12.jpg" style="width: 300px; height: 225px;">
    		<figcaption>GT-R 12<br>
      	</figcaption>
  		</figure></a>
		</div>				
	</div>
 	
	<div class="container">
		<div class="box">
			<ul>
				<?php 
					$result = $com->index();
					while ($data = $result->fetch_assoc()) {
				?>
				<li>
					<b style="color: black; font-size: 18px;"><?php echo $data['name']; ?></b><br>
					<span><?php echo $com->dateFormat($data['comment_time']); ?></span><br>
					<p><?php echo $data['comment'] ?></p>
				</li>
				<?php } ?>
			</ul>
		</div>
	</div>

	<?php if ($isLoggedIn): ?>
	<div>
		<form action="post_comment.php" method="post">
			<table>
				<tr>
					<td>
						<textarea name="comment" style="width: 100%; resize: vertical;" rows="5" placeholder="Please enter your comment"></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<input style="width: 30%; height: 40px;margin: 0 auto;" type="submit" name="submit" value="Submit">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<?php endif; ?>
 </body>
