<?php
print '
<!DOCTYPE html>
<html>
<head>
	<title>About Nissan GT-R</title>
	<style>
		.container {
			display: flex;
			flex-direction: row;
		}

		.left {
			width: 50%;
		}

		.right {
			width: 50%;
		}

		@media (max-width: 1300px) {
			.container {
				flex-direction: column;
			}

			.left, .right {
				width: 100%;
			}
		}
	</style>
</head>
<body>
	<div class="container">
		<section class="left">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/vlDOjTaaEdA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</section>
		<section class="right">
			<p>The Nissan <b>GT-R</b> is a high-performance sports car and grand tourer produced by Nissan that was unveiled in 2007. It is the successor to the <b>Skyline GT-R</b>, although no longer part of the Skyline range itself, that name now being used for Nissan\'s luxury-sport market.
			<br><br>The <b>GT-R</b> is an entirely new model sharing little with the <b>Skyline GT-R</b> save its signature four round tail lights. Like some later generations of the <b>Skyline GT-R</b>, the <b>GT-R</b> has all-wheel drive with a twin-turbocharged 6-cylinder engine. But the four-wheel-steering HICAS system has been removed and the former straight-6 RB26DETT engine has been replaced with a new VR38DETT V6 engine. Because of the GT-R\'s heritage, the chassis code for the all-new version has been called CBA-R35, or R35 for short (where CBA stands for the emissions standard prefix), carrying on the naming trend from previous <b>Skyline GT-R</b> generations.
	<br><br>The <b>GT-R</b> has also retained its Skyline predecessor\'s nickname, <b>Godzilla</b>,originally given to it by the Australian motoring publication Wheels in its July 1989 edition.
	</p>
  </section>
			</div>
	</body>'
?>
