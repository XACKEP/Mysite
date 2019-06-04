<?php 
$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
$query = mysqli_query($connect, "SELECT * FROM news");
$query2 = mysqli_query($connect, "INSERT INTO news(img, title, text, type) VALUES ('images/" . $_FILES['img']['name'] ."', '" . $_POST['title'] . "','" . $_POST['text'] . "','" . $_POST['type'] . "')");
move_uploaded_file($_FILES['img']['tmp_name'], 'images/' . $_FILES['img']['name']);	
header('Location: http://aaaapple/mysite/admin.php');
 ?>