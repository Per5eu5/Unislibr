<title>Поиск печатного издания</title>
<h2>Поиск печатного издания</h2>

<form action="/search_book" method="post">
    Сортировка:
    <select name="sort">
        <option value="0">По возрастанию</option>
        <option value="1">По убыванию</option>
    </select>
    <input class="button" type="submit" value="Сортировать">
</form>
<br>
<h3>Поиск</h3>
<form action="/search_book/search" method="post">
    <span style="padding-right:11px;">Наименование</span> <input class="input" name="name">
    <p><span style="padding-right:70px;">Автор</span> <input class="input" name="author">
    <p>Тип публикации <input class="input" name="type">
    <input class=button type=submit value="Искать">
</form>
<form action="/search_book">
    <input class=button type=submit value="Сбросить результат">
</form>
<br>
<form action="/search_book/sort_books" method="post">
    Количество отображаемых записей:
    <select name="quantity">
        <option>Выберите количество отображаемых записей</option>
        <option value="1">Стандартно - 1 запись</option>
        <option value="50">50 записей</option>
        <option value="100">100 записей</option>
        <option value="200">200 записей</option>
    </select>
    <input class="button" type="submit" value="Отобразить">
</form>
Сейчас количество отображаемых записей

<?php
if($_POST['quantity']){
    $quantity = $_POST['quantity'];
    print(" равно $quantity");
}
elseif($_GET['limit2']){
    $quantity = $_GET['limit2'];
    print(" равно $quantity");
}
else{
    print("стандартно: 1");
}
?>
<br>
<br>

<?php
print('<table><tr><th>Название</th><th>Авторы</th><th>Жанры</th><th>Тип публикации</th><th>Издательский дом</th><th>Год</th></tr>');

while($row = $data->fetch(PDO::FETCH_ASSOC)) {
    print('<tr><td>'. $row['Название'] .'</td><td>'. $row['Авторы'] .'</td><td>'. $row['Жанры'] .'</td>
    <td>'. $row['Тип_публикации'].'</td><td>'. $row['Издательский_дом'] .'</td><td>'. $row['Год'] .'</td></tr>');
}
print('</table>');

//номера страниц
print('<table class="t"><tr><td align="center">');
for($i=1; $i<$data2+1; $i++){
    $limit1 = $i*$data3-$data3;
    print('<a href = "/search_book/sort_books/?limit1='.$limit1.'&&limit2='.$data3.'&&page='.$i.'">'.$i.'</a>&nbsp');
}
print('</td></tr></table >');

if($_GET['page']){
    print('<p align="center">Страница '.$_GET['page']);
}
else{
    print('<p align="center">Страница 1');
}
?>