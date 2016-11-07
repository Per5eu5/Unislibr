<title>Изменение данных читателей</title>
<h2 align="center">Изменение данных читателей</h2>

<?php
print('<table><tr><th>ФИО</th><th>Пароль</th><th>Действие</th></tr>');

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td>'. $row['FIO'] .'</td><td>'. $row['Password'] .'</td><td><a class="c" href="/admin/reboot_pass/?id='.$row['IDreader'].'">Сбросить пароль</a>');
    print('</td></tr>');
}
print('</table>');