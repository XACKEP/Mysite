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
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/admin.php?id=' . $_GET['id'] . '">ADMIN</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/admin.php?id=' . $_GET['id'] . '">ADMIN</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/admin.php?id=' . $_GET['id'] . '">ADMIN</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/admin.php?id=' . $_GET['id'] . '">ADMIN</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/admin.php?id=' . $_GET['id'] . '">ADMIN</a>';
				?>
			</div>
			<div class="theme col-2 text-center">
				<?php
				echo '<a style="text-decoration:none;" href="http://aaaapple/mysite/admin.php?id=' . $_GET['id'] . '">ADMIN</a>';
				?>
			</div>

				<?php 
				$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
				$query = mysqli_query($connect, "SELECT * FROM news ORDER BY id DESC");
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
		<form action="insert.php" method="POST" enctype="multipart/form-data">
		<h2>Заголовок</h2>
		<input type="text" name="title">
		<h2>Текст</h2>
		<input type="text" name="text">
		<h2>Изображения</h2>
		<input type="file" name="img">
		<h2>Тема</h2>
		<input type="text" name="type">
		<button>Создать новость</button>
	</form>
	<?php 
		$connect = mysqli_connect('127.0.0.1', 'root', '', 'main_sasha');
		$query = mysqli_query($connect, "SELECT * FROM news ORDER BY id DESC");
		for($i=0;$i<$query->num_rows; $i++){
		$logo = $query->fetch_assoc();
		echo '<h2>' . $logo['title'] . '</h2>';
		echo '<p>' . $logo['text'] . '</p>';
		echo '<img src="' . $logo['img'] . '" style="height:150px; display:block">';
		?>
	<form action="delete.php" method="POST">
			<?php echo '<input type="" name="id" value="' . $logo['id'] . '">' ?>
			<button>Удалить новость</button>
	</form>
	

	<form action="update.php" method="POST" enctype="multipart/form-data">
			<?php 
			echo '<input type="file" name="img" value="' . $logo['img'] . '">';
			echo '<input type="" name="title" value="' . $logo['title'] . '">';
			echo '<input type="" name="text" value="' . $logo['text'] . '">';
			echo '<input type="" name="type" value="' . $logo['type'] . '">';
			echo '<input type="hidden" name="id" value="' . $logo['id'] . '">'
			 ?>
			<button>Изменить новость</button>
	</form>
	<?php } ?>
	</div>
</body>
</html>