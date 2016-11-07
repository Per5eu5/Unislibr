<title>Новые читатели</title>
<h2 align="center">Новые читатели</h2>

<?php
print('<table><tr><th>Группа</th><th>ФИО</th></tr>');
$count = 0;
while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    $count++;
    print('<tr><td>'. $row['Groups'] .'</td><td>'. $row['FIO'] .'</td></td></tr>');
}
print('</table>');
print('<h3>Зарегестрировалось '.$count.' человек</h3>');
?>

<p><a href="/graph_librgrades" class="button">Назад</a></p>

