<?php
class Model_Reader extends Model{

    public function __construct()
    {
        parent::__construct();
    }

    function subscription(){
        $idreader = $_COOKIE["idreader"];
        $res = $this->database->prepare("SELECT * FROM subscription_view WHERE IDreader=$idreader ORDER BY Название desc");
        $res->execute();
        return $res;
    }

    function show_debts(){
        $idreader = $_COOKIE["idreader"];
        $res = $this->database->prepare("SELECT * FROM subscription_view WHERE IDreader=$idreader AND Дата_возврата IS NULL ORDER BY Название desc");
        $res->execute();
        return $res;
    }
}