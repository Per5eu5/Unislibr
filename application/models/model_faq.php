<?php
class Model_FAQ extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $res = $this->database->prepare("SELECT * FROM faq ORDER BY Date DESC");
        $res->execute();
        return $res;
    }

    function new_qestion(){
        $name=$_POST['name'];
        $idreader=$_COOKIE['idreader'];
        $question=$_POST['question'];
        $sth = $this->database->prepare("CALL add_question('$name', $idreader, '$question')");
        $sth->execute();
    }

    function my_questions(){
        $idreader = $_COOKIE['idreader'];
        $res2 = $this->database->prepare("SELECT * FROM faq WHERE IDreader=$idreader ORDER BY Date DESC");
        $res2->execute();
        return $res2;
    }

    function give_grade(){
        $idfaq=$_GET['idfaq'];
        $grade=$_POST['grade'];
        $res2 = $this->database->prepare("UPDATE faq SET Grade=$grade WHERE IDfaq=$idfaq");
        $res2->execute();
    }
}