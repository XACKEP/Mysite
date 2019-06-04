<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<div style="padding-left: 460px; padding-top: 100px;" class="container">
	<form action="login.php" method="POST">
	<div>
		<?php echo '<input type="" name="login" value="' . $_POST['login'] . '" placeholder="login" style="width:180px">'?>
	</div>
	<div>
		<?php echo '<input type="password" name="pass" value="' . $_POST['pass'] . '" placeholder="password" style="width:180px">'?>
		<div>
		<?php echo $_GET['text'];?>
	</div>
	</div>
		<div style="width:180px">
			<button class="btn-sm btn-block btn-primary">Войти</button>
		</div>
	</form>
	<a href="http://aaaapple/mysite/index.php">Ещё нету аккаунта?</a>
</div>