<?php
header('Content-Type: text/html; charset=utf-8');
class Model_Registration_Reader extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function reg(){
       // if($_FILES["image"]["size"] > 1024*3*1024)
       // {
      //      echo'<script type="text/javascript">alert("Размер файла превышает 3 мегабайта"); location = "/registration"</script>';
      //  }
      //  else {
            $uploaddir = 'photo/';
            $uploadfile = $uploaddir . basename($_FILES['image']['name']);

            if (is_uploaded_file($_FILES["image"]["tmp_name"])) {
                if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
                    //echo "Фотография была успешно загружена.\n";
                    //header('Location:/registration');
                } else {
                    echo "Ошибка. Фотография не была успешно загружена.\n";
                }
            }
            else{
                $_FILES['image']['name'] = 'no-photo.jpg';
                //echo "Ошибка. Фотография не была успешно загружена.\n";
            }
      //  }

        $sth = $this->database->prepare("CALL registration(:fio,:date,:number,:group,:photo)");
        if ($sth->execute(array(
            ':fio' => $_POST["fio"],
            ':date' => $_POST["date"],
            ':number' => $_POST["number"],
            ':group' => $_POST["group"],
            ':photo' => $_FILES['image']['name']
        )))
        {
            print('<script type="text/javascript">alert("Пользователь добавлен."); location = "/registration_reader"</script>');
        }
        else{
            print('<script type="text/javascript">alert("Ошибка."); location = "/registration_reader"</script>');
        }
    }

    function groups(){
        $res = $this->database->prepare("SELECT * FROM groups ORDER BY Groups desc");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }
}