<?php

class Model_FAQ_Admin extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        $res = $this->database->prepare("SELECT * FROM faq ORDER BY Date DESC");
        $res->execute();
        return $res;
    }

    function get_question(){
        $id=$_GET['id'];
        $res = $this->database->prepare("SELECT * FROM faq WHERE IDfaq=$id");
        $res->execute();
        return $res;
    }

    function give_answer(){
            $idfaq=$_GET['id'];
            $answer=$_POST['answer'];
            $idlibr = $_COOKIE['idlibr'];
            $res = $this->database->prepare("CALL give_answer('$answer', $idlibr, $idfaq)");
            $res->execute();
    }

    function delete(){
        $id = $_GET['id'];
        $res = $this->database->prepare("DELETE FROM faq WHERE IDfaq=$id");
        $res->execute();
    }
}