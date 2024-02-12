<!DOCTYPE html>
<html>
<head>
    <title>Купи-&-Продай</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
    <div class="container" style="width: 380px;">
        <h1>Купи-&-Продай</h1>
    </div>
    <hr>

    <div class="container mt-5">
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Выйти">
</form>
    <#if user.isAdmin()>
        <a href="/admin"> Пнель администратора</a>
    </#if>
    <#else>
        <a href="/login">Войти</a><hr>
</#if>
<form action="/" method="get">
    Поиск по названию товара: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><p> ${product.title} </p> ${product.price} руб. | <a href="/product/${product.id}"> Подробнее... </a></p>
    </div>
<#else >
<h3>Товаров нет</h3>
</#list>
<#if user.email??>
<hr>
<h3>Создать новый товар</h3>
<form action ="/product/create" method="post" enctype="multipart/form-data">
    Название товара: <input type="text" name="title"/> <br><br>
    Описане товара: <input type="text" name="description"/> <br><br>
    Цена: <input type="number" name="price"/> <br><br>
    Город: <input type="text" name="city"/> <br><br>
    1 Фото: <input type="file" name="file1"/> <br><br>
    2 Фото: <input type="file" name="file2"/> <br><br>
    3 Фото: <input type="file" name="file3"/> <br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" name="Добавить товар"/> <br><br>

</form>
</#if>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>