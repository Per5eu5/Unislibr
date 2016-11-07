<?php

class Model_Graph_Librgrades extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    function index(){
        $res = $this->database->prepare("SELECT Date, Grade, login, SUM(Grade)/COUNT(IDlibrarian) AS Average FROM faq
                                         JOIN librarians WHERE faq.IDlibrarian=librarians.id GROUP BY faq.IDlibrarian;");
        $res->execute();
        return $res;
    }


}
