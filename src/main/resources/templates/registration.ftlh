<!DOCTYPE html>
<html>
<head>
    <title>Купи-&-Продай</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
<div class="container mt-5">
<h1>Купи-&-Продай</h1><hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    <div class="form-group">
        <label for="formGroupExampleInput">Имя пользователя:</label>
        <input type="text" class="form-control" name="name" placeholder="Имя пользователя:">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2">Эл. почта:</label>
        <input type="email" class="form-control" name="email" placeholder="Эл. почта:">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2">Номер телефона:</label>
        <input type="text" class="form-control" name="phoneNumber" placeholder="Номер телефона:">
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2">Пароль:</label>
        <input type="password" class="form-control" name="password" placeholder="Пароль:">
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Зарегистрироваться"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>