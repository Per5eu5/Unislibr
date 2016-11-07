<title>Читатель</title>
<h2>Абонемент</h2>

<?php
print('<table><tr><th>ФИО</th><th>Название</th><th>Дата выдачи</th><th>Ожидаемая дата возврата</th><th>Дата возврата</th></tr>');

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td>'. $row['ФИО'] .'</td><td>'. $row['Название'] .'</td><td>'. $row['Дата_выдачи'] .'</td>
    <td>'. $row['Ожидаемая_дата_возврата'] .'</td><td>'. $row['Дата_возврата'].'</td></tr>');
}
print('</table>');
?>
<p>
<form action="reader/show_debts/">
    <input class=button type=submit value="Показать взятые книги">
</form>
<form action="/reader">
    <input class=button type=submit value="Вернуться к абонементу">
</form>
