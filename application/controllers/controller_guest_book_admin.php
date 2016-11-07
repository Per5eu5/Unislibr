<?php
class Controller_Guest_Book_Admin extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_Guest_Book_Admin();
    }

    function action_index()
    {
        $data = $this->model->index();
        $this->view->generate('guest_book_admin_view.php', 'template_view.php', $data);
    }

    function action_delete(){
        $this->model->delete();
    }

    function action_show(){
        $this->model->show();
    }

    function action_hide(){
        $this->model->hide();
    }

}