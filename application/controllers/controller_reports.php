<?php
class Controller_Reports extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model = new Model_Reports();
    }

    function action_new_readers_week(){
        $data = $this->model->new_readers_week();
        $this->view->generate('reports_readers_view.php', 'template_view.php', $data);
    }

    function action_new_readers_month(){
        $data = $this->model->new_readers_month();
        $this->view->generate('reports_readers_view.php', 'template_view.php', $data);
    }

    function action_questions_week(){
        $data = $this->model->questions_week();
        $this->view->generate('reports_questions_view.php', 'template_view.php', $data);
    }

    function action_questions_month(){
        $data = $this->model->questions_month();
        $this->view->generate('reports_questions_view.php', 'template_view.php', $data);
    }

    function action_answers_week(){
        $data = $this->model->answers_week();
        $this->view->generate('reports_answers_view.php', 'template_view.php', $data);
    }

    function action_answers_month(){
        $data = $this->model->answers_month();
        $this->view->generate('reports_answers_view.php', 'template_view.php', $data);
    }
}