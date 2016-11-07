<title>Гостевая книга</title>
<h1 align="center">Гостевая книга</h1>

<?php
    if ($_COOKIE["usertype"] == 1)
        print('<a class="button" href="/guest_book_admin">Администрирование</a>');
?>

<div id="guest_book">
    <form action='guest_book/new_message' method=post>
        <input class=input name=name placeholder="Имя" required>
        <p><input class=input name=email placeholder="e-mail" required type="email">
        <p><textarea name="msg" required></textarea>
        <p><input class=button type=submit value="Отправить">
    </form>

<br>

<?php
    $i = 0;

    while($row = $data->fetch(PDO::FETCH_ASSOC)) {
        if($i==0)
            print('<h2>Записи</h2>');

        echo '<p>Пользователь: ' . $row['Name'] . '<span id="date"> (' . $row['Date'] . ')</span></p><p>Запись: ' . $row['Message'] . '</p><hr>';
        $i++;
    }
?>
</div>
