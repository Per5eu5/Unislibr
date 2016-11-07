<?php
class Model_Login extends Model
{
    public function __construct() {
        parent::__construct();
    }

    public function run() {
        if($_POST["librarian"] == 1) {
            $sth = $this->database->prepare("CALL authorization_librarian(:login,:password)");
            $sth->execute(array(
                ':login' => $_POST['login'],
                ':password' => $_POST['password']
            ));
        }
        else {
            $sth = $this->database->prepare("CALL authorization_reader(:login,:password)");
            $sth->execute(array(
                ':login' => $_POST['login'],
                ':password' => $_POST['password']
            ));

        }

        $data = $sth->fetch(PDO::FETCH_ASSOC);//$sth->fetchAll();
        if($data!= false)
        {
        //$count = count($data);
        //if($count > 1) {
            Session::init();
            Session::set('loggedIn', true);
            if($_POST["librarian"] == 1) {
                header('Location:/admin');
                setcookie('usertype',1,0,'/');
                setcookie('idlibr',$data['id'],0,'/');
                //$GLOBALS["usertype"] = 1;
            }
            else{
                header('Location:/reader');
                setcookie('usertype',2,0,'/');
                setcookie('idreader',$data['IDreader'],0,'/');
                //$GLOBALS["usertype"] = 2;
            }
        } else {
            header('Location:/login');
        }
    }
}