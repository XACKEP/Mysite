<?php 
$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
$query = mysqli_query($connect, "INSERT INTO users(email, login, pass, avatar) VALUES ('" . $_POST['email'] . "', '" . $_POST['login'] . "', '" . $_POST['pass'] . "', '" . $_POST['img'] . "')");
	//mail($_POST['email'],'Здравствуйте, ' . $_POST['name'], 'Регистрация прошла успешно, ваш логин и пароль: ' . $_POST['login'] . ' ' . $_POST['pass']);
header('Location: http://aaaapple/mysite/auto.php')
 ?>