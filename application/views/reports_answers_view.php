<title>Новые ответы</title>
<h2 align="center">Новые ответы</h2>

<?php
print('<table><tr><th>Логин</th><th>Ответ</th></tr>');
$count = 0;
while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    $count++;
    print('<tr><td>'. $row['login'] .'</td><td>'. $row['Answer'] .'</td></td></tr>');
}
print('</table>');
print('<h3>Дано '.$count.' ответов</h3>');
?>

<p><a href="/graph_librgrades" class="button">Назад</a></p>