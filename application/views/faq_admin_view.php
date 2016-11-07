<title>Модерация FAQ</title>
<h2 align="center">Вопросы FAQ</h2>

<?php
print('<table><tr><th>Дата</th><th>Имя</th><th>Вопрос</th><th>Ответ</th><th>Свойства</th></tr>');

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td>'. $row['Date'] .'</td><td>'. $row['Name'] .'</td><td>'. $row['Question'] .'</td>
    <td>'. $row['Answer'] .'</td><td><a class="c" href="/faq_admin/delete/?id='.$row['IDfaq'].'">Удалить</a>');

    if($row['Answer']=="")
        print(' <a class="c" href="/faq_admin/answer/?id='.$row['IDfaq'].'">Ответить</a>');
    else
        print(' <a class="c" href="/faq_admin/answer/?id='.$row['IDfaq'].'">Изменить ответ</a>');

    print('</td></tr>');
}
print('</table>');