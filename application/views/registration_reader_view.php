<title>Регистрация читателя</title>
<h2 align="center">Регистрация читателя</h2>

<form id="form" action="registration_reader/reg" method="post" enctype="multipart/form-data">

    <span style="padding-right:160px;">ФИО:</span> <input class=input name=fio required>
    <p><span style="padding-right:93px;">Дата рождения:</span> <input class="input" type="date" name="date" required>
    <p><span style="padding-right:11px;">Номер студенческой карты:</span> <input class=input name=number  required>

    <p><span style="padding-right:148px;">Группа:</span>
    <select class="input" name='group'>
    <?php
        while($row = $data->fetch(PDO::FETCH_ASSOC)) {
            print("<option value=' ".$row['IDgroups']." '>".$row['Groups']."</option>");
        }
        ?>
    </select>

    <p><span style="padding-right:145px;">Пароль:</span> стандартный (123)

    <p>Фотография:
    <div><img alt="" id="image_preview" src="/photo/no-photo.jpg"></div>
    <input class=button type="file" id="image" name="image">

   <!-- <input class=button type="reset" value="Отменить"> -->

    <p><span style="padding-right:500px;"></span><input class=button type="submit" value="Зарегестрировать">
</form>

<script src="/js/image.js"></script> <!--включать обязательно в конце файла-->

