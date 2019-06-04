<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<style>
	.head{
		height:150px;
		background:yellow;
		padding-left: 150px;
		box-sizing: border-box;
	}
	.theme{
		margin-top: 30px;
		font-size: 24px;
	}
	.footer{
		height:100px;
		background: orange;
	}
</style>
<body>
	<div class="container-fluid bg-warning row">
		<div class="col-2">
			<h2 style="" class="text-center mt-4">Темы</h2>
		</div>
		<div class="mx-auto col-8">
		<div class="row">
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/main.php?id=' . $_GET['id'] . '">Общее</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/polite.php?id=' . $_GET['id'] . '">Политика</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/games.php?id=' . $_GET['id'] . '">Игры</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/jokes.php?id=' . $_GET['id'] . '">Анекдоты</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/films.php?id=' . $_GET['id'] . '">Фильмы</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/other.php?id=' . $_GET['id'] . '">Другое</a>';
				?>
			</div>
				<?php 
				$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
				$query = mysqli_query($connect, "SELECT * FROM news WHERE type = 'Политика' ORDER BY id DESC");
				$query2 = mysqli_query($connect, "SELECT * from users where id = '" . $_GET['id'] . "'");
				$logo2 = $query2->fetch_assoc();
				?>
		</div>
		</div>
			<div style="" class="col-2">
				<div class="text-center">
			<?php
				echo '<img src="' . $logo2['avatar'] . '"  class="rounded-circle" height="70px">';
				echo '<h4 class="">' . $logo2['login'] . '</h4>';
			?>
				<a href="http://aaaapple/mysite/auto.php" style="font-size:20px">Выйти</a>
				</div>
			</div>
	</div>
	<div class="col-8 mx-auto bg-light pt-3">
	<?php 
		for($i=0;$i<$query->num_rows; $i++){
		$logo = $query->fetch_assoc();
		echo '<h2>' . $logo['title'] . '</h2>';
		echo '<p>' . $logo['text'] . '</p>';
		echo '<img src="' . $logo['img'] . '" style="height:170px; display:block; margin-bottom:100px">';
		}
		?>
	</div>
	<div class="footer pt-4 pl-4">
		<h2>©Скрябин Александр 2019</h2>
	</div>
</body>
</html>