<title>Ответ на вопрос</title>
<h2>Ответ на вопрос</h2>

<?php
$id=$_GET['id'];
while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    echo '<p>Пользователь: ' . $row['Name'] . '<span id="date"> (' . $row['Date'] . ')</span></p><p>Вопрос: ' . $row['Question'] . '</p>';
}

print('
<p>Ответ:</p>
<form action="/faq_admin/give_answer/?id='.$id.'" method=post>
    <p><textarea name="answer" required></textarea>
    <p><input class=button type=submit value="Отправить">
</form>');
?>