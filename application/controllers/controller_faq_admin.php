<?php
class Controller_FAQ_Admin extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_FAQ_Admin();
    }

    function action_index()
    {
        $data = $this->model->index();
        $this->view->generate('faq_admin_view.php', 'template_view.php', $data);
    }

    function action_answer(){
        $data = $this->model->get_question();
        $this->view->generate('faq_admin_answer_view.php', 'template_view.php',$data);
    }

    function action_give_answer(){
        $this->model->give_answer();
        header('Location:/faq_admin');
    }

    function action_delete(){
        $this->model->delete();
        header('Location:/faq_admin');
    }

    function action_show(){
        $this->model->show();
    }

    function action_hide(){
        $this->model->hide();
    }

}