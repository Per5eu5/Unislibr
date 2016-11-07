<?php
header('Content-Type: text/html; charset=utf-8');
class Model_Registration_Librarian extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function reg()
    {
        $sth = $this->database->prepare("CALL registration_librarian(:login,:password)");
        if ($sth->execute(array(
            ':login' => $_POST["login"],
            ':password' => $_POST["password"]
        ))
        ) {
            print('<script type="text/javascript">alert("Библиотекарь добавлен."); location = "/registration_librarian"</script>');
        } else {
            print('<script type="text/javascript">alert("Ошибка."); location = "/registration_librarian"</script>');
        }
    }
}
