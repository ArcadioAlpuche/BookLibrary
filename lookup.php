<!DOCTYPE html>
<html>
<head>   
		<link rel="icon" href="favicon_io/android-chrome-512x512.png" type="image/gif" sizes="16x16">
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<title>Book Search</title>
	
</head>
<body>
<div class="row"> 
		<div id="header" class="span2">
			<img id="logo" src="stack-books/8852-resize.jpg">
		</div>
		<div class="span10">
			<p id="title"> Search Our Online Library</p>
		</div>
</div>

<div class="row">

		<div id="search" class="span12">
			<h3 id="title">Book Search</h3>
				<form method="get" action="sn-display.php">
				<input type="hidden" name="submitted" value="true"/>
					<div id="snumber">
						<input id="sinput" type="text" name="snumber" placeholder="Enter Serial Number">
					</div>
					<div id="button">
						<input id="submit" type="submit" name="submit" value="search">
					</div>
			</form>
		</div>

	</div>

<?php include('sn-display.php'); ?>
</body>
</html>