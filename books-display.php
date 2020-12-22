<html>

	<head>

		<title> Display Data from DB</title>
		<link rel="icon" href="favicon_io/android-chrome-512x512.png" type="image/gif" sizes="16x16">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/styles2.css">

	</head>

	<body>

		<ul class="nav">

			<div>
				<h1>Full Book List</h1>
			</div>	

		</ul>

	<?php

	include('db-connect.php');

	$sqlget = "SELECT * FROM books ORDER BY id ASC";
	$sqldata = mysqli_query($dbcon, $sqlget)or die('Error getting data.');

	echo "<table width=100%>";
	echo "<tr>
				<th>Title</th> 
				<th>Author Last Name</th> 
				<th>Author First Name</th> 
				<th>Genre</th> 
				<th>Subgenre</th> 
				<th>Publisher</th> 
		</tr>";

	while($row = mysqli_fetch_array($sqldata, MYSQLI_ASSOC)) {
		echo "<tr><td>";
		echo $row['title'];
		echo "</td><td>";
		echo $row ['author_lastname'];
		echo "</td><td>";
		echo $row ['author_firstname'];
		echo "</td><td>";
		echo $row ['genre'];
		echo "</td><td>";
		echo $row ['sub_genre'];
		echo "</td><td>";
		echo $row ['publisher'];
		echo "</td></tr>";
		}
	echo "</table>";
	?>

	</body>
</html>