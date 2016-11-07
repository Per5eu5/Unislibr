<?php

class Model_Guest_Book_Admin extends Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        $res = $this->database->prepare("SELECT * FROM guest_book ORDER BY Date desc");
        $res->execute();
        //$res = $res->fetchAll();
        return $res;
    }

    function delete(){
        $id = $_GET['id'];
        $res = $this->database->prepare("DELETE FROM guest_book WHERE id='$id'");
        $res->execute();
        header('Location:/guest_book_admin');
    }

    function show(){
        $id = $_GET['id'];
        $res = $this->database->prepare("UPDATE guest_book SET public='1' WHERE id='$id'");
        $res->execute();
        header('Location:/guest_book_admin');
    }

    function hide(){
        $id = $_GET['id'];
        $res = $this->database->prepare("UPDATE guest_book SET public='0' WHERE id='$id'");
        $res->execute();
        header('Location:/guest_book_admin');
    }
}