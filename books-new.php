<?php include('books-newdata.php'); ?>

<html>

	<title>Add a New Book</title>
	<link rel="icon" href="favicon_io/android-chrome-512x512.png" type="image/gif" sizes="16x16">		
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<body>

	<!-- Image and text -->
	<nav class="navbar navbar-light bg-light">
	  <a class="navbar-brand" href="#">
	  <div class="row">
	    <img class="col-md-1 col-sm-2" src="favicon_io/android-chrome-512x512.png" alt="" loading="lazy">
	    <h1 class="col-md-11 col-sm-10">My Library</h1>
	    </div>
	  </a>
	</nav>

<div class="container">
	<div class="data-area">
		<form class="form-group" method="post" action="books-new.php">
		<input type="hidden" name="submitted" value="true" />
		<fieldset>
			<legend>Enter New Book Information</legend>
			
				<div>
					<table class="table">							
						<tbody>
							<tr>
								<td><label>Book Title: </label></td>
								<td><input class="form-control" type="text" name="title" /></td>
							</tr>
							<tr>
								<td><label>Author's First Name: </label></td>
								<td><input class="form-control" type="text" name="author_firstname" /></td>
							</tr>
							<tr>
								<td><label>Author's Last Name: </label></td>
								<td><input class="form-control" type="text" name="author_lastname" /></td>
							</tr>
							<tr>
								<td><label>Genre:</label></td>
								<td>
									<select class="form-control" name="genre">
										<option value=""></option>
										<option value="fiction">Fiction</option>
										<option value="nonfiction">Nonfiction</option>
										<option value="philosophy">Philosophy</option>
										<option value="science">Science</option>
										<option value="tech">Tech</option>			
									</select>
								</td>
							</tr>
							<tr>
								<td><label>Subgenre:</label></td>
								<td>
									<select class="form-control" name="sub_genre">
										<option value=""></option>
										<option value="anthology">Anthology</option>
										<option value="autobiography">Autobiography</option>
										<option value="classic">Classic</option>
										<option value="comic">Comic</option>
										<option value="computer_science">Computer Science</option>
										<option value="data_science">Data Science</option>
										<option value="economics">Economics</option>
										<option value="education">Education</option>
										<option value="history">History</option>
										<option value="legal">Legal</option>	
										<option value="mathematics">Mathematics</option>
										<option value="misc">Misc</option>
										<option value="novel">Novel</option>
										<option value="objectivism">Objectivism</option>
										<option value="philosophy">Philosophy</option>
										<option value="physics">Physics</option>
										<option value="poetry">Poetry</option>
										<option value="politics">Politics</option>
										<option value="psychology">Psychology</option>
										<option value="science">Science</option>	
										<option value="signal_processing">Signal Processing</option>
										<option value="trivia">Trivia</option>		
									</select>
								</td>
							</tr>
							<tr>
								<td><label>Publisher Name: </label></td>
								<td><input class="form-control" type="text" name="publisher" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			
				<input class="btn btn-primary" type="submit" value="Save New Book" />
			</div>

		</fieldset>
		
		</form>
	</div>
</div>
	

	<?php if(!empty($newrecord)) { ?>
	<?php
	echo $newrecord
	?>
	<?php } ?>

	</body>
</html>