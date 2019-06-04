<?php 
$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
	$query = mysqli_query($connect, "SELECT * from users where login = '" . $_POST['login'] . "' and  pass = '" . $_POST['pass'] . "'");
	$result = $query->fetch_assoc();
	if($query->num_rows == 1){
    header('Location: http://aaaapple/mysite/main.php?id=' . $result['id']);
	} else{
    header("Location: http://aaaapple/mysite/auto.php?text=Данного пользователя не существует или введён неверный пароль");
}
 ?>