<title>Новые вопросы</title>
<h2 align="center">Новые вопросы</h2>

<?php
print('<table><tr><th>ФИО</th><th>Вопрос</th></tr>');
$count = 0;
while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    $count++;
    print('<tr><td>'. $row['FIO'] .'</td><td>'. $row['Question'] .'</td></td></tr>');
}
print('</table>');
print('<h3>Задано '.$count.' вопросов</h3>');
?>

<p><a href="/graph_librgrades" class="button">Назад</a></p>
