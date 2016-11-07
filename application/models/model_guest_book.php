<?php
header('Content-Type: text/html; charset=utf-8');
class Model_Guest_Book extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        $res = $this->database->prepare("SELECT * FROM guest_book WHERE Public=1 ORDER BY Date desc");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    public function new_message(){
        $name = $_POST["name"];
        $email = $_POST["email"];
        $msg = $_POST["msg"];
        $date = date('Y-m-d H:i:s');

        $sth = $this->database->prepare("INSERT into guest_book (Date, Name, Email, Message) VALUES('$date', '$name', '$email', '$msg')");
        $sth->execute();
        echo'<script type="text/javascript">alert("Cообщение будет добавлено после модерации."); location = "/guest_book"</script>';
    }
}