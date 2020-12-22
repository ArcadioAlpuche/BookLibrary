<html>

	<head> 

		<title>Book Search</title>
		<link rel="icon" href="favicon_io/android-chrome-512x512.png" type="image/gif" sizes="16x16">		
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		
	</head>

	<body>

	<!-- Image and text -->
	<nav class="navbar navbar-light bg-light">
	  <a class="navbar-brand" href="#">
	  <div class="row">
	    <img class="col-md-1" src="favicon_io/android-chrome-512x512.png" alt="" loading="lazy">
	    <h1 class="col-md-11">Book Search</h1>
	    </div>
	  </a>
	</nav>

		<div class="search-form">
			<form id="search" align="center" method="get" action="books-search.php">
				<input type="hidden" name="submitted" value="true"/>

				<label> Search Category:</label>
					<select name="category">
						<option value="title">Book Title</option>
						<option value="author_lastname">Author's Last Name</option>
					</select>

				<label>Search Criteria:</label>
					<input type="text" name="criteria" />

				<input class="btn btn-primary" type="submit" value="Search" />
			</form>
		</div>

		<?php include('books-searchdata.php'); ?>

	</body>
</html>