<?php
class Model_Search_Book extends Model
{
    var $limit1 = 0; // первое значение для LIMIT
    var $limit2 = 1; //второе значение

    public function __construct() {
        parent::__construct();
    }

    function count_books(){
        $res = $this->database->prepare("SELECT count_copyes()");
        $res->execute();
        $data = $res->fetch(PDO::FETCH_ASSOC);
        if($_POST['quantity']){
            $limit2 = $_POST['quantity'];
        }
        elseif($_GET['limit2']){
            $limit2 = $_GET['limit2'];
        }
        else{
            $limit2 = $this->limit2;
        }
        $all_pages = $data['count_copyes()']/$limit2; //общее количество страниц
        $all_pages = ceil($all_pages); //округляем до большего целого числа
        return $all_pages;
    }

    function limit2(){
        if($_POST['quantity']){
            $limit2 = $_POST['quantity'];
        }
        elseif($_GET['limit2']){
            $limit2 = $_GET['limit2'];
        }
        else{
            $limit2 = $this->limit2;
        }
        return $limit2;
    }

    function show_books(){
        $res = $this->database->prepare("SELECT * FROM copy_view WHERE Количество IS NOT NULL ORDER BY Название ASC ");
        $res->execute();
        return $res;
    }

    function sort_books(){
        if($_POST['quantity']){
            $limit1 = 0;
            $limit2 = $_POST['quantity'];
        }
        elseif($_GET['limit2']){
            $limit1 = $_GET['limit1'];
            $limit2 = $_GET['limit2'];
        }
        else{
           $limit1 = $this->limit1;
           $limit2 = $this->limit2;
        }

        $res = $this->database->prepare("SELECT * FROM copy_view WHERE Количество IS NOT NULL ORDER BY Название DESC LIMIT $limit1, $limit2");
        $res->execute();
        return $res;
    }

    function search(){
        $name=$_POST['name'];
        $author=$_POST['author'];
        $type=$_POST['type'];
        $res = $this->database->prepare("SELECT * FROM copy_view WHERE Количество IS NOT NULL AND Название LIKE '%$name%'
                                          AND Авторы LIKE '%$author%' AND Тип_публикации LIKE '%$type%'");
        $res->execute();
        return $res;
    }
}