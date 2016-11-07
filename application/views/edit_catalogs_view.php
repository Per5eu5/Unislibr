<title>Редактирование справочников</title>
<h2 align="center">Редактирование групп</h2>
<h3>Изменить название группы</h3>
<form action='edit_catalogs/edit_group' method="post">
    Старое название группы <input class="input_group" name="old_name_group">
    <p><span style="padding-right:5px;">Новое название группы</span> <input class="input_group" name="new_name_group">
    <input class="button" type="submit" value="Изменить">
</form>
<br>
<?php
print('<table><tr><th>Группа</th><th>Действие</th></tr>');

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td align="center">'. $row['Groups'] .'</td><td align="center"><a class="button" href="/edit_catalogs/delete_group/?id='.$row['IDgroups'].'">Удалить</a></td></tr>');
    print('</td></tr>');
}
print('</table>');
?>

<br>
<br>
<h2 align="center">Редактирование институтов</h2>
<h3>Изменить название института</h3>
<form action='edit_catalogs/edit_institute' method="post">
    Старое название института <input class="input_group" name="old_name_inst">
    <p><span style="padding-right:5px;">Новое название института</span> <input class="input_group" name="new_name_inst">
    <input class="button" type="submit" value="Изменить">
</form>
<br>
<h3>Добавить институт</h3>
<form action='edit_catalogs/add_institute' method="post">
    Название института <input class="input_group" name="add_name_inst">
    <input class="button" type="submit" value="Добавить">
</form>
<br>
<?php
print('<table><tr><th>Институт</th><th>Действие</th></tr>');

while($row2 = $data2->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td align="center">'. $row2['Institute'] .'</td><td align="center"><a class="button" href="/edit_catalogs/delete_institute/?id='.$row2['IDinstitute'].'">Удалить</a></td></tr>');
    print('</td></tr>');
}
print('</table>');
?>


