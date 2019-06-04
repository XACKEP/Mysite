<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body class="bg-light">
	<style type="text/css">
	.form{
		background:white;
		padding-left:50px;
		padding-right:50px;
		padding-top: 50px;
	}
	.btn{
		color: white;
		padding-left: 42px;
		padding-right: 42px;
		width: 100%;
	}
	.title{
		font-size: 15px
	}
</style>
<div class="container d-flex" style="padding-left:400px; box-sizing:border-box; padding-top:100px;">
<form action="registr.php" method="POST" class="form">
	<div class="text-center">
		<img src="images/avatar.png" height="90px" style=" margin-bottom:20px" class="mx-auto rounded-circle">
	</div>
	<div>
		<input type="" name="email" placeholder="email" class="form-control">
	</div>
	<div>
		<input type="" name="login" placeholder="login" class="form-control">
	</div>
	<div>
		<input type="password" name="pass" placeholder="password" class="form-control">
	</div>
		<input type="hidden" name="img" value="images/avatar.png">
	<div>
		<button class="btn btn-primary">Регистрация</button>
	</div>
	<div>
		<p class="d-flex"><h3 class="title">Есть аккаунт? </h3><a href="auto.php">Вход</a></p>
	</div>
	<div>
		<p class="d-flex"><h3 class="title">Войти как Гость </h3><a href="main.php">Вход(гость)</a></p>
	</div>
</form>
</div>
</body>
</html>