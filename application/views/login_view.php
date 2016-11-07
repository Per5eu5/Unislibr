<title>Авторизация</title>
<h1>Вход в личный кабинет</h1>
<div id="authorization">
    <form action='login/run' method="post">
        <input type="radio" name="librarian" value="0" checked="checked" >Читатель
        <input type="radio" name="librarian" value="1">Библиотекарь
        <input class="input" name="login" placeholder="Логин">
        <p><input class="input" type="password" name="password" placeholder="Пароль">
        <p><input class="button" type="submit" value="Вход">
    </form>
</div>
