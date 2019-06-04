<?php 
	$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
	$query = mysqli_query($connect, "UPDATE news SET img = 'images/" . $_FILES['img']['name'] ."', title = '" . $_POST['title'] ."', text = '" . $_POST['text'] . "', type = '" . $_POST['type'] . "' WHERE id = " . $_POST['id'] . "");
	move_uploaded_file($_FILES['img']['tmp_name'], 'images/' . $_FILES['img']['name']);
	header('Location: http://aaaapple/mysite/admin.php');
	 ?>