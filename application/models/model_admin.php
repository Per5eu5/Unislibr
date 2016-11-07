<?php
class Model_Admin extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function readers(){
        $res = $this->database->prepare("SELECT * FROM reader");
        $res->execute();
        return $res;
    }

    function reboot_pass(){
        $pass1 = md5(123);
        $pass2 = base64_encode($pass1);
        $idreader=$_GET['id'];
        $res = $this->database->prepare("UPDATE reader SET Password='$pass2' WHERE IDreader=$idreader");
        $res->execute();
    }
}