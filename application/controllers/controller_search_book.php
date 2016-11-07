<?php
class Controller_Search_Book extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_Search_Book();
    }

    function action_index()
    {
        if($_POST['sort']==1) { //если пользователь изменил тип сортировки
            $data = $this->model->show_books();
            $this->view->generate('search_book_view.php', 'template_view.php', $data);
        }
        else{
            $all_pages = $this->model->count_books();
            $limit2 = $this->model->limit2();
            $data = $this->model->sort_books();
            $this->view->generate('search_book_view.php', 'template_view.php', $data, $all_pages, $limit2);
        }
    }

    function action_sort_books(){
        $all_pages = $this->model->count_books();
        $limit2 = $this->model->limit2();
        $data = $this->model->sort_books();
        $this->view->generate('search_book_view.php', 'template_view.php', $data, $all_pages, $limit2);
    }

    function action_search(){
        $data = $this->model->search();
        $this->view->generate('search_book_view.php', 'template_view.php', $data);
    }
}