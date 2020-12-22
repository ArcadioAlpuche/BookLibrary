<?php
/*
EDIT.PHP
Allows user to edit specific entry in database
*/

// creates the edit record form
// since this form is used multiple times in this file, I have made it a function that is easily reusable

function renderForm($id, $title, $lastname, $firstname, $genre, $subgenre, $publisher, $error){

?>

<html>
	<head>
		<title>Edit Book Information</title>
		<link rel="icon" href="favicon_io/android-chrome-512x512.png" type="image/gif" sizes="16x16">		
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>

	<body>

	<?php
	ini_set('display_errors', 1);
	// if there are any errors, display them
	if ($error != ''){
	echo '<div style="padding:4px; border:1px solid red; color:red;">'.$error.'</div>';
	}

	?>
	<!-- Image and text -->
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="#">
			<div class="row">
	    		<img class="col-md-1 col-sm-2" src="img/8852.jpg" alt="" loading="lazy">
	    		<h1 class="col-md-11 col-sm-10">My Library</h1>
	    	</div>
	  	</a>
	</nav>

	<div class="container">

		<div class="data-area">
			<form  action="" method="post" >
			<input type="hidden" name="id" value="<?php echo $id; ?>"/>

			<legend>Edit Book Information</legend>

				<div class="form-group">		
					<label>Book Title: *</label> 
					<input class="form-control" type="text" name="title" value="<?php echo $title; ?>"/>
				</div>

				<div class="form-group">
					<label>Author's First Name:</label> 
					<input class="form-control" type="text" name="author_firstname" value="<?php echo $firstname; ?>"/>
				</div>

				<div class="form-group">
					<label>Author's Last Name: *</label> 
					<input class="form-control" type="text" name="author_lastname" value="<?php echo $lastname; ?>"/>
				</div>

				<div class="form-group">
					<label>Genre:</label> 
					<input class="form-control" type="text" name="genre" value="<?php echo $genre; ?>"/>
				</div>

				<div class="form-group">
					<label>Subgenre:</label> 
					<input class="form-control" type="text" name="sub_genre" value="<?php echo $subgenre; ?>"/>
				</div>

				<div class="form-group">
					<label>Book Publisher:</label> 
					<input class="form-control" type="text" name="publisher" value="<?php echo $publisher; ?>"/>
				</div>
			
			

<div class="container">
	<div class="row">
		<div class="col-lg-2 col-md-4">
			<label class="col-form-label">* Required</label>
		</div>
		<div class="col-2">
			<input class="btn btn-primary" type="submit" name="submit" value="Update">
		</div>	
	</div>
</div>
		
	</form>
	</div>
	</div>
	</body>
</html>

<?php
}

// connect to the database
include('db-connect.php');

// check if the form has been submitted. If it has, process the form and save it to the database
if (isset($_POST['submit'])){

	// confirm that the 'id' value is a valid integer before getting the form data
	if (is_numeric($_POST['id'])){

	// get form data, making sure it is valid
	$id = $_POST['id'];
	$title = mysqli_real_escape_string($dbcon, $_POST['title']);
	$lastname = mysqli_real_escape_string($dbcon, $_POST['author_lastname']);
	$firstname = mysqli_real_escape_string($dbcon, $_POST['author_firstname']);
	$genre = mysqli_real_escape_string($dbcon, $_POST['genre']);
	$subgenre = mysqli_real_escape_string($dbcon, $_POST['sub_genre']);
	$publisher = mysqli_real_escape_string($dbcon, $_POST['publisher']);

	// check that book title and author's first and last name are not empty
	if ($title == '' || $lastname == ''){

	// generate error message
	$error = 'ERROR: Please fill in all required fields!';

	//error, display form
	renderForm($id, $title, $lastname, $firstname, $genre, $subgenre, $publisher, $error);
	}

	else{
	// save the data to the database
	mysqli_query($dbcon, "UPDATE books SET title = '$title', author_lastname = '$lastname', author_firstname = '$firstname', genre='$genre', sub_genre = '$genre', publisher = '$publisher' WHERE id='$id'")
		or die(mysql_error());

			// once saved, redirect back to the view page
			header("Location: http://localhost/lookup/books-search.php");
			}
	}

	else{
	// if the 'id' isn't valid, display an error
	echo 'Error!';
		}
}

else{
// if the form hasn't been submitted, get the data from the db and display the form

// get the 'id' value from the URL (if it exists), making sure that it is valid (checing that it is numeric/larger than 0)
if (isset($_GET['id']) && is_numeric($_GET['id']) && $_GET['id'] > 0){

// query db
$id = $_GET['id'];
$result = mysqli_query($dbcon, "SELECT * FROM books WHERE id=$id")
	or die(mysql_error());
$row = mysqli_fetch_array($result);



// check that the 'id' matches up with a row in the databse
if($row){
	// get data from db
	$title= $row['title'];
	$lastname= $row['author_lastname'];
	$firstname= $row['author_firstname'];
	$genre= $row['genre'];
	$subgenre= $row['sub_genre'];
	$publisher= $row['publisher'];

	// show form
	renderForm($id, $title, $lastname, $firstname, $genre, $subgenre, $publisher, '');
	}

		else{
		// if no match, display result
		echo "No results!";
			}
		}

	else{
	// if the 'id' in the URL isn't valid, or if there is no 'id' value, display an error
	echo 'Error!';
		}
	}
?>