<?php

if (isset($_GET['submitted'])) {

	
	// connect to the database	
	include('db-connect.php');

    //the SQL Query for pagination
	$category = $_GET['category'];
	$criteria = mysqli_real_escape_string($dbcon, $_GET['criteria']);
	$query = "SELECT * FROM books WHERE $category LIKE '%".$criteria."%' ORDER BY author_lastname ASC";
	$result = mysqli_query($dbcon, $query) or die('error getting data');

	echo "<div class=container>";

	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {

		echo "<div class='row search-result'>";
		echo "<div class='col-4'><h4>";
		echo $row['title'];
		echo "</h4><h5> Author: ";
		echo $row ['author_lastname'];
		echo ", ";
		echo $row ['author_firstname'];
		echo "</h5></div><div class='col-4'><h6>Genre: ";
		echo $row ['genre'];
		echo "</h6><h6>Subgenre: ";
		echo $row ['sub_genre'];
		echo "</h6><h6>Publisher: ";
		echo $row ['publisher'];
		echo "</h6></div><div class='col-4'>";
		echo '<a href="books-edit.php?id=' . $row['id'] . '">Edit Book</a>'; 
		echo "</div></div>";

	}

	echo "</div>";// end of container

	} // end of main if statement

?>