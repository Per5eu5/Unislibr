<title>Модерация гостевой книги</title>
<h2 align="center">Записи гостевой книги</h2>

<?php
print('<table><tr><th>Дата</th><th>Имя</th><th>Запись</th><th>Свойства</th></tr>');

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td>'. $row['Date'] .'</td><td>'. $row['Name'] .'</td><td>'. $row['Message'] .'</td><td><a class="button" href="/guest_book_admin/delete/?id='.$row['ID'].'">Удалить</a>');

            if($row['Public']==0)
                print(' <a class="button" href="/guest_book_admin/show/?id='.$row['ID'].'">Опубликовать</a>');

            if($row['Public']==1)
                print(' <a class="button" href="/guest_book_admin/hide/?id='.$row['ID'].'">Скрыть</a>');

            print('</td></tr>');
    }
print('</table>');