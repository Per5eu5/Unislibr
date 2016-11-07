<?php
class Controller_FAQ extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_FAQ();
    }

    function action_index()
    {
        $data = $this->model->index();
        $data2 = $this->model->my_questions();
        $this->view->generate('faq_view.php', 'template_view.php', $data, $data2);
    }

    function action_new_question(){
        $this->model->new_qestion();
        header('Location:/faq');
    }

    function action_give_grade(){
        $this->model->give_grade();
        header('Location:/faq');
    }
}