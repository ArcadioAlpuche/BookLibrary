<?php

If (isset($_POST['submitted'])) {
	
	include('db-connect.php');
	
	$title = mysqli_real_escape_string($dbcon, $_POST['title']);
	$lastname = mysqli_real_escape_string($dbcon, $_POST['author_lastname']);
	$firstname = mysqli_real_escape_string($dbcon, $_POST['author_firstname']);
	$genre = mysqli_real_escape_string($dbcon, $_POST['genre']);
	$subgenre = mysqli_real_escape_string($dbcon, $_POST['sub_genre']);
	$publisher = mysqli_real_escape_string($dbcon, $_POST['publisher']);
	
	$sqlinsert = "INSERT INTO books (title, author_lastname, author_firstname, genre, sub_genre, publisher) VALUES ('$title', '$lastname', '$firstname', '$genre', '$subgenre', '$publisher')";
	
	if (!mysqli_query($dbcon, $sqlinsert)) {
		die('Error inserting new book. Please check all information.');
		} // end of my nested if statement
		
		$newrecord = "New book added to database!";
	
	
} // end of the main if statement

?>