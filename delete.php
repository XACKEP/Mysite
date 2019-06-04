<?php 
$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
$query = mysqli_query($connect, "DELETE FROM news WHERE id = '" . $_POST['id'] . "'");
header('Location: http://aaaapple/mysite/admin.php');
 ?>