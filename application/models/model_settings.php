<?php
header('Content-Type: text/html; charset=utf-8');
class Model_Settings extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function change_password(){
        if($_COOKIE['usertype']==1){
            $pass=$_POST['pass'];
            $pass1 = md5($pass);
            $pass2 = base64_encode($pass1);
            $idlibr=$_COOKIE['idlibr'];

            $sth = $this->database->prepare("UPDATE librarians SET password='$pass2' WHERE id=$idlibr");
            $sth->execute();
            echo'<script type="text/javascript">alert("Пароль изменен."); location = "/settings"</script>';
        }
        else{
            $pass = $_POST['pass'];
            $pass1 = md5($pass);
            $pass2 = base64_encode($pass1);
            $idreader=$_COOKIE['idreader'];

            $sth = $this->database->prepare("UPDATE reader SET Password='$pass2' WHERE IDreader=$idreader");
            $sth->execute();
            echo'<script type="text/javascript">alert("Пароль изменен."); location = "/settings"</script>';
        }
        }
}