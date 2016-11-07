<title>FAQ</title>
<h1 align="center">FAQ</h1>

<?php
if ($_COOKIE["usertype"] == 1)
    print('<a class="button" href="/faq_admin">Администрирование</a>');
?>

<div id="guest_book">
    <form action='/faq/new_question' method=post>
        <input class=input name=name placeholder="Имя" required>
        <p>Напишите ваш вопрос:
        <p><textarea name="question" required></textarea>
        <p><input class=button type=submit value="Отправить">
    </form>

    <br>

<?php
$i = 0;

while($row2 = $data2->fetch(PDO::FETCH_ASSOC)) {
    if($i==0)
        print('<h2>Ваши вопросы</h2>');

    echo '<p>Вопрос: ' . $row2['Question'] . '</p>';
    echo '<p>Ответ: '.$row2['Answer'].'';
    $i++;
    $idfaq=$row2['IDfaq'];

    if($row2['Answer']==""){
        print('<hr>');
    }
    else {
        print('<p>Оценка:'.$row2['Grade'].'');
        print('<form action="/faq/give_grade/?idfaq='.$idfaq.'" method="post">
        <input type="radio" name="grade" value="1">1
        <input type="radio" name="grade" value="2">2
        <input type="radio" name="grade" value="3">3
        <input type="radio" name="grade" value="4">4
        <input type="radio" name="grade" value="5" checked="checked">5');

        if ($row2['Grade'] == "")
            print('<p><input class="button" type="submit" value="Оценить"></form>');
        else
            print('<p><input class="button" type="submit" value="Дать другую оценку"></form>');

        print('<hr>');
    }
}
?>
<br>
<br>
<?php
$i = 0;

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    if($i==0)
    print('<h2>Вопросы</h2>');

    echo '<p>Пользователь: ' . $row['Name'] . '<span id="date"> (' . $row['Date'] . ')</span></p><p>Вопрос: ' . $row['Question'] . '</p>';
    echo '<p>Ответ: '.$row['Answer'].'';
    print('<p>Оценка:'.$row['Grade'].'<hr>');
    $i++;
}
?>
</div>